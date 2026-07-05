// ============================================================
// axis_laser_track.v
// ------------------------------------------------------------
// Single self-contained AXI4-Stream IP for red-laser-dot tracking,
// built in the same style as axis_frame_diff. It folds the
// assignment's three separate HLS blocks (color-threshold +
// centroid-accumulator + OSD) into ONE streaming module, and
// renders the centroid coordinates ON the HDMI output instead of
// sending them over UART.
//
// Per frame it does:
//   1. RED THRESHOLD : pixel is "red" if R>TH_R && G<TH_G && B<TH_B.
//   2. CENTROID      : accumulate sum_x, sum_y, count of red pixels;
//                      at end-of-frame Cx=sum_x/count, Cy=sum_y/count.
//                      A box is also tracked (min/max x,y of red px).
//   3. VALIDITY      : detection valid only if count >= MIN_BLOB.
//   4. OSD           : on the NEXT frame, draw a green bounding box +
//                      green crosshair at the latched centroid, and a
//                      small on-screen readout "X nnn / Y nnn".
//
// One frame of latency between detection and overlay (centroid of
// frame N is drawn over frame N+1) -- standard for single-pass
// streaming, invisible at video rate.
//
// Division note: Cx=sum_x/count and Cy=sum_y/count are the only
// divides. They happen ONCE per frame (at end-of-frame), not per
// pixel, so a single pipelined divider is fine. Verilog `/` infers
// one; on a small part it costs a few hundred LUTs but only one
// instance. If even that is too much, the box-center
// ((x0+x1)>>1, (y0+y1)>>1) is a division-free centroid approximation
// -- set USE_BOX_CENTER=1 to use it instead and drop the dividers.
// ============================================================
module axis_laser_track #
(
    parameter DATA_WIDTH = 24,
    parameter KEEP_WIDTH = (DATA_WIDTH+7)/8,
    parameter IMG_WIDTH  = 640,
    parameter IMG_HEIGHT = 480,

    // Red-threshold defaults (assignment values). On a real build you
    // can make these runtime-tunable via an AXI-Lite wrapper; here
    // they are parameters so the core stays self-contained.
    parameter [7:0] TH_R = 8'd170,   // R must be ABOVE this
    parameter [7:0] TH_G = 8'd80,    // G must be BELOW this
    parameter [7:0] TH_B = 8'd80,    // B must be BELOW this

    // Minimum red-pixel count to declare a valid detection (noise gate).
    parameter MIN_BLOB = 20,

    // Anti-flicker hold: keep last good overlay for N frames after the
    // dot disappears, so brief dropouts don't blink the crosshair.
    parameter HOLD_FRAMES = 8,

    // 1 = use box-center as centroid (no dividers). 0 = true centroid
    // (sum/count, uses 2 dividers, 1 instance each, end-of-frame only).
    parameter USE_BOX_CENTER = 0,

    // Crosshair half-length and box/border thickness, in pixels.
    parameter CROSS_ARM = 10,
    parameter BORDER    = 2
)
(
    input  wire                     aclk,
    input  wire                     aresetn,

    // AXI4-Stream IN (packed RGB, same as your VDMA->pipeline feed)
    input  wire [DATA_WIDTH-1:0]    s_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s_axis_tkeep,
    input  wire                     s_axis_tvalid,
    output wire                     s_axis_tready,
    input  wire                     s_axis_tuser,   // SOF
    input  wire                     s_axis_tlast,   // EOL

    // AXI4-Stream OUT (original video + green OSD overlay)
    output reg  [DATA_WIDTH-1:0]    m_axis_tdata,
    output reg  [KEEP_WIDTH-1:0]    m_axis_tkeep,
    output reg                      m_axis_tvalid,
    input  wire                     m_axis_tready,
    output reg                      m_axis_tuser,
    output reg                      m_axis_tlast,

    // Sideband detection outputs (same cadence as the overlay update).
    // Handy if the PS ever wants to read them too -- not required for
    // the on-screen display.
    output reg  [11:0]              m_axis_cx,      // centroid X (pixels)
    output reg  [11:0]              m_axis_cy,      // centroid Y (pixels)
    output reg  [19:0]              m_axis_count,   // red pixels this frame
    output reg                      m_axis_valid    // 1 = locked
);

    // ==========================================================
    // HANDSHAKE
    // ==========================================================
    wire pipeline_ready = m_axis_tready || !m_axis_tvalid;
    assign s_axis_tready = pipeline_ready;
    wire accept = s_axis_tvalid && s_axis_tready;

    // ==========================================================
    // PIXEL POSITION (x,y)
    // ==========================================================
    reg [11:0] x, y;
    always @(posedge aclk) begin
        if (!aresetn) begin
            x <= 0; y <= 0;
        end else if (accept) begin
            if (s_axis_tuser)      begin x <= 0; y <= 0;       end
            else if (s_axis_tlast) begin x <= 0; y <= y + 1;   end
            else                         x <= x + 1;
        end
    end

    // ==========================================================
    // RED THRESHOLD  (R>TH_R && G<TH_G && B<TH_B)
    // ==========================================================
    wire [7:0] r = s_axis_tdata[23:16];
    wire [7:0] g = s_axis_tdata[15:8];
    wire [7:0] b = s_axis_tdata[7:0];
    wire is_red = accept && (r > TH_R) && (g < TH_G) && (b < TH_B);

    // ==========================================================
    // CENTROID + BOX ACCUMULATORS (this frame, "work" set)
    // ==========================================================
    reg [31:0] sum_x, sum_y;
    reg [19:0] count;
    reg [11:0] bx0, by0, bx1, by1;   // bounding box of red pixels

    // ==========================================================
    // LATCHED RESULT (drawn on the NEXT frame, "show" set) + hold
    // ==========================================================
    reg [11:0] cx_q, cy_q;           // centroid to draw
    reg [11:0] sx0_q, sy0_q, sx1_q, sy1_q;  // box to draw
    reg        show_valid;
    reg [7:0]  hold_age;

    // True centroid via division (end-of-frame only). Guard count==0.
    wire [11:0] cx_div = (count != 0) ? (sum_x / count) : 12'd0;
    wire [11:0] cy_div = (count != 0) ? (sum_y / count) : 12'd0;

    // Box-center alternative (no divider).
    wire [11:0] cx_box = (bx0 + bx1) >> 1;
    wire [11:0] cy_box = (by0 + by1) >> 1;

    wire [11:0] cx_new = (USE_BOX_CENTER != 0) ? cx_box : cx_div;
    wire [11:0] cy_new = (USE_BOX_CENTER != 0) ? cy_box : cy_div;
    wire        valid_new = (count >= MIN_BLOB);

    // ==========================================================
    // ACCUMULATE per pixel; FINALISE at end-of-frame.
    // End-of-frame = tlast on the last line. We detect "last line"
    // as the EOL whose next SOF is coming; simplest robust trigger is
    // the SOF of the NEXT frame (tuser), which is unambiguous.
    // We therefore finalise on tuser: latch the just-finished frame's
    // result, then reset accumulators for the new frame in the same
    // cycle.
    // ==========================================================
    always @(posedge aclk) begin
        if (!aresetn) begin
            sum_x <= 0; sum_y <= 0; count <= 0;
            bx0 <= {12{1'b1}}; by0 <= {12{1'b1}}; bx1 <= 0; by1 <= 0;
            cx_q <= 0; cy_q <= 0;
            sx0_q <= 0; sy0_q <= 0; sx1_q <= 0; sy1_q <= 0;
            show_valid <= 0; hold_age <= 0;
            m_axis_cx <= 0; m_axis_cy <= 0; m_axis_count <= 0; m_axis_valid <= 0;
        end else if (accept) begin

            // ---- finalise on SOF of next frame ----
            if (s_axis_tuser) begin
                // publish sideband
                m_axis_cx    <= cx_new;
                m_axis_cy    <= cy_new;
                m_axis_count <= count;
                m_axis_valid <= valid_new;

                if (valid_new) begin
                    // fresh detection -> latch overlay, reset hold
                    cx_q  <= cx_new;  cy_q  <= cy_new;
                    sx0_q <= bx0; sy0_q <= by0; sx1_q <= bx1; sy1_q <= by1;
                    show_valid <= 1'b1;
                    hold_age   <= HOLD_FRAMES[7:0];
                end else if (hold_age != 0) begin
                    hold_age   <= hold_age - 1'b1;   // keep last overlay
                end else begin
                    show_valid <= 1'b0;              // give up -> no overlay
                end

                // reset accumulators for the frame that is starting now.
                // include this first pixel if it is red.
                sum_x <= is_red ? x : 32'd0;
                sum_y <= is_red ? y : 32'd0;
                count <= is_red ? 20'd1 : 20'd0;
                bx0   <= is_red ? x : {12{1'b1}};
                by0   <= is_red ? y : {12{1'b1}};
                bx1   <= is_red ? x : 12'd0;
                by1   <= is_red ? y : 12'd0;
            end
            else if (is_red) begin
                sum_x <= sum_x + x;
                sum_y <= sum_y + y;
                count <= count + 1'b1;
                if (x < bx0) bx0 <= x;
                if (x > bx1) bx1 <= x;
                if (y < by0) by0 <= y;
                if (y > by1) by1 <= y;
            end
        end
    end

    // ==========================================================
    // OUTPUT PIPELINE (1 stage) -- carry pixel + position so the OSD
    // test lines up with the pixel it paints.
    // ==========================================================
    reg [DATA_WIDTH-1:0] data_s1;
    reg [KEEP_WIDTH-1:0] keep_s1;
    reg                  valid_s1, user_s1, last_s1;
    reg [11:0]           x_s1, y_s1;

    always @(posedge aclk) begin
        if (!aresetn) valid_s1 <= 1'b0;
        else if (pipeline_ready) begin
            valid_s1 <= accept;
            data_s1  <= s_axis_tdata;
            keep_s1  <= s_axis_tkeep;
            user_s1  <= s_axis_tuser;
            last_s1  <= s_axis_tlast;
            x_s1     <= x;
            y_s1     <= y;
        end
    end

    // ==========================================================
    // OSD GEOMETRY (uses the latched "show" set)
    // ==========================================================
    wire box_on = show_valid;

    // bounding box outline
    wire in_x = box_on && (x_s1 >= sx0_q) && (x_s1 <= sx1_q);
    wire in_y = box_on && (y_s1 >= sy0_q) && (y_s1 <= sy1_q);
    wire b_top    = in_x && (y_s1 >= sy0_q) && (y_s1 <  sy0_q + BORDER);
    wire b_bot    = in_x && (y_s1 <= sy1_q) && (y_s1 +  BORDER > sy1_q);
    wire b_left   = in_y && (x_s1 >= sx0_q) && (x_s1 <  sx0_q + BORDER);
    wire b_right  = in_y && (x_s1 <= sx1_q) && (x_s1 +  BORDER > sx1_q);
    wire on_box   = b_top || b_bot || b_left || b_right;

    // crosshair at (cx_q, cy_q): horizontal and vertical arms,
    // BORDER thick. Use +/- with underflow-safe compares.
    wire near_cy = box_on && (y_s1 + BORDER > cy_q) && (y_s1 < cy_q + BORDER);
    wire near_cx = box_on && (x_s1 + BORDER > cx_q) && (x_s1 < cx_q + BORDER);
    wire arm_h   = near_cy && (x_s1 + CROSS_ARM >= cx_q) && (x_s1 <= cx_q + CROSS_ARM);
    wire arm_v   = near_cx && (y_s1 + CROSS_ARM >= cy_q) && (y_s1 <= cy_q + CROSS_ARM);
    wire on_cross = arm_h || arm_v;

    // ==========================================================
    // ON-SCREEN COORDINATE READOUT (top-left), reused from the
    // frame_diff style: tiny 3x5 font, pow2 cell geometry (shifts/
    // masks only). Shows  X nnn  /  Y nnn  for the latched centroid.
    // ==========================================================
    // font: 0-9 digits, 10 blank, 15 X, 16 Y
    function [14:0] glyph;
        input [4:0] c;
        begin
            case (c)
                5'd0:  glyph = 15'b111_101_101_101_111;
                5'd1:  glyph = 15'b010_110_010_010_111;
                5'd2:  glyph = 15'b111_001_111_100_111;
                5'd3:  glyph = 15'b111_001_111_001_111;
                5'd4:  glyph = 15'b101_101_111_001_001;
                5'd5:  glyph = 15'b111_100_111_001_111;
                5'd6:  glyph = 15'b111_100_111_101_111;
                5'd7:  glyph = 15'b111_001_001_001_001;
                5'd8:  glyph = 15'b111_101_111_101_111;
                5'd9:  glyph = 15'b111_101_111_001_111;
                5'd15: glyph = 15'b101_101_010_101_101; // X
                5'd16: glyph = 15'b101_101_010_010_010; // Y
                default: glyph = 15'b000_000_000_000_000; // blank
            endcase
        end
    endfunction

    function [11:0] to_bcd3;   // double-dabble, no divider
        input [11:0] val;
        integer i; reg [11:0] v; reg [23:0] s;
        begin
            v = (val > 12'd999) ? 12'd999 : val;
            s = {12'b0, v};
            for (i = 0; i < 12; i = i + 1) begin
                if (s[15:12] >= 5) s[15:12] = s[15:12] + 3;
                if (s[19:16] >= 5) s[19:16] = s[19:16] + 3;
                if (s[23:20] >= 5) s[23:20] = s[23:20] + 3;
                s = s << 1;
            end
            to_bcd3 = s[23:12];
        end
    endfunction

    // panel char grid: 2 rows x 6 cols
    //   row0: X _ d d d
    //   row1: Y _ d d d
    localparam PCOLS = 6, PROWS = 2;
    reg [4:0] panel_ch [0:PROWS*PCOLS-1];

    // refresh panel once per frame at SOF, from the latched centroid
    always @(posedge aclk) begin
        if (!aresetn) begin : pinit
            integer kk;
            for (kk = 0; kk < PROWS*PCOLS; kk = kk + 1) panel_ch[kk] <= 5'd10;
        end else if (accept && s_axis_tuser) begin : pfill
            reg [11:0] bx, by;
            bx = to_bcd3(cx_q);
            by = to_bcd3(cy_q);
            panel_ch[0] <= 5'd15;              // X
            panel_ch[1] <= 5'd10;
            panel_ch[2] <= {1'b0, bx[11:8]};
            panel_ch[3] <= {1'b0, bx[7:4]};
            panel_ch[4] <= {1'b0, bx[3:0]};
            panel_ch[5] <= 5'd10;
            panel_ch[6] <= 5'd16;              // Y
            panel_ch[7] <= 5'd10;
            panel_ch[8] <= {1'b0, by[11:8]};
            panel_ch[9] <= {1'b0, by[7:4]};
            panel_ch[10]<= {1'b0, by[3:0]};
            panel_ch[11]<= 5'd10;
        end
    end

    // pow2 render geometry: glyph x4, cell 16w x 32h
    localparam PCELLW_LOG = 4, PCELLH_LOG = 5;
    localparam PCELL_W = 1<<PCELLW_LOG, PCELL_H = 1<<PCELLH_LOG;
    localparam PPAD = 4;
    localparam PTEXT_W = PCOLS*PCELL_W, PTEXT_H = PROWS*PCELL_H;
    localparam PAN_W = PTEXT_W + 2*PPAD, PAN_H = PTEXT_H + 2*PPAD;

    wire in_pan = (x_s1 < PAN_W) && (y_s1 < PAN_H);
    wire in_pan_text = in_pan
        && (x_s1 >= PPAD) && (x_s1 < PPAD + PTEXT_W)
        && (y_s1 >= PPAD) && (y_s1 < PPAD + PTEXT_H);
    wire [11:0] ptx = x_s1 - PPAD;
    wire [11:0] pty = y_s1 - PPAD;
    wire [11:0] pcol = ptx >> PCELLW_LOG;
    wire [11:0] prow = pty >> PCELLH_LOG;
    wire [PCELLW_LOG-1:0] icx = ptx[PCELLW_LOG-1:0];
    wire [PCELLH_LOG-1:0] icy = pty[PCELLH_LOG-1:0];
    wire [1:0] fcol = icx[PCELLW_LOG-1 -: 2];
    wire [2:0] frow = icy[PCELLH_LOG-1 -: 3];
    reg  [11:0] prow_off;
    always @(*) prow_off = prow[0] ? PCOLS : 0;
    wire pan_cell_ok = (prow < PROWS) && (pcol < PCOLS);
    wire [4:0]  pan_char  = pan_cell_ok ? panel_ch[prow_off + pcol] : 5'd10;
    wire [14:0] pan_glyph = glyph(pan_char);
    wire pan_inrange = (fcol < 3) && (frow < 5);
    wire pan_bit = pan_inrange ? pan_glyph[(4-frow)*3 + (2-fcol)] : 1'b0;
    wire pan_on  = in_pan_text && pan_bit;

    // ==========================================================
    // OUTPUT MUX
    //  priority: panel text > panel backing > crosshair > box >
    //            original video pixel (passthrough)
    //  crosshair/box/text all green; passthrough keeps the real image.
    // ==========================================================
    localparam [23:0] OSD_GREEN = {8'h00, 8'hFF, 8'h00};
    localparam [23:0] PAN_BG    = {8'h10, 8'h10, 8'h18};

    always @(posedge aclk) begin
        if (!aresetn) m_axis_tvalid <= 1'b0;
        else if (pipeline_ready) begin
            m_axis_tvalid <= valid_s1;
            m_axis_tdata  <= pan_on   ? OSD_GREEN :
                             in_pan    ? PAN_BG    :
                             on_cross  ? OSD_GREEN :
                             on_box    ? OSD_GREEN :
                                         data_s1;     // passthrough video
            m_axis_tkeep  <= keep_s1;
            m_axis_tuser  <= user_s1;
            m_axis_tlast  <= last_s1;
        end
    end

endmodule