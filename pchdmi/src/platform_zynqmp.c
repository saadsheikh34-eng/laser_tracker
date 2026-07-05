/*
 * platform_zynqmp.c
 * UDP-compatible version for ZynqMP / Versal / Vitis lwIP
 */

#if defined(__arm__) || defined(__aarch64__)

#include "xparameters.h"
#include "xparameters_ps.h"
#include "xil_cache.h"
#include "xscugic.h"

#include "lwip/tcp.h"     /* KEEP for lwIP internal timers */
#include "lwip/udp.h"     /* UDP support */

#include "xil_printf.h"
#include "platform.h"
#include "platform_config.h"
#include "netif/xadapter.h"

#if defined(PLATFORM_ZYNQMP) || defined(PLATFORM_VERSAL)

#include "xttcps.h"

#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_DEVICE_ID         XPAR_XTTCPS_0_DEVICE_ID
#define TIMER_IRPT_INTR         XPAR_XTTCPS_0_INTR
#define INTC_BASE_ADDR          XPAR_SCUGIC_0_CPU_BASEADDR
#define INTC_DIST_BASE_ADDR     XPAR_SCUGIC_0_DIST_BASEADDR

#define PLATFORM_TIMER_INTR_RATE_HZ  (4)

static XTtcPs TimerInstance;
static XInterval Interval;
static u8 Prescaler;

volatile int TcpFastTmrFlag = 0;
volatile int TcpSlowTmrFlag = 0;

#if LWIP_DHCP==1
volatile int dhcp_timoutcntr = 24;
void dhcp_fine_tmr(void);
void dhcp_coarse_tmr(void);
#endif

extern struct netif *echo_netif;

void platform_clear_interrupt(XTtcPs *TimerInstance);


void timer_callback(XTtcPs *TimerInstance)
{
    static int DetectEthLinkStatus = 0;
    static int odd = 1;

#if LWIP_DHCP==1
    static int dhcp_timer = 0;
#endif

    DetectEthLinkStatus++;

    /* lwIP timer support */
    TcpFastTmrFlag = 1;

    odd = !odd;

    if (odd) {

#if LWIP_DHCP==1
        dhcp_timer++;
        dhcp_timoutcntr--;
#endif

        TcpSlowTmrFlag = 1;

#if LWIP_DHCP==1
        dhcp_fine_tmr();

        if (dhcp_timer >= 120) {
            dhcp_coarse_tmr();
            dhcp_timer = 0;
        }
#endif
    }

    /* Ethernet PHY link monitoring */
    if (DetectEthLinkStatus == ETH_LINK_DETECT_INTERVAL) {
        eth_link_detect(echo_netif);
        DetectEthLinkStatus = 0;
    }

    platform_clear_interrupt(TimerInstance);
}


void platform_setup_timer(void)
{
    int Status;

    XTtcPs *Timer = &TimerInstance;
    XTtcPs_Config *Config;

    Config = XTtcPs_LookupConfig(TIMER_DEVICE_ID);

    Status = XTtcPs_CfgInitialize(
                    Timer,
                    Config,
                    Config->BaseAddress);

    if (Status != XST_SUCCESS) {

        xil_printf(
            "Timer configuration failed\r\n");

        return;
    }

    XTtcPs_SetOptions(
            Timer,
            XTTCPS_OPTION_INTERVAL_MODE |
            XTTCPS_OPTION_WAVE_DISABLE);

    XTtcPs_CalcIntervalFromFreq(
            Timer,
            PLATFORM_TIMER_INTR_RATE_HZ,
            &Interval,
            &Prescaler);

    XTtcPs_SetInterval(
            Timer,
            Interval);

    XTtcPs_SetPrescaler(
            Timer,
            Prescaler);
}


void platform_clear_interrupt(XTtcPs *TimerInstance)
{
    u32 StatusEvent;

    StatusEvent =
        XTtcPs_GetInterruptStatus(
                TimerInstance);

    XTtcPs_ClearInterruptStatus(
            TimerInstance,
            StatusEvent);
}


void platform_setup_interrupts(void)
{
    Xil_ExceptionInit();

    XScuGic_DeviceInitialize(
            INTC_DEVICE_ID);

    Xil_ExceptionRegisterHandler(
        XIL_EXCEPTION_ID_IRQ_INT,
        (Xil_ExceptionHandler)
        XScuGic_DeviceInterruptHandler,
        (void *)INTC_DEVICE_ID);

    XScuGic_RegisterHandler(
        INTC_BASE_ADDR,
        TIMER_IRPT_INTR,
        (Xil_ExceptionHandler)
        timer_callback,
        (void *)&TimerInstance);

    XScuGic_EnableIntr(
            INTC_DIST_BASE_ADDR,
            TIMER_IRPT_INTR);
}


void platform_enable_interrupts(void)
{
    Xil_ExceptionEnableMask(
            XIL_EXCEPTION_IRQ);

    XScuGic_EnableIntr(
            INTC_DIST_BASE_ADDR,
            TIMER_IRPT_INTR);

    XTtcPs_EnableInterrupts(
            &TimerInstance,
            XTTCPS_IXR_INTERVAL_MASK);

    XTtcPs_Start(
            &TimerInstance);
}


void init_platform(void)
{
    platform_setup_timer();
    platform_setup_interrupts();
}


void cleanup_platform(void)
{
    Xil_ICacheDisable();
    Xil_DCacheDisable();
}

#endif
#endif
