`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/20 21:49:42
// Design Name: 
// Module Name: tb_multiplier
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


module tb_multiplier();
    reg [15:0] a;
    reg [15:0] b;
    reg sys_clk;
    reg reset;
    wire [15:0] out;
    
    initial begin
        reset = 1'b1;
        #20
        a = 15'd6;
        b = 15'd0;
        sys_clk = 1'b0;
        reset = 1'b0;
    end
    
    always #10 sys_clk = ~sys_clk;
    
    always @ (posedge sys_clk, posedge reset) begin
        if (reset == 1'b1)
            b <= 15'd0;
        else
            b <= b + 15'd1;
    end
    
    multiplier multiplier_inst (
      .CLK(sys_clk),    // input wire CLK
      .A(a),        // input wire [15 : 0] A
      .B(b),        // input wire [15 : 0] B
      .SCLR(reset),  // input wire SCLR
      .P(out)        // output wire [31 : 0] P
    );
    
endmodule
