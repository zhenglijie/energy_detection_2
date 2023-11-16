// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Nov 15 19:44:05 2023
// Host        : LAPTOP-UV5HGDQN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/matlab/slxTest/flip_t_fil/fpgaproj/flip_t_fil.srcs/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_stub.v
// Design      : jtag_mac_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_1,Vivado 2017.4" *)
module jtag_mac_fifo(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  almost_full, empty, rd_data_count, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[7:0],wr_en,rd_en,dout[7:0],full,almost_full,empty,rd_data_count[11:0],wr_rst_busy,rd_rst_busy" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [7:0]din;
  input wr_en;
  input rd_en;
  output [7:0]dout;
  output full;
  output almost_full;
  output empty;
  output [11:0]rd_data_count;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
