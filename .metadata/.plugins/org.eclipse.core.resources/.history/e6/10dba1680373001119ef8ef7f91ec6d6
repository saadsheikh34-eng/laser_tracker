#include <stdio.h>
#include <string.h>

#include "xil_types.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_printf.h"

#include "display_demo.h"
#include "display_ctrl/display_ctrl.h"
#include "display_ctrl/vga_modes.h"

#define DYNCLK_BASEADDR     XPAR_AXI_DYNCLK_0_BASEADDR
#define VGA_VDMA_ID         XPAR_AXIVDMA_0_DEVICE_ID
#define DISP_VTC_ID         XPAR_VTC_0_DEVICE_ID

#define WIDTH               640
#define HEIGHT              480
#define BPP                 4
#define STRIDE              (WIDTH * BPP)
#define FRAME_SIZE          (WIDTH * HEIGHT * BPP)

/* Triple buffer frame addresses */
#define FB1 0x10000000U
#define FB2 0x10200000U
#define FB3 0x10400000U

DisplayCtrl dispCtrl;
XAxiVdma vdma;

u8 *pFrames[3];

int HDMI_Init(void)
{
    int Status;
    XAxiVdma_Config *vdmaConfig;
    VideoMode VMODE;

    xil_printf("Initializing HDMI...\r\n");

    /* Frame buffer pointers */
    pFrames[0] = (u8 *)FB1;
    pFrames[1] = (u8 *)FB2;
    pFrames[2] = (u8 *)FB3;

    /* Clear the frame buffers so monitor does not show garbage at startup */
    memset((void *)FB1, 0x00, FRAME_SIZE);
    memset((void *)FB2, 0x00, FRAME_SIZE);
    memset((void *)FB3, 0x00, FRAME_SIZE);

    Xil_DCacheFlushRange((UINTPTR)FB1, FRAME_SIZE);
    Xil_DCacheFlushRange((UINTPTR)FB2, FRAME_SIZE);
    Xil_DCacheFlushRange((UINTPTR)FB3, FRAME_SIZE);

    /* Lookup VDMA config */
    vdmaConfig = XAxiVdma_LookupConfig(VGA_VDMA_ID);
    if (vdmaConfig == NULL) {
        xil_printf("VDMA not found\r\n");
        return XST_FAILURE;
    }

    /* Initialize VDMA */
    Status = XAxiVdma_CfgInitialize(&vdma,
                                    vdmaConfig,
                                    vdmaConfig->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA init failed\r\n");
        return XST_FAILURE;
    }

    /* Video mode */
    VMODE = VMODE_640x480;

    /* Initialize display controller */
    Status = DisplayInitialize(&dispCtrl,
                               &vdma,
                               DISP_VTC_ID,
                               DYNCLK_BASEADDR,
                               pFrames,
                               STRIDE,
                               VMODE);
    if (Status != XST_SUCCESS) {
        xil_printf("Display init failed\r\n");
        return XST_FAILURE;
    }

    /* Enable circular buffering */
    dispCtrl.vdmaConfig.EnableCircularBuf = 1;

    /* Start display */
    Status = DisplayStart(&dispCtrl);
    if (Status != XST_SUCCESS) {
        xil_printf("Display start failed\r\n");
        return XST_FAILURE;
    }

    xil_printf("HDMI Ready ✅\r\n");
    xil_printf("Resolution: %dx%d\r\n", WIDTH, HEIGHT);
    xil_printf("Stride: %d bytes\r\n", STRIDE);

    return XST_SUCCESS;
}
