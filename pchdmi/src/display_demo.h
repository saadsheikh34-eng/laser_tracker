/************************************************************************/
/*                                                                      */
/*  display_demo.h -- ZYBO HDMI display demo (CLEAN VERSION)             */
/*                                                                      */
/************************************************************************/

#ifndef DISPLAY_DEMO_H_
#define DISPLAY_DEMO_H_

#include "xstatus.h"

int HDMI_Init();

#ifdef __cplusplus
extern "C" {
#endif

/* ------------------------------------------------------------ */
/*                      Include Files                           */
/* ------------------------------------------------------------ */

#include "xil_types.h"

/* ------------------------------------------------------------ */
/*                      Macros                                  */
/* ------------------------------------------------------------ */

#define DEMO_PATTERN_0 0
#define DEMO_PATTERN_1 1

#define DEMO_WIDTH     1280
#define DEMO_HEIGHT    720

#define DEMO_MAX_FRAME (DEMO_WIDTH * DEMO_HEIGHT * 4)
#define DEMO_STRIDE    (DEMO_WIDTH * 4)

/* ------------------------------------------------------------ */
/*                      Function Prototypes                     */
/* ------------------------------------------------------------ */

// HDMI initialization
int HDMI_Init(void);

// Run display demo (continuous)
void DemoRun(void);

// Print debug test pattern into frame buffer
void DemoPrintTest(u8 *frame, u32 width, u32 height, u32 stride);

// Optional helpers
void DemoFillColor(u8 *frame, u32 width, u32 height, u32 stride, u8 r, u8 g, u8 b);

#ifdef __cplusplus
}
#endif

#endif /* DISPLAY_DEMO_H_ */
