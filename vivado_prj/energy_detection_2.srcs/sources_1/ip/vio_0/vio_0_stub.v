// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Nov  7 16:05:20 2023
// Host        : LAPTOP-UV5HGDQN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/vivado_prj/energy_detection_2.srcs/sources_1/ip/vio_0/vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2017.4" *)
module vio_0(clk, probe_out0, probe_out1)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[31:0],probe_out1[9:0]" */;
  input clk;
  output [31:0]probe_out0;
  output [9:0]probe_out1;
endmodule
