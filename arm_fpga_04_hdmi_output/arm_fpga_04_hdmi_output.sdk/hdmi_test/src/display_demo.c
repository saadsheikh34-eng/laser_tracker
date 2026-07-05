#include <stdio.h>
#include <math.h>
#include <ctype.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "display_demo.h"
#include "display_ctrl/display_ctrl.h"
#include "display_ctrl/vga_modes.h"
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "pic_1920_1080.h"

/*
 * XPAR redefines
 */
#define DYNCLK_BASEADDR     XPAR_AXI_DYNCLK_0_BASEADDR
#define VGA_VDMA_ID         XPAR_AXIVDMA_0_DEVICE_ID
#define DISP_VTC_ID         XPAR_VTC_0_DEVICE_ID

/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

/*
 * Display Driver struct
 */
DisplayCtrl dispCtrl;
XAxiVdma vdma;

/*
 * Frame buffers for video data
 */
u8 frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME];
u8 *pFrames[DISPLAY_NUM_FRAMES];  // array of pointers to the frame buffers

/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */

int main(void)
{
	int i;
	int Status;
	XAxiVdma_Config *vdmaConfig;

	/*
	 * Initialize an array of pointers to the 3 frame buffers
	 */
	init_platform();
    print("HDMI TEST\r\n");
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		pFrames[i] = frameBuf[i];
	}

	/*
	 * Initialize VDMA driver, get the hardware VDMA configurations
	 */
	vdmaConfig = XAxiVdma_LookupConfig(VGA_VDMA_ID);
	if (vdmaConfig == NULL)
	{
		print("No video DMA found for ID %d\r\n");

	}

	/*
	 * Use hardware VDMA configurations to initialize the driver
	 */
	Status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		print("VDMA Configuration Initialization failed %d\r\n");
	}

	/*
	 * Initialize the Display controller and start it
	 */

	VideoMode VMODE = VMODE_1920x1080;

	Status = DisplayInitialize(&dispCtrl, &vdma, DISP_VTC_ID, DYNCLK_BASEADDR, pFrames, DEMO_STRIDE, VMODE);
	if (Status != XST_SUCCESS)
	{
		print("Display Ctrl initialization failed during demo initialization%d\r\n");
	}

	Status = DisplayStart(&dispCtrl);
	if (Status != XST_SUCCESS)
	{
		print("Couldn't start display during demo initialization%d\r\n");
	}

	DemoPrintTest(dispCtrl.framePtr[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, dispCtrl.stride);

	return 0;
}

void DemoPrintTest(u8 *frame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;
	u32 linesStart = 0;
	u32 pixelIdx = 0;

	for(ycoi = 0; ycoi < height; ycoi++)
	{
		for(xcoi = 0; xcoi < (width * 4); xcoi+=4)
		{
			frame[linesStart + xcoi    ] = Pixel_1920_1080[pixelIdx++];
			frame[linesStart + xcoi + 1] = Pixel_1920_1080[pixelIdx++];
			frame[linesStart + xcoi + 2] = Pixel_1920_1080[pixelIdx++];
		}

		linesStart += stride;
	}

	/*
	 * Flush the frame buffer memory range to ensure changes are written to the
	 * actual memory, and therefore accessible by the VDMA.
	 */
	Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}


