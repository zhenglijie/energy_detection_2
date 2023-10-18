`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 18:18:46
// Design Name: 
// Module Name: tb_rom
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


module tb_rom();
    reg sys_clk;
    reg sys_rst;
    reg [9:0]addr;
    
    wire [31:0]dout;
    
    initial begin
        sys_clk = 1'b1;
        sys_rst <= 1'b1;
        #20
        sys_rst <= 1'b0;
    end
    
    always #10 sys_clk = ~sys_clk;
    
    wire rsta_busy;
    
    always @ (posedge sys_clk, negedge sys_rst) begin
        if (sys_rst == 1'b1 || rsta_busy == 1'b1)
            addr <= 10'd0;
        else if (addr == 10'd1023)
            addr <= 10'd0;
        else
            addr <= addr + 10'd1;
    end
    
    rom_32x1024 rom_32x1024_inst (
      .clka(sys_clk),            // input wire clka
      .rsta(sys_rst),            // input wire rsta
      .addra(addr),          // input wire [9 : 0] addra
      .douta(dout),          // output wire [31 : 0] douta
      .rsta_busy(rsta_busy)  // output wire rsta_busy
    );
    
    ila_0 ila_0_ist (
        .clk(sys_clk), // input wire clk
        .probe0(sys_clk), // input wire [0:0]  probe0  
        .probe1(sys_rst), // input wire [0:0]  probe1 
        .probe2(addr), // input wire [9:0]  probe2 
        .probe3(dout) // input wire [31:0]  probe3
    );
    
endmodule
