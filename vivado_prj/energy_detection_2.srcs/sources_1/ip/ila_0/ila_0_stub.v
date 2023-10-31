// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Oct 29 11:52:51 2023
// Host        : LAPTOP-UV5HGDQN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/vivado_prj/energy_detection_2.srcs/sources_1/ip/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2017.4" *)
module ila_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[15:0],probe2[15:0],probe3[31:0],probe4[30:0],probe5[0:0],probe6[31:0],probe7[0:0],probe8[0:0],probe9[0:0]" */;
  input clk;
  input [31:0]probe0;
  input [15:0]probe1;
  input [15:0]probe2;
  input [31:0]probe3;
  input [30:0]probe4;
  input [0:0]probe5;
  input [31:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
endmodule
