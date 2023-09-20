`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/20 22:07:17
// Design Name: 
// Module Name: tb_adder
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


module tb_adder();
    reg [31:0] a;
    reg [31:0] b;
    reg sys_clk;
    reg reset;
    wire [31:0] out;
    
    initial begin
        reset = 1'b1;
        #20
        a = 31'd6;
        b = 31'd0;
        sys_clk = 1'b0;
        reset = 1'b0;
    end
    
    always #10 sys_clk = ~sys_clk;
    
    always @ (posedge sys_clk, posedge reset) begin
        if (reset == 1'b1)
            b <= 31'd0;
        else
            b <= b + 31'd1;
    end
    
    adder adder_inst (
      .A(a),        // input wire [31 : 0] A
      .B(b),        // input wire [31 : 0] B
      .CLK(sys_clk),    // input wire CLK
      .SCLR(reset),  // input wire SCLR
      .S(out)        // output wire [31 : 0] S
    );
endmodule

