// ==============================================================
// File generated on Sun Jul 26 21:27:47 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XIMAGE_SOBEL_H
#define XIMAGE_SOBEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "ximage_sobel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
    u32 Matrix_bus_BaseAddress;
} XImage_sobel_Config;
#endif

typedef struct {
    u32 Ctrl_bus_BaseAddress;
    u32 Matrix_bus_BaseAddress;
    u32 IsReady;
} XImage_sobel;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XImage_sobel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XImage_sobel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XImage_sobel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XImage_sobel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XImage_sobel_Initialize(XImage_sobel *InstancePtr, u16 DeviceId);
XImage_sobel_Config* XImage_sobel_LookupConfig(u16 DeviceId);
int XImage_sobel_CfgInitialize(XImage_sobel *InstancePtr, XImage_sobel_Config *ConfigPtr);
#else
int XImage_sobel_Initialize(XImage_sobel *InstancePtr, const char* InstanceName);
int XImage_sobel_Release(XImage_sobel *InstancePtr);
#endif

void XImage_sobel_Start(XImage_sobel *InstancePtr);
u32 XImage_sobel_IsDone(XImage_sobel *InstancePtr);
u32 XImage_sobel_IsIdle(XImage_sobel *InstancePtr);
u32 XImage_sobel_IsReady(XImage_sobel *InstancePtr);
void XImage_sobel_EnableAutoRestart(XImage_sobel *InstancePtr);
void XImage_sobel_DisableAutoRestart(XImage_sobel *InstancePtr);

u32 XImage_sobel_Get_matrix_BaseAddress(XImage_sobel *InstancePtr);
u32 XImage_sobel_Get_matrix_HighAddress(XImage_sobel *InstancePtr);
u32 XImage_sobel_Get_matrix_TotalBytes(XImage_sobel *InstancePtr);
u32 XImage_sobel_Get_matrix_BitWidth(XImage_sobel *InstancePtr);
u32 XImage_sobel_Get_matrix_Depth(XImage_sobel *InstancePtr);
u32 XImage_sobel_Write_matrix_Words(XImage_sobel *InstancePtr, int offset, int *data, int length);
u32 XImage_sobel_Read_matrix_Words(XImage_sobel *InstancePtr, int offset, int *data, int length);
u32 XImage_sobel_Write_matrix_Bytes(XImage_sobel *InstancePtr, int offset, char *data, int length);
u32 XImage_sobel_Read_matrix_Bytes(XImage_sobel *InstancePtr, int offset, char *data, int length);

void XImage_sobel_InterruptGlobalEnable(XImage_sobel *InstancePtr);
void XImage_sobel_InterruptGlobalDisable(XImage_sobel *InstancePtr);
void XImage_sobel_InterruptEnable(XImage_sobel *InstancePtr, u32 Mask);
void XImage_sobel_InterruptDisable(XImage_sobel *InstancePtr, u32 Mask);
void XImage_sobel_InterruptClear(XImage_sobel *InstancePtr, u32 Mask);
u32 XImage_sobel_InterruptGetEnabled(XImage_sobel *InstancePtr);
u32 XImage_sobel_InterruptGetStatus(XImage_sobel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
