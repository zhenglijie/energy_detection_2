`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 20:59:22
// Design Name: 
// Module Name: energy_detection_fixed_th
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


module energy_detection_fixed_th(
    input sys_clk,
    input sys_rst_n,
    output reg led
);

    reg [9:0]addr;
    reg strobe;
    
    always @ (posedge sys_clk) begin
        if (sys_rst_n == 1'b0)
            addr <= 10'd0;
        else if (addr == 10'd1023)
            addr <= 10'd0;
        else begin
            addr <= addr + 10'd1;
            led <= 1'b0;
            strobe <= 1'b1;
        end 
    end
    
    wire [31:0]dout;
    rom_32x1024 rom_32x1024_inst (
      .clka(sys_clk),    // input wire clka
      .addra(addr),  // input wire [9 : 0] addra
      .douta(dout)  // output wire [31 : 0] douta
    );
    
    wire [15:0]fft_out_data_real_abs;
    wire [31:0]fft_m_out_data;
    wire fft_m_out_data_tvalid;
    wire fft_m_out_data_tlast;
    fft fft_inst(
        .sys_clk(sys_clk),          //input
        .areset(~sys_rst_n),        //input
        .strobe(strobe),                  //input
        
        .ram_in_data(dout),             //input [31:0]
        .fft_m_out_data(fft_m_out_data),          //output [31:0]
        .fft_out_data_real_abs(fft_out_data_real_abs),   //output [15:0]
        .fft_m_out_data_tvalid(fft_m_out_data_tvalid),   //output
        .fft_m_out_data_tlast(fft_m_out_data_tlast)     //output
    );
    
    wire dv_sq_m;
    wire [31:0]xk_sq_m;
    square_mag square_mag_inst(
        .sys_clk(sys_clk),     //input             
        .areset(~sys_rst_n),      //input 
        .dv_fft(fft_m_out_data_tvalid),      //input 
        .xk_re(fft_m_out_data[15:0]),       //input [15:0]
        .xk_im(fft_m_out_data[31:16]),       //input [15:0]
        
        .dv_sq_m(dv_sq_m),     //output
        .xk_sq_m(xk_sq_m)      //output [31:0]
        );
        
    wire [31:0] xk_sq_m_dt;
    wire dv_sq_m_dt;
    energy_detection_module energy_detection_module_inst(
            .clock(sys_clk),       //input
            .reset(~sys_rst_n),       //input
            
            .xk_sq_m(xk_sq_m),     //input [31:0]
            .dv_sq_m(dv_sq_m),     //input
            .xk_sq_m_dt(xk_sq_m_dt),  //output [31:0]
            .dv_sq_m_dt(dv_sq_m_dt)   //output
        );
    
    
//    ila_0 ila_0_inst (
//        .clk(sys_clk), // input wire clk
    
//        .probe0(addr), // input wire [9:0]  probe0  
//        .probe1(dout), // input wire [15:0]  probe1 
//        .probe2(fft_m_out_data[15:0]), // input wire [15:0]  probe2 
//        .probe3(fft_out_data_real_abs[15:0]), // input wire [15:0]  probe3 
//        .probe4(xk_sq_m), // input wire [31:0]  probe4 
//        .probe5(xk_sq_m_dt[31]), // input wire [0:0]  probe5 
//        .probe6(dv_sq_m_dt) // input wire [0:0]  probe6
//    );
    
endmodule
