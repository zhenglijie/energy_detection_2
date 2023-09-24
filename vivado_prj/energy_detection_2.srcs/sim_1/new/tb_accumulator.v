`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/24 14:06:48
// Design Name: 
// Module Name: tb_accumulator
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


module tb_accumulator();
    reg [31:0] b;
    reg clk;
    reg add;
    reg ce;
    reg reset;
    
    wire [31:0]q;
    
    initial begin
        reset = 1'b1;
        #20
        reset <= 1'b0;
        clk <= 1'b0;
        add <= 1'b1;
    end
    
    always #10 clk = ~clk;
    
    always @ (posedge clk, posedge reset) begin
        if (reset == 1'b1)
            ce <= 1'b0;
        else
            ce <= 1'b1;
    end
    
    always @ (posedge clk, posedge reset) begin
        if (reset == 1'b1)
            b <= 32'd0;
        else
            b <= b + 32'd1;
    end
    
    always @ (posedge clk, posedge reset) begin
        if (reset == 1'b1)
            add <= 1'b1;
        else if (b == 32'd30)
            add <= 1'b0;
        else
            add <= add;
    end
    
    accumulator accumulator_inst (
      .B(b),        // input wire [31 : 0] B
      .CLK(clk),    // input wire CLK
      .ADD(add),    // input wire ADD 1:add; 0:sub
      .CE(ce),      // input wire CE
      .SCLR(reset),  // input wire SCLR
      .Q(q)        // output wire [31 : 0] Q
    );

endmodule
