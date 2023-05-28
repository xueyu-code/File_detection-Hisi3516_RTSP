set moduleName Block_Mat_exit45_pro
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Block_Mat.exit45_pro}
set C_modelType { int 64 }
set C_modelArgList {
	{ rows int 32 regular  }
	{ cols int 32 regular  }
	{ r_low int 32 regular  }
	{ r_up int 32 regular  }
	{ g_low int 32 regular  }
	{ g_up int 32 regular  }
	{ b_low int 32 regular  }
	{ b_up int 32 regular  }
	{ rows_out int 32 regular {fifo 1}  }
	{ cols_out int 32 regular {fifo 1}  }
	{ img_1_rows_V_out int 32 regular {fifo 1}  }
	{ img_1_cols_V_out int 32 regular {fifo 1}  }
	{ r_low_out int 32 regular {fifo 1}  }
	{ r_up_out int 32 regular {fifo 1}  }
	{ g_low_out int 32 regular {fifo 1}  }
	{ g_up_out int 32 regular {fifo 1}  }
	{ b_low_out int 32 regular {fifo 1}  }
	{ b_up_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r_low", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r_up", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g_low", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g_up", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_low", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_up", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_1_rows_V_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_1_cols_V_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_low_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_up_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "g_low_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "g_up_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_low_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_up_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ r_low sc_in sc_lv 32 signal 2 } 
	{ r_up sc_in sc_lv 32 signal 3 } 
	{ g_low sc_in sc_lv 32 signal 4 } 
	{ g_up sc_in sc_lv 32 signal 5 } 
	{ b_low sc_in sc_lv 32 signal 6 } 
	{ b_up sc_in sc_lv 32 signal 7 } 
	{ rows_out_din sc_out sc_lv 32 signal 8 } 
	{ rows_out_full_n sc_in sc_logic 1 signal 8 } 
	{ rows_out_write sc_out sc_logic 1 signal 8 } 
	{ cols_out_din sc_out sc_lv 32 signal 9 } 
	{ cols_out_full_n sc_in sc_logic 1 signal 9 } 
	{ cols_out_write sc_out sc_logic 1 signal 9 } 
	{ img_1_rows_V_out_din sc_out sc_lv 32 signal 10 } 
	{ img_1_rows_V_out_full_n sc_in sc_logic 1 signal 10 } 
	{ img_1_rows_V_out_write sc_out sc_logic 1 signal 10 } 
	{ img_1_cols_V_out_din sc_out sc_lv 32 signal 11 } 
	{ img_1_cols_V_out_full_n sc_in sc_logic 1 signal 11 } 
	{ img_1_cols_V_out_write sc_out sc_logic 1 signal 11 } 
	{ r_low_out_din sc_out sc_lv 32 signal 12 } 
	{ r_low_out_full_n sc_in sc_logic 1 signal 12 } 
	{ r_low_out_write sc_out sc_logic 1 signal 12 } 
	{ r_up_out_din sc_out sc_lv 32 signal 13 } 
	{ r_up_out_full_n sc_in sc_logic 1 signal 13 } 
	{ r_up_out_write sc_out sc_logic 1 signal 13 } 
	{ g_low_out_din sc_out sc_lv 32 signal 14 } 
	{ g_low_out_full_n sc_in sc_logic 1 signal 14 } 
	{ g_low_out_write sc_out sc_logic 1 signal 14 } 
	{ g_up_out_din sc_out sc_lv 32 signal 15 } 
	{ g_up_out_full_n sc_in sc_logic 1 signal 15 } 
	{ g_up_out_write sc_out sc_logic 1 signal 15 } 
	{ b_low_out_din sc_out sc_lv 32 signal 16 } 
	{ b_low_out_full_n sc_in sc_logic 1 signal 16 } 
	{ b_low_out_write sc_out sc_logic 1 signal 16 } 
	{ b_up_out_din sc_out sc_lv 32 signal 17 } 
	{ b_up_out_full_n sc_in sc_logic 1 signal 17 } 
	{ b_up_out_write sc_out sc_logic 1 signal 17 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "r_low", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_low", "role": "default" }} , 
 	{ "name": "r_up", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_up", "role": "default" }} , 
 	{ "name": "g_low", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_low", "role": "default" }} , 
 	{ "name": "g_up", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_up", "role": "default" }} , 
 	{ "name": "b_low", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_low", "role": "default" }} , 
 	{ "name": "b_up", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_up", "role": "default" }} , 
 	{ "name": "rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows_out", "role": "din" }} , 
 	{ "name": "rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_out", "role": "full_n" }} , 
 	{ "name": "rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_out", "role": "write" }} , 
 	{ "name": "cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols_out", "role": "din" }} , 
 	{ "name": "cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_out", "role": "full_n" }} , 
 	{ "name": "cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_out", "role": "write" }} , 
 	{ "name": "img_1_rows_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_1_rows_V_out", "role": "din" }} , 
 	{ "name": "img_1_rows_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_rows_V_out", "role": "full_n" }} , 
 	{ "name": "img_1_rows_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_rows_V_out", "role": "write" }} , 
 	{ "name": "img_1_cols_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_1_cols_V_out", "role": "din" }} , 
 	{ "name": "img_1_cols_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_cols_V_out", "role": "full_n" }} , 
 	{ "name": "img_1_cols_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_cols_V_out", "role": "write" }} , 
 	{ "name": "r_low_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_low_out", "role": "din" }} , 
 	{ "name": "r_low_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_low_out", "role": "full_n" }} , 
 	{ "name": "r_low_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_low_out", "role": "write" }} , 
 	{ "name": "r_up_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_up_out", "role": "din" }} , 
 	{ "name": "r_up_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_up_out", "role": "full_n" }} , 
 	{ "name": "r_up_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_up_out", "role": "write" }} , 
 	{ "name": "g_low_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_low_out", "role": "din" }} , 
 	{ "name": "g_low_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_low_out", "role": "full_n" }} , 
 	{ "name": "g_low_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_low_out", "role": "write" }} , 
 	{ "name": "g_up_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_up_out", "role": "din" }} , 
 	{ "name": "g_up_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_up_out", "role": "full_n" }} , 
 	{ "name": "g_up_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_up_out", "role": "write" }} , 
 	{ "name": "b_low_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_low_out", "role": "din" }} , 
 	{ "name": "b_low_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_low_out", "role": "full_n" }} , 
 	{ "name": "b_low_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_low_out", "role": "write" }} , 
 	{ "name": "b_up_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_up_out", "role": "din" }} , 
 	{ "name": "b_up_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_up_out", "role": "full_n" }} , 
 	{ "name": "b_up_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_up_out", "role": "write" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_Mat_exit45_pro",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_low", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_up", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_low", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_up", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_low", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_up", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_1_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_1_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_1_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_1_cols_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_low_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "r_low_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_up_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "r_up_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "g_low_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "g_low_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "g_up_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "g_up_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_low_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "b_low_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_up_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "b_up_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Block_Mat_exit45_pro {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		r_low {Type I LastRead 0 FirstWrite -1}
		r_up {Type I LastRead 0 FirstWrite -1}
		g_low {Type I LastRead 0 FirstWrite -1}
		g_up {Type I LastRead 0 FirstWrite -1}
		b_low {Type I LastRead 0 FirstWrite -1}
		b_up {Type I LastRead 0 FirstWrite -1}
		rows_out {Type O LastRead -1 FirstWrite 0}
		cols_out {Type O LastRead -1 FirstWrite 0}
		img_1_rows_V_out {Type O LastRead -1 FirstWrite 0}
		img_1_cols_V_out {Type O LastRead -1 FirstWrite 0}
		r_low_out {Type O LastRead -1 FirstWrite 0}
		r_up_out {Type O LastRead -1 FirstWrite 0}
		g_low_out {Type O LastRead -1 FirstWrite 0}
		g_up_out {Type O LastRead -1 FirstWrite 0}
		b_low_out {Type O LastRead -1 FirstWrite 0}
		b_up_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	r_low { ap_none {  { r_low in_data 0 32 } } }
	r_up { ap_none {  { r_up in_data 0 32 } } }
	g_low { ap_none {  { g_low in_data 0 32 } } }
	g_up { ap_none {  { g_up in_data 0 32 } } }
	b_low { ap_none {  { b_low in_data 0 32 } } }
	b_up { ap_none {  { b_up in_data 0 32 } } }
	rows_out { ap_fifo {  { rows_out_din fifo_data 1 32 }  { rows_out_full_n fifo_status 0 1 }  { rows_out_write fifo_update 1 1 } } }
	cols_out { ap_fifo {  { cols_out_din fifo_data 1 32 }  { cols_out_full_n fifo_status 0 1 }  { cols_out_write fifo_update 1 1 } } }
	img_1_rows_V_out { ap_fifo {  { img_1_rows_V_out_din fifo_data 1 32 }  { img_1_rows_V_out_full_n fifo_status 0 1 }  { img_1_rows_V_out_write fifo_update 1 1 } } }
	img_1_cols_V_out { ap_fifo {  { img_1_cols_V_out_din fifo_data 1 32 }  { img_1_cols_V_out_full_n fifo_status 0 1 }  { img_1_cols_V_out_write fifo_update 1 1 } } }
	r_low_out { ap_fifo {  { r_low_out_din fifo_data 1 32 }  { r_low_out_full_n fifo_status 0 1 }  { r_low_out_write fifo_update 1 1 } } }
	r_up_out { ap_fifo {  { r_up_out_din fifo_data 1 32 }  { r_up_out_full_n fifo_status 0 1 }  { r_up_out_write fifo_update 1 1 } } }
	g_low_out { ap_fifo {  { g_low_out_din fifo_data 1 32 }  { g_low_out_full_n fifo_status 0 1 }  { g_low_out_write fifo_update 1 1 } } }
	g_up_out { ap_fifo {  { g_up_out_din fifo_data 1 32 }  { g_up_out_full_n fifo_status 0 1 }  { g_up_out_write fifo_update 1 1 } } }
	b_low_out { ap_fifo {  { b_low_out_din fifo_data 1 32 }  { b_low_out_full_n fifo_status 0 1 }  { b_low_out_write fifo_update 1 1 } } }
	b_up_out { ap_fifo {  { b_up_out_din fifo_data 1 32 }  { b_up_out_full_n fifo_status 0 1 }  { b_up_out_write fifo_update 1 1 } } }
}
