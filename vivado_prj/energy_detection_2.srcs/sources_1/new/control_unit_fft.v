`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 21:15:53
// Design Name: 
// Module Name: control_unit_fft
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


module control_unit_fft(
    input clock,    //input
    input reset,    //input
    input ready,    //input
    input dv_fft_core,  //input
    input ready_recv_config,    //input
    
    output sclr_fft_core,
    output [9:0]addra,      //output [9:0]
    //output scale_sch_we_fft_core,   //output
    output start_fft_core,          //output
    output unload_fft_core          //output
    );
    
    (* dont_touch = "true" *) wire tc_counter, en_counter, sclr_counter;
    
    CU_fft_controller CU_fft_controller_inst(
        .clock(clock),  //input
        .reset(reset),  //input
        .ready(ready),  //input
        .dv_fft_core(dv_fft_core),  //input
        .tc_counter(tc_counter),    //input
        .ready_recv_config(ready_recv_config), //input
        
        .sclr_fft_core(sclr_fft_core),  //output
       // .scale_sch_we_fft_core(scale_sch_we_fft_core),  //output
        
        .start_fft_core(start_fft_core),    //output
        .unload_fft_core(unload_fft_core), //output
        .en_counter(en_counter), //output
        .sclr_counter(sclr_counter) //output
    );
    
    datapath_fft_controller datapath_fft_controller_inst(
        .clock(clock), //input
        .sclr_counter(sclr_counter), //input
        .en_counter(en_counter),  //input
        .tc_counter(tc_counter),  //output
        .addra(addra)         //output
    );
    
endmodule
