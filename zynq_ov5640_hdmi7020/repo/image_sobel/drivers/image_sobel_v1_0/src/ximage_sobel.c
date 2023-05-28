// ==============================================================
// File generated on Sun Jul 26 21:27:47 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "ximage_sobel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XImage_sobel_CfgInitialize(XImage_sobel *InstancePtr, XImage_sobel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->Matrix_bus_BaseAddress = ConfigPtr->Matrix_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XImage_sobel_Start(XImage_sobel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_sobel_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XImage_sobel_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XImage_sobel_IsDone(XImage_sobel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_sobel_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XImage_sobel_IsIdle(XImage_sobel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_sobel_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XImage_sobel_IsReady(XImage_sobel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_sobel_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XImage_sobel_EnableAutoRestart(XImage_sobel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_sobel_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XImage_sobel_DisableAutoRestart(XImage_sobel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_sobel_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_AP_CTRL, 0);
}

u32 XImage_sobel_Get_matrix_BaseAddress(XImage_sobel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Matrix_bus_BaseAddress + XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_BASE);
}

u32 XImage_sobel_Get_matrix_HighAddress(XImage_sobel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Matrix_bus_BaseAddress + XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_HIGH);
}

u32 XImage_sobel_Get_matrix_TotalBytes(XImage_sobel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_HIGH - XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_BASE + 1);
}

u32 XImage_sobel_Get_matrix_BitWidth(XImage_sobel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XIMAGE_SOBEL_MATRIX_BUS_WIDTH_MATRIX;
}

u32 XImage_sobel_Get_matrix_Depth(XImage_sobel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XIMAGE_SOBEL_MATRIX_BUS_DEPTH_MATRIX;
}

u32 XImage_sobel_Write_matrix_Words(XImage_sobel *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_HIGH - XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Matrix_bus_BaseAddress + XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XImage_sobel_Read_matrix_Words(XImage_sobel *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_HIGH - XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Matrix_bus_BaseAddress + XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_BASE + (offset + i)*4);
    }
    return length;
}

u32 XImage_sobel_Write_matrix_Bytes(XImage_sobel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_HIGH - XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Matrix_bus_BaseAddress + XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XImage_sobel_Read_matrix_Bytes(XImage_sobel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_HIGH - XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Matrix_bus_BaseAddress + XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_BASE + offset + i);
    }
    return length;
}

void XImage_sobel_InterruptGlobalEnable(XImage_sobel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_sobel_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_GIE, 1);
}

void XImage_sobel_InterruptGlobalDisable(XImage_sobel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_sobel_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_GIE, 0);
}

void XImage_sobel_InterruptEnable(XImage_sobel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XImage_sobel_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_IER);
    XImage_sobel_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XImage_sobel_InterruptDisable(XImage_sobel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XImage_sobel_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_IER);
    XImage_sobel_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XImage_sobel_InterruptClear(XImage_sobel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_sobel_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XImage_sobel_InterruptGetEnabled(XImage_sobel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XImage_sobel_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_IER);
}

u32 XImage_sobel_InterruptGetStatus(XImage_sobel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XImage_sobel_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XIMAGE_SOBEL_CTRL_BUS_ADDR_ISR);
}

