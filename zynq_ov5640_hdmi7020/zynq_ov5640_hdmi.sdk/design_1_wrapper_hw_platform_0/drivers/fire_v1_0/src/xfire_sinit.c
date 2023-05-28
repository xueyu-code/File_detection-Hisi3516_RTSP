// ==============================================================
// File generated on Thu Mar 23 09:47:41 +0800 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfire.h"

extern XFire_Config XFire_ConfigTable[];

XFire_Config *XFire_LookupConfig(u16 DeviceId) {
	XFire_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFIRE_NUM_INSTANCES; Index++) {
		if (XFire_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFire_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFire_Initialize(XFire *InstancePtr, u16 DeviceId) {
	XFire_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFire_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFire_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

