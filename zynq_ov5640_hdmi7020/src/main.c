#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "vdma_api/vdma_api.h"
#include "xfire.h"
#include "xparameters.h"
#include "xil_cache.h"

#define DISPLAY_VDMA_DEV_ID 	XPAR_AXI_VDMA_1_DEVICE_ID
#define HLS_VDMA_DEV_ID 		XPAR_AXI_VDMA_0_DEVICE_ID
#define DISP_BASE_ADDR 			0x08000000
#define HLS_BASE_ADDR			0x03000000
#define SCREEN_X				1024 //1024
#define SCREEN_Y				768 //768

XAxiVdma					Vdma;
XFire 					fire;




int main()
{
	int status;
    //≥ı ºªØVDMA

	run_vdma_frame_buffer(&Vdma, HLS_VDMA_DEV_ID, SCREEN_X, SCREEN_Y,HLS_BASE_ADDR,0, 0,BOTH);
	run_vdma_frame_buffer(&Vdma, DISPLAY_VDMA_DEV_ID, SCREEN_X, SCREEN_Y,DISP_BASE_ADDR,0, 0,BOTH);

	XFire_Initialize(&fire,XPAR_XFIRE_0_DEVICE_ID);

	XFire_Set_rows(&fire,SCREEN_Y);
	XFire_Set_cols(&fire,SCREEN_X);

	XFire_Set_r_low(&fire,190);
	XFire_Set_r_up(&fire,249);
	XFire_Set_g_low(&fire,59);
	XFire_Set_g_up(&fire,234);
	XFire_Set_b_low(&fire,39);
	XFire_Set_b_up(&fire,199);

	while(1)
	{


	}
    return 0;
}
