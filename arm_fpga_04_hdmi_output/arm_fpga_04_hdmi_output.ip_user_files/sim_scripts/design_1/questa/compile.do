vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_11
vlib questa_lib/msim/processing_system7_vip_v1_0_13
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_27
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_25
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_6
vlib questa_lib/msim/lib_fifo_v1_0_15
vlib questa_lib/msim/blk_mem_gen_v8_4_5
vlib questa_lib/msim/lib_bmg_v1_0_14
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_27
vlib questa_lib/msim/axi_vdma_v6_3_13
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_register_slice_v1_1_25
vlib questa_lib/msim/axis_subset_converter_v1_1_25
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_data_fifo_v2_1_24
vlib questa_lib/msim/axi_crossbar_v2_1_26
vlib questa_lib/msim/v_tc_v6_1_13
vlib questa_lib/msim/v_vid_in_axi4s_v4_0_9
vlib questa_lib/msim/v_axi4s_vid_out_v4_0_13
vlib questa_lib/msim/v_tc_v6_2_3
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/axi_protocol_converter_v2_1_25

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 questa_lib/msim/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 questa_lib/msim/processing_system7_vip_v1_0_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_27 questa_lib/msim/axi_gpio_v2_0_27
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_25 questa_lib/msim/axi_register_slice_v2_1_25
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_6 questa_lib/msim/fifo_generator_v13_2_6
vmap lib_fifo_v1_0_15 questa_lib/msim/lib_fifo_v1_0_15
vmap blk_mem_gen_v8_4_5 questa_lib/msim/blk_mem_gen_v8_4_5
vmap lib_bmg_v1_0_14 questa_lib/msim/lib_bmg_v1_0_14
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_27 questa_lib/msim/axi_datamover_v5_1_27
vmap axi_vdma_v6_3_13 questa_lib/msim/axi_vdma_v6_3_13
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_25 questa_lib/msim/axis_register_slice_v1_1_25
vmap axis_subset_converter_v1_1_25 questa_lib/msim/axis_subset_converter_v1_1_25
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_24 questa_lib/msim/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 questa_lib/msim/axi_crossbar_v2_1_26
vmap v_tc_v6_1_13 questa_lib/msim/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 questa_lib/msim/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_13 questa_lib/msim/v_axi4s_vid_out_v4_0_13
vmap v_tc_v6_2_3 questa_lib/msim/v_tc_v6_2_3
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap axi_protocol_converter_v2_1_25 questa_lib/msim/axi_protocol_converter_v2_1_25

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"D:/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"D:/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_142M_0/sim/design_1_rst_ps7_0_142M_0.vhd" \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/9097/src/mmcme2_drp.v" \

vcom -work xil_defaultlib  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/9097/src/axi_dynclk_S00_AXI.vhd" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/9097/src/axi_dynclk.vhd" \
"../../../bd/design_1/ip/design_1_axi_dynclk_0_0/sim/design_1_axi_dynclk_0_0.vhd" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ca91/src/ClockGen.vhd" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ca91/src/SyncAsync.vhd" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ca91/src/SyncAsyncReset.vhd" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ca91/src/DVI_Constants.vhd" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ca91/src/OutputSERDES.vhd" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ca91/src/TMDS_Encoder.vhd" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ca91/src/rgb2dvi.vhd" \
"../../../bd/design_1/ip/design_1_rgb2dvi_0_0/sim/design_1_rgb2dvi_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_27  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_srn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/93a6/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_m00e_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_25  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_15  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/a4ed/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_14  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3a3e/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_27  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/9b19/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_13  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_13  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_25  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/d733/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tdata_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tuser_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tstrb_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tkeep_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tid_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tdest_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/tlast_design_1_axis_subset_converter_0_0.v" \

vlog -work axis_subset_converter_v1_1_25  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ba57/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/hdl/top_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/sim/design_1_axis_subset_converter_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work v_tc_v6_1_13  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_13  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/da0d/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \

vcom -work v_tc_v6_2_3  -93 \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ee1d/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \

vlog -work xlconcat_v2_1_4  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_protocol_converter_v2_1_25  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/36fa/hdl" "+incdir+../../../../arm_fpga_04_hdmi_output.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+D:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

