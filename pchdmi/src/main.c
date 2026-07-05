
#include <stdio.h>
#include <string.h>

#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"

#include "xil_printf.h"
#include "xil_cache.h"
#include "xstatus.h"

/* lwIP */
#include "lwip/udp.h"
#include "lwip/ip_addr.h"

/* HDMI */
#include "display_demo.h"

/* UDP server function */
int start_application(void);

/* Network interface */
static struct netif server_netif;
struct netif *echo_netif;

/* ================= DDR CLEAR ================= */

#define FB_BASE  0x10000000U
#define FB_SIZE  0x06000000U   /* 32MB safe region */

static void clear_ddr(void)
{
    memset((void *)FB_BASE, 0x00, FB_SIZE);
    Xil_DCacheFlushRange((UINTPTR)FB_BASE, FB_SIZE);
    xil_printf("DDR cleared\r\n");
}

/* ================= MAIN ================= */

int main(void)
{
    ip_addr_t ipaddr, netmask, gw;

    unsigned char mac_ethernet_address[] =
    { 0x00, 0x0A, 0x35, 0x00, 0x01, 0x02 };

    echo_netif = &server_netif;

    init_platform();

    xil_printf("\r\n=== HDMI STREAM SYSTEM (UDP) ===\r\n");

    /* HDMI INIT */
    if (HDMI_Init() != XST_SUCCESS) {
        xil_printf("HDMI INIT FAILED\r\n");
        return -1;
    }

    /* Clear DDR */
    clear_ddr();

    /* lwIP INIT */
    lwip_init();

    /* Static IP */
    IP4_ADDR(&ipaddr, 192, 168, 1, 10);
    IP4_ADDR(&netmask, 255, 255, 255, 0);
    IP4_ADDR(&gw, 192, 168, 1, 1);

    /* Add network interface */
    if (!xemac_add(echo_netif,
                   &ipaddr,
                   &netmask,
                   &gw,
                   mac_ethernet_address,
                   PLATFORM_EMAC_BASEADDR))
    {
        xil_printf("ERROR: Failed to add network interface\r\n");
        return -1;
    }

    netif_set_default(echo_netif);

    /* Enable interrupts */
    platform_enable_interrupts();

    netif_set_up(echo_netif);

    xil_printf("IP Address: 192.168.1.10\r\n");

    /* START UDP SERVER */
    if (start_application() != 0) {
        xil_printf("UDP server start failed\r\n");
        return -1;
    }

    /* MAIN LOOP */
    while (1)
    {
        xemacif_input(echo_netif);
    }

    cleanup_platform();
    return 0;
}
