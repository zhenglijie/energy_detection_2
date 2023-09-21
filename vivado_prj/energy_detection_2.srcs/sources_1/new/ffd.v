`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/21 14:15:27
// Design Name: 
// Module Name: ffd
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


module ffd(
    input clock,
    input reset,
    input d,
    output reg q
    );
    
    always @ (posedge reset, posedge clock) begin
        if (reset == 1'b1)
            q <= 0;
        else
            q <= d;
    end
    
endmodule
