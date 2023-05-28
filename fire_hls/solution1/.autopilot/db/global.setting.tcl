
set TopModule "fire"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:clg400:-2
set SourceFiles {sc {} c ../top.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile C:/Users/Lucy/Desktop/skin_test/skin_hls/solution1/solution1.directive
set TBFiles {verilog {../test.PNG ../skin_tb.cpp ../home.png ../fire_6.PNG ../fire_5.PNG ../fire_3.png ../fire_2.png ../fire_1.png} bc {../test.PNG ../skin_tb.cpp ../home.png ../fire_6.PNG ../fire_5.PNG ../fire_3.png ../fire_2.png ../fire_1.png} sc {../test.PNG ../skin_tb.cpp ../home.png ../fire_6.PNG ../fire_5.PNG ../fire_3.png ../fire_2.png ../fire_1.png} vhdl {../test.PNG ../skin_tb.cpp ../home.png ../fire_6.PNG ../fire_5.PNG ../fire_3.png ../fire_2.png ../fire_1.png} c {} cas {../test.PNG ../skin_tb.cpp ../home.png ../fire_6.PNG ../fire_5.PNG ../fire_3.png ../fire_2.png ../fire_1.png}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0
