`timescale 1ns / 1ns
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
    input sys_rst_n //1
);
    
    (* dont_touch = "true" *)wire [31:0]fft_m_out_data; 
    (* dont_touch = "true" *)wire fft_m_out_data_tvalid;

    
    (* dont_touch = "true" *)wire [31:0]fft_in_data; //test
    (* dont_touch = "true" *)wire ovflow;

    fft_t fft_t_inst(
        .sys_clk(sys_clk),              //1 input       
        .sys_rst_n(sys_rst_n),               //1 input              
                                            
        .fft_m_out_data(fft_m_out_data),       //[31:0] output
        .fft_m_out_data_tvalid(fft_m_out_data_tvalid),   //1 output
        
        .fft_in_data(fft_in_data),  //[31:0] output test
        .ovflow(ovflow)             //1 output    test
    );
    
    
    //sq_m unit signals
    (* dont_touch = "true" *)wire [15:0] xk_re;
    (* dont_touch = "true" *)wire [15:0] xk_im;
    
    assign xk_re = fft_m_out_data[15:0];
    assign xk_im = fft_m_out_data[31:16];
    
    (* dont_touch = "true" *)wire [31:0] xk_sq_m;
    (* dont_touch = "true" *)wire dv_sq_m;
    
    square_mag square_mag_inst(
        .sys_clk(sys_clk),       //1 input
        .areset(~sys_rst_n),        //1 input
        .dv_fft(fft_m_out_data_tvalid),        //1 input
        .xk_re(xk_re),   //[15:0] input 
        .xk_im(xk_im),   //[15:0] input
        
        .dv_sq_m(dv_sq_m),      //1 output
        .xk_sq_m(xk_sq_m) //[31:0] output
    );
    //ed unit signals
    (* dont_touch = "true" *)wire [31:0] xk_sq_m_dt;
    (* dont_touch = "true" *)wire dv_sq_m_dt;
    
    (* dont_touch = "true" *)wire [31:0]th_value;
    (* dont_touch = "true" *)wire [9:0]window_size;
    
    energy_detection_module energy_detection_module_inst(
        .clock(sys_clk),        //1 input
        .reset(~sys_rst_n),        //1 input
        
        .th_value(th_value),        //32 input
        .window_size(window_size),      //10 input
        
        .xk_sq_m(xk_sq_m),//[31:0] input
        .dv_sq_m(dv_sq_m),      //1 input
        .xk_sq_m_dt(xk_sq_m_dt),//[31:0] output
        .dv_sq_m_dt(dv_sq_m_dt)      //1 output
    );
    
    vio_0 vio_0_inst (
      .clk(sys_clk),                // input wire clk
      .probe_out0(th_value),  // output wire [31 : 0] probe_out0
      .probe_out1(window_size)  // output wire [9 : 0] probe_out1
    );
    
    ila_0 ila_0_inst (
        .clk(sys_clk), // input wire clk
        
        .probe0(fft_m_out_data), // input wire [31:0]  probe0  fft_out_data
        .probe1(xk_re), // input wire [15:0]  probe1 real
        .probe2(xk_im), // input wire [15:0]  probe2 img
        .probe3(xk_sq_m), // input wire [31:0]  probe3  xk_sq_m
        .probe4(xk_sq_m_dt[30:0]), //input wire [30:0] probe4 xk_sq_m_dt
        .probe5(xk_sq_m_dt[31]), // input wire [0:0]  probe5 
        .probe6(fft_in_data), //input wire [31:0] 
        .probe7(dv_sq_m), //input wire [0:0]
        .probe8(ovflow),
        .probe9(dv_sq_m_dt)
    );
    
endmodule
