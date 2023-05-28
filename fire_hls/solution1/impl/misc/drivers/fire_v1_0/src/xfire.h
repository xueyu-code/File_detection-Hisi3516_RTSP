// ==============================================================
// File generated on Fri Mar 31 12:32:14 +0800 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFIRE_H
#define XFIRE_H

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
#include "xfire_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XFire_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XFire;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFire_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFire_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFire_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFire_ReadReg(BaseAddress, RegOffset) \
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
int XFire_Initialize(XFire *InstancePtr, u16 DeviceId);
XFire_Config* XFire_LookupConfig(u16 DeviceId);
int XFire_CfgInitialize(XFire *InstancePtr, XFire_Config *ConfigPtr);
#else
int XFire_Initialize(XFire *InstancePtr, const char* InstanceName);
int XFire_Release(XFire *InstancePtr);
#endif


void XFire_Set_rows(XFire *InstancePtr, u32 Data);
u32 XFire_Get_rows(XFire *InstancePtr);
void XFire_Set_cols(XFire *InstancePtr, u32 Data);
u32 XFire_Get_cols(XFire *InstancePtr);
void XFire_Set_r_low(XFire *InstancePtr, u32 Data);
u32 XFire_Get_r_low(XFire *InstancePtr);
void XFire_Set_r_up(XFire *InstancePtr, u32 Data);
u32 XFire_Get_r_up(XFire *InstancePtr);
void XFire_Set_g_low(XFire *InstancePtr, u32 Data);
u32 XFire_Get_g_low(XFire *InstancePtr);
void XFire_Set_g_up(XFire *InstancePtr, u32 Data);
u32 XFire_Get_g_up(XFire *InstancePtr);
void XFire_Set_b_low(XFire *InstancePtr, u32 Data);
u32 XFire_Get_b_low(XFire *InstancePtr);
void XFire_Set_b_up(XFire *InstancePtr, u32 Data);
u32 XFire_Get_b_up(XFire *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
