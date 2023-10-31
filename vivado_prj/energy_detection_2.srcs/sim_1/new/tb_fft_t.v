`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 15:33:28
// Design Name: 
// Module Name: tb_fft_t
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


module tb_fft_t();
    reg sys_clk;
    reg reset_n;
    
    initial begin
        sys_clk = 1'b0;
        reset_n <= 1'b0;
        #20
        reset_n <= 1'b1;
    end
    
    always #10 sys_clk = ~sys_clk;
    
    fft_t fft_t_inst( 
        .sys_clk(sys_clk),
        .sys_rst_n(reset_n)
        );

endmodule
