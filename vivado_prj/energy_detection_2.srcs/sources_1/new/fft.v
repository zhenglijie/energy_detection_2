`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/13 09:23:15
// Design Name: 
// Module Name: fft
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


module fft(
    input sys_clk,
    input areset,
    input strobe,
    
    input [31:0]ram_in_data,
    output [31:0]fft_m_out_data,
    output [15:0]fft_out_data_real_abs,
    output fft_m_out_data_tvalid,
    output fft_m_out_data_tlast
    );
    
    //ram signals
    wire wea;
    wire [9:0] addra;
    wire [31:0] ram_out_data;

    ram ram_inst_0 (
      .clka(sys_clk),    // input wire clka
      .wea(wea),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [3 : 0] addra
      .dina(ram_in_data),    // input wire [31 : 0] dina
      .douta(ram_out_data)  // output wire [31 : 0] douta
    );
    
    //fft signals
    wire [10:0]s_axis_config_tdata;
    //assign s_axis_config_tdata = 15'b0000_01_10_00_11_10_1;
    assign s_axis_config_tdata = 15'b0000_00_00_00_00_00_1;
    
    wire s_axis_config_tready;
    //wire [31:0] fft_s_in_data;
    wire fft_s_in_data_tvalid;
    wire fft_s_out_data_tready;
    wire fft_s_in_data_tlast;
    
    wire fft_m_out_data_tready;
    
    wire event_frame_started;
    wire event_tlast_unexpected;
    wire event_tlast_missing;
    wire event_status_channel_halt;
    wire event_data_in_channel_halt;
    wire event_data_out_channel_halt;
    wire event_fft_overflow;
    
    assign fft_m_out_data_tready = 1'b1;
    
    wire [15:0]fft_in_data_real;
    assign fft_in_data_real = ram_out_data[15:0];
    
    wire [15:0]fft_out_data_real;
    assign fft_out_data_real = fft_m_out_data[15:0];
    
    assign fft_out_data_real_abs = fft_m_out_data[15] ? (-fft_m_out_data[15:0]) : fft_m_out_data[15:0];
    
    
    xfft_0 xfft_0_inst (
      .aclk(sys_clk),                                                // input wire aclk
      .aresetn(~areset),                                          // input wire aresetn
      .s_axis_config_tdata(s_axis_config_tdata),                  // input wire [23 : 0] s_axis_config_tdata
      .s_axis_config_tvalid(1'b1),                // input wire s_axis_config_tvalid
      .s_axis_config_tready(s_axis_config_tready),                // output wire s_axis_config_tready
      
      .s_axis_data_tdata(ram_out_data),                      // input wire [31 : 0] s_axis_data_tdata
      .s_axis_data_tvalid(fft_s_in_data_tvalid),                    // input wire s_axis_data_tvalid
      .s_axis_data_tready(fft_s_out_data_tready),                    // output wire s_axis_data_tready
      .s_axis_data_tlast(fft_s_in_data_tlast),                      // input wire s_axis_data_tlast
      
      .m_axis_data_tdata(fft_m_out_data),                      // output wire [31 : 0] m_axis_data_tdata
      .m_axis_data_tvalid(fft_m_out_data_tvalid),                    // output wire m_axis_data_tvalid
      .m_axis_data_tready(fft_m_out_data_tready),                    // input wire m_axis_data_tready
      .m_axis_data_tlast(fft_m_out_data_tlast),                      // output wire m_axis_data_tlast
      
      .event_frame_started(event_frame_started),                  // output wire event_frame_started
      .event_tlast_unexpected(event_tlast_unexpected),            // output wire event_tlast_unexpected
      .event_tlast_missing(event_tlast_missing),                  // output wire event_tlast_missing
      .event_fft_overflow(event_fft_overflow),                      // output wire event_fft_overflow
      .event_status_channel_halt(event_status_channel_halt),      // output wire event_status_channel_halt
      .event_data_in_channel_halt(event_data_in_channel_halt),    // output wire event_data_in_channel_halt
      .event_data_out_channel_halt(event_data_out_channel_halt)  // output wire event_data_out_channel_halt
    );
    
    control_fft control_fft_inst(
        .clk(sys_clk),
        .reset(areset),
        .strobe(strobe), 
        
        //control ram
        .ram_wr_en(wea),
        .addra(addra),
        
        //fft
        .fft_s_in_data_tvalid(fft_s_in_data_tvalid),
        .fft_s_in_data_tlast(fft_s_in_data_tlast),
        .fft_s_out_data_tready(fft_s_out_data_tready),
        
        .fft_m_out_data_tlast(fft_m_out_data_tlast),
        .fft_m_out_data_tvalid(fft_m_out_data_tvalid)
        );

endmodule
