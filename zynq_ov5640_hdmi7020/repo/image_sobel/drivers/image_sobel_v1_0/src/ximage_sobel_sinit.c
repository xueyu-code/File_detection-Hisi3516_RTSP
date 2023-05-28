// ==============================================================
// File generated on Sun Jul 26 21:27:47 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "ximage_sobel.h"

extern XImage_sobel_Config XImage_sobel_ConfigTable[];

XImage_sobel_Config *XImage_sobel_LookupConfig(u16 DeviceId) {
	XImage_sobel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XIMAGE_SOBEL_NUM_INSTANCES; Index++) {
		if (XImage_sobel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XImage_sobel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XImage_sobel_Initialize(XImage_sobel *InstancePtr, u16 DeviceId) {
	XImage_sobel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XImage_sobel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XImage_sobel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

