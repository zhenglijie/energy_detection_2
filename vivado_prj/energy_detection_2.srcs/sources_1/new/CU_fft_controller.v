`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 10:05:14
// Design Name: 
// Module Name: CU_fft_controller
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


module CU_fft_controller(
    input clock,
    input reset,
    input ready,
    input dv_fft_core,
    input tc_counter,
    input ready_recv_config,
    output reg sclr_fft_core,
    //output reg scale_sch_we_fft_core,
    output reg start_fft_core,
    output reg unload_fft_core,
    output reg en_counter,
    output reg sclr_counter
    );
    
    initial sclr_fft_core = 1'b0;
    
    (* dont_touch = "true" *)reg [6:0] present_state, next_state;
    
    //state definition
    parameter RESET_STATE = 3'b000, START_FFT = 3'b001, LOAD_FFT = 3'b010;
    parameter WAITING_PROCESSING = 3'b011, UNLOAD_EN = 3'b100, WAITING_DV = 3'b101, UNLOAD = 3'b110;
    parameter SET_SCALING = 3'b111;
    
    //present_state update
    always @ (posedge reset, posedge clock) begin
        if (reset == 1) 
            present_state <= RESET_STATE;
        else    
            present_state <= next_state;
    end
    
    //next_state update
    always @ (*) begin
        case (present_state)
            RESET_STATE: //0
                next_state = SET_SCALING;
//                if (ready_recv_config == 1'b1)
//                    next_state = SET_SCALING;
//                else
//                    next_state = RESET_STATE;
            SET_SCALING: //7
                if (ready == 1'b1)
                    next_state = START_FFT;
                else
                    next_state = SET_SCALING;
            START_FFT://1
                next_state = LOAD_FFT;
            LOAD_FFT://2
                if (tc_counter == 1'b1)
                    next_state = WAITING_PROCESSING;
                else
                    next_state = LOAD_FFT;
            WAITING_PROCESSING: //3
                if (dv_fft_core == 1'b1)
                    next_state = UNLOAD;
                else
                    next_state = WAITING_PROCESSING;
            UNLOAD: //6
                if (dv_fft_core == 1'b0)
                    if (ready == 1)
                        next_state = START_FFT;
                    else
                        next_state = SET_SCALING;
                else
                    next_state = UNLOAD;
                    
            default: next_state = RESET_STATE;
        endcase
    end
    
    //output generation
    always @ (posedge clock) begin // :present_state
        sclr_fft_core <= 1;
        start_fft_core <= 0; 
        unload_fft_core <= 0;
        en_counter <= 0;
        sclr_counter <= 0;
        //scale_sch_we_fft_core = 0;
        
        case(next_state) //:present_state
            RESET_STATE:begin
                sclr_counter <= 1'b1;
                sclr_fft_core <= 1'b0;
            end
            
            SET_SCALING: begin
                //scale_sch_we_fft_core = 1'b1;
            end
            
            START_FFT:begin
                start_fft_core <= 1'b1;
                en_counter <= 1'b1;
            end
            
            LOAD_FFT: begin
                start_fft_core <= 1'b1;
                en_counter <= 1'b1;
            end
            UNLOAD: begin
                unload_fft_core <= 1'b1;
            end
        endcase
    end
    
    
endmodule
