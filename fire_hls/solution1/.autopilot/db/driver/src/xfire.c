// ==============================================================
// File generated on Fri Mar 31 12:32:14 +0800 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfire.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFire_CfgInitialize(XFire *InstancePtr, XFire_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFire_Set_rows(XFire *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFire_WriteReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_ROWS_DATA, Data);
}

u32 XFire_Get_rows(XFire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFire_ReadReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_ROWS_DATA);
    return Data;
}

void XFire_Set_cols(XFire *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFire_WriteReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_COLS_DATA, Data);
}

u32 XFire_Get_cols(XFire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFire_ReadReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_COLS_DATA);
    return Data;
}

void XFire_Set_r_low(XFire *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFire_WriteReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_R_LOW_DATA, Data);
}

u32 XFire_Get_r_low(XFire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFire_ReadReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_R_LOW_DATA);
    return Data;
}

void XFire_Set_r_up(XFire *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFire_WriteReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_R_UP_DATA, Data);
}

u32 XFire_Get_r_up(XFire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFire_ReadReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_R_UP_DATA);
    return Data;
}

void XFire_Set_g_low(XFire *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFire_WriteReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_G_LOW_DATA, Data);
}

u32 XFire_Get_g_low(XFire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFire_ReadReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_G_LOW_DATA);
    return Data;
}

void XFire_Set_g_up(XFire *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFire_WriteReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_G_UP_DATA, Data);
}

u32 XFire_Get_g_up(XFire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFire_ReadReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_G_UP_DATA);
    return Data;
}

void XFire_Set_b_low(XFire *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFire_WriteReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_B_LOW_DATA, Data);
}

u32 XFire_Get_b_low(XFire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFire_ReadReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_B_LOW_DATA);
    return Data;
}

void XFire_Set_b_up(XFire *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFire_WriteReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_B_UP_DATA, Data);
}

u32 XFire_Get_b_up(XFire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFire_ReadReg(InstancePtr->Axilites_BaseAddress, XFIRE_AXILITES_ADDR_B_UP_DATA);
    return Data;
}

