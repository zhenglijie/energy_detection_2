`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 17:09:49
// Design Name: 
// Module Name: tb_overall_bad
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


module tb_overall_bad();
    reg sys_clk;
    reg sys_rst_n;
    
    initial begin
        sys_clk = 1'b0;
        sys_rst_n <= 1'b0;
        #20
        sys_rst_n <= 1'b1;
    end
    
    always #10 sys_clk = ~sys_clk;
    
    energy_detection_fixed_th energy_detection_fixed_th_inst(
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n)
    );
    
endmodule
