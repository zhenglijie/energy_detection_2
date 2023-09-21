`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/21 14:33:05
// Design Name: 
// Module Name: tb_square_mag
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


module tb_square_mag();
    reg clock;
    reg reset;
    reg dv_fft;
    
    wire dv_sq_m;
    wire [31:0]xk_sq_m;
    
    reg [31:0] xk;
    
    initial begin
        reset = 1'b1;
        #20
        reset <= 1'b0;
        clock <= 1'b0;
        xk <= 32'b0000_0000_0000_0010_0000_0000_0000_0010;
        dv_fft <= 1'b1;
    end
    
    always #10 clock = ~clock;
    
    always @ (posedge clock, posedge reset) begin
        if (reset)
            xk <= 32'b0000_0000_0000_0010_0000_0000_0000_0010;
        else
            xk <= xk + 32'b0000_0000_0000_0000_0000_0000_0000_0001;
    end
    
    assign dv_sq_m = dv_fft;
    
    square_mag square_mag_inst(
        .sys_clk(clock),
        .areset(reset),
        .dv_fft(dv_fft),
        .xk_re(xk[15:0]),
        .xk_im(xk[31:16]),
        .dv_sq_m(dv_sq_m),
        .xk_sq_m(xk_sq_m)
        );
    
endmodule
