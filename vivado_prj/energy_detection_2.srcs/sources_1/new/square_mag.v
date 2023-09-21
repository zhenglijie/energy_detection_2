`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/20 09:40:35
// Design Name: 
// Module Name: square_mag
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module square_mag(
    input sys_clk,
    input areset,
    input dv_fft,
    input [15:0]xk_re,
    input [15:0]xk_im,
    
    output dv_sq_m,
    output [31:0]xk_sq_m
    );
    
    wire [31:0]xk_re_sq;
    multiplier multiplier_inst_0 (  //real
      .CLK(sys_clk),    // input wire CLK
      .A(xk_re),        // input wire [15 : 0] A
      .B(xk_re),        // input wire [15 : 0] B
      .SCLR(areset),  // input wire SCLR
      .P(xk_re_sq)        // output wire [31 : 0] P
    );
    
    wire [31:0]xk_im_sq;
    multiplier multiplier_inst_1 (  //image
      .CLK(sys_clk),    // input wire CLK
      .A(xk_im),        // input wire [15 : 0] A
      .B(xk_im),        // input wire [15 : 0] B
      .SCLR(areset),  // input wire SCLR
      .P(xk_im_sq)        // output wire [31 : 0] P
    );
    
    adder adder_inst (
      .A(xk_re_sq),        // input wire [31 : 0] A
      .B(xk_im_sq),        // input wire [31 : 0] B
      .CLK(sys_clk),    // input wire CLK
      .SCLR(areset),  // input wire SCLR
      .S(xk_sq_m)        // output wire [31 : 0] S
    );
    
    wire dv_fft_1;
    ffd ffd_inst_0(
        .clock(sys_clk),  //input
        .reset(areset),  //input
        .d(dv_fft),     //input
        .q(dv_fft_1)     //input
    );
    
    ffd ffd_inst_1(
        .clock(sys_clk),  //input
        .reset(areset),  //input
        .d(dv_fft_1),     //input
        .q(dv_sq_m)     //input
    );
    
    
endmodule
