`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 10:06:01
// Design Name: 
// Module Name: datapath_fft_controller
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


module datapath_fft_controller(
    input clock,
    input sclr_counter,
    input en_counter,
    output tc_counter,
    output [9:0] addra
    );

    counter_mod_10 counter_mod_10_inst (
      .CLK(clock),    // input wire CLK
      .CE(en_counter),      // input wire CE
      .SCLR(sclr_counter),  // input wire SCLR
      .Q(addra)        // output wire [9 : 0] Q
    );
    
    assign tc_counter = addra[0] & addra[1] & addra[2] & addra[3] & addra[4] & addra[5] & addra[6] & addra[7] & addra[8] & addra[9];
    
endmodule
