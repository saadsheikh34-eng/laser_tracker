/*
 * platform_zynq.c
 * Zynq UDP-compatible platform code for lwIP/Vitis
 */

#ifdef __arm__

#include "xparameters.h"
#include "xparameters_ps.h"
#include "xil_cache.h"
#include "xscugic.h"

#include "lwip/tcp.h"        /* Keep for lwIP timer support */
#include "lwip/udp.h"        /* Added for UDP */

#include "xil_printf.h"
#include "platform.h"
#include "platform_config.h"
#include "netif/xadapter.h"

#ifdef PLATFORM_ZYNQ

#include "xscutimer.h"

#define INTC_DEVICE_ID      XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_DEVICE_ID     XPAR_SCUTIMER_DEVICE_ID
#define INTC_BASE_ADDR      XPAR_SCUGIC_0_CPU_BASEADDR
#define INTC_DIST_BASE_ADDR XPAR_SCUGIC_0_DIST_BASEADDR
#define TIMER_IRPT_INTR     XPAR_SCUTIMER_INTR

#define RESET_RX_CNTR_LIMIT 400

void tcp_fasttmr(void);
void tcp_slowtmr(void);

static XScuTimer TimerInstance;

#ifndef USE_SOFTETH_ON_ZYNQ
static int ResetRxCntr = 0;
#endif

extern struct netif *echo_netif;

volatile int TcpFastTmrFlag = 0;
volatile int TcpSlowTmrFlag = 0;

#if LWIP_DHCP==1
volatile int dhcp_timoutcntr = 24;
void dhcp_fine_tmr(void);
void dhcp_coarse_tmr(void);
#endif


void timer_callback(XScuTimer *TimerInstance)
{
    static int DetectEthLinkStatus = 0;
    static int odd = 1;

#if LWIP_DHCP==1
    static int dhcp_timer = 0;
#endif

    DetectEthLinkStatus++;

    /* lwIP internal timer support */
    TcpFastTmrFlag = 1;

    odd = !odd;

#ifndef USE_SOFTETH_ON_ZYNQ
    ResetRxCntr++;
#endif

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

#ifndef USE_SOFTETH_ON_ZYNQ
    /*
     * RX path recovery workaround
     */
    if (ResetRxCntr >= RESET_RX_CNTR_LIMIT) {
        xemacpsif_resetrx_on_no_rxdata(echo_netif);
        ResetRxCntr = 0;
    }
#endif

    /*
     * Ethernet PHY link detection
     */
    if (DetectEthLinkStatus == ETH_LINK_DETECT_INTERVAL) {
        eth_link_detect(echo_netif);
        DetectEthLinkStatus = 0;
    }

    XScuTimer_ClearInterruptStatus(TimerInstance);
}


void platform_setup_timer(void)
{
    int Status;
    XScuTimer_Config *ConfigPtr;
    int TimerLoadValue;

    ConfigPtr = XScuTimer_LookupConfig(TIMER_DEVICE_ID);

    Status = XScuTimer_CfgInitialize(
                    &TimerInstance,
                    ConfigPtr,
                    ConfigPtr->BaseAddr);

    if (Status != XST_SUCCESS) {
        xil_printf(
            "Scutimer configuration failed\r\n");
        return;
    }

    Status = XScuTimer_SelfTest(&TimerInstance);

    if (Status != XST_SUCCESS) {
        xil_printf(
            "Scutimer self test failed\r\n");
        return;
    }

    XScuTimer_EnableAutoReload(&TimerInstance);

    /*
     * 250 ms timeout
     */
    TimerLoadValue =
        XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ / 8;

    XScuTimer_LoadTimer(
            &TimerInstance,
            TimerLoadValue);
}


void platform_setup_interrupts(void)
{
    Xil_ExceptionInit();

    XScuGic_DeviceInitialize(INTC_DEVICE_ID);

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

    XScuTimer_EnableInterrupt(
            &TimerInstance);

    XScuTimer_Start(
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
