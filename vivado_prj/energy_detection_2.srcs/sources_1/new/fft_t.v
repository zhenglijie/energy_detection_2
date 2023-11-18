`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 20:35:31
// Design Name: 
// Module Name: FFT
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


module fft_t(
    input sys_clk,
    input sys_rst_n,
    
    output [31:0]fft_m_out_data,       
    output fft_m_out_data_tvalid,
    
    output [31:0]fft_in_data, //test
    output  ovflow //test
    );
    
    (* dont_touch = "true" *)reg ready;
    (* dont_touch = "true" *)wire [31:0]douta;
    (* dont_touch = "true" *)wire [9:0]addra;
    (* dont_touch = "true" *)wire rsta_busy;
    
    assign fft_in_data = douta;//test
    
    rom_32x1024 rom_32x1024_inst (
      .clka(sys_clk),            // input wire clka
      .rsta(~sys_rst_n),            // input wire rsta
      .addra(addra),          // input wire [9 : 0] addra
      .douta(douta),          // output wire [31 : 0] douta
      .rsta_busy(rsta_busy)  // output wire rsta_busy
    );
    
    (* dont_touch = "true" *) reg last_in, ok;
    
    initial ready = 1'b0;
    
    always @ (posedge sys_clk) begin
        last_in <= rsta_busy;
        ok <= last_in & (~rsta_busy);
        if (ok == 1'b1)
            ready <= 1'b1;
        else
            ready <= ready;
    end
    
    //assign ready = ~rsta_busy;
    
    (* dont_touch = "true" *) wire [15:0]s_axis_config_tdata;
     
    //assign s_axis_config_tdata = 16'b00000_01_10_00_11_10_1;
    assign s_axis_config_tdata = 16'b00000_00_00_00_00_00_0;
    
    (* dont_touch = "true" *) wire m_axis_data_tvalid;
    
    (* dont_touch = "true" *) wire s_axis_config_tvalid;
    
    assign s_axis_config_tvalid = 1'b1;
    
    (* dont_touch = "true" *) wire s_axis_data_tvalid;
    
    (* dont_touch = "true" *) wire unload_fft_core;
    
    (* dont_touch = "true" *) wire s_axis_config_tready;
    (* dont_touch = "true" *) wire s_axis_data_tready;
    (* dont_touch = "true" *) wire s_axis_data_tlast;
    assign s_axis_data_tlast = (addra == 10'd1023);
    
    (* dont_touch = "true" *) wire [31:0]m_axis_data_tdata;
    
    (* dont_touch = "true" *) wire [15:0]fft_in_data_real;
    (* dont_touch = "true" *) wire [15:0]fft_out_data_real;
    (* dont_touch = "true" *) wire [15:0]fft_out_data_real_abs;
    (* dont_touch = "true" *) wire [15:0]fft_out_data_imag_abs;
    (* dont_touch = "true" *) wire [31:0]fft_out_data_abs;
    
    assign fft_in_data_real = douta[15:0];
    assign fft_out_data_real = m_axis_data_tdata[15:0];
    assign fft_out_data_real_abs = m_axis_data_tdata[15] ? (-m_axis_data_tdata[15:0]) : m_axis_data_tdata[15:0];
    assign fft_out_data_imag_abs = m_axis_data_tdata[31] ? (-m_axis_data_tdata[31:16]) : m_axis_data_tdata[31:16];
    assign fft_out_data_abs = fft_out_data_real_abs + fft_out_data_imag_abs;
    
    assign fft_m_out_data = m_axis_data_tdata;
    assign fft_m_out_data_tvalid = m_axis_data_tvalid; 
    
    (* dont_touch = "true" *) wire m_axis_data_tlast;
    (* dont_touch = "true" *) wire m_axis_status_tvalid;
    (* dont_touch = "true" *) wire [7:0]m_axis_status_tdata;
    (* dont_touch = "true" *) wire [23:0]m_axis_data_tuser;
    (* dont_touch = "true" *) wire overflow;
    assign overflow = m_axis_data_tuser[16];
    (* dont_touch = "true" *) wire [9:0]xk_index;
    assign xk_index = m_axis_data_tuser[9:0];
    (* dont_touch = "true" *) wire event_frame_started;
    (* dont_touch = "true" *) wire event_tlast_unexpected;
    (* dont_touch = "true" *) wire event_tlast_missing;
    (* dont_touch = "true" *) wire event_fft_overflow;
    (* dont_touch = "true" *) wire event_status_channel_halt;
    (* dont_touch = "true" *) wire event_data_in_channel_halt;
    (* dont_touch = "true" *) wire event_data_out_channel_halt;
    
    (* dont_touch = "true" *) wire sclr_fft_core;
    
    assign ovflow = event_fft_overflow; //test
    
    xfft_0 xfft_0_inst (
      .aclk(sys_clk),                                                // input wire aclk
      .aresetn(sclr_fft_core),                                          // input wire aresetn
      .s_axis_config_tdata(s_axis_config_tdata),                  // input wire [15 : 0] s_axis_config_tdata
      .s_axis_config_tvalid(s_axis_config_tvalid),                // input wire s_axis_config_tvalid
      .s_axis_config_tready(s_axis_config_tready),                // output wire s_axis_config_tready
      .s_axis_data_tdata(douta),                      // input wire [31 : 0] s_axis_data_tdata
      .s_axis_data_tvalid(s_axis_data_tvalid),                    // input wire s_axis_data_tvalid
      .s_axis_data_tready(s_axis_data_tready),                    // output wire s_axis_data_tready
      .s_axis_data_tlast(s_axis_data_tlast),                      // input wire s_axis_data_tlast
      .m_axis_data_tdata(m_axis_data_tdata),                      // output wire [31 : 0] m_axis_data_tdata
      .m_axis_data_tuser(m_axis_data_tuser),                      // output wire [23 : 0] m_axis_data_tuser
      .m_axis_data_tvalid(m_axis_data_tvalid),                    // output wire m_axis_data_tvalid
      .m_axis_data_tready(unload_fft_core),                    // input wire m_axis_data_tready
      .m_axis_data_tlast(m_axis_data_tlast),                      // output wire m_axis_data_tlast
      .m_axis_status_tdata(m_axis_status_tdata),                  // output wire [7 : 0] m_axis_status_tdata
      .m_axis_status_tvalid(m_axis_status_tvalid),                // output wire m_axis_status_tvalid
      .m_axis_status_tready(unload_fft_core),                // input wire m_axis_status_tready
      .event_frame_started(event_frame_started),                  // output wire event_frame_started
      .event_tlast_unexpected(event_tlast_unexpected),            // output wire event_tlast_unexpected
      .event_tlast_missing(event_tlast_missing),                  // output wire event_tlast_missing
      .event_fft_overflow(event_fft_overflow),                    // output wire event_fft_overflow
      .event_status_channel_halt(event_status_channel_halt),      // output wire event_status_channel_halt
      .event_data_in_channel_halt(event_data_in_channel_halt),    // output wire event_data_in_channel_halt
      .event_data_out_channel_halt(event_data_out_channel_halt)  // output wire event_data_out_channel_halt
    );
    
    control_unit_fft control_unit_fft_inst(
        .clock(sys_clk),
        .reset(~sys_rst_n),
        
        .ready(ready),
        .addra(addra),
        .sclr_fft_core(sclr_fft_core),
        .dv_fft_core(m_axis_data_tvalid),
        //.scale_sch_we_fft_core(s_axis_config_tvalid),
        .start_fft_core(s_axis_data_tvalid),
        .unload_fft_core(unload_fft_core),
        .ready_recv_config(s_axis_config_tready)
    );  
    
    
    
endmodule
