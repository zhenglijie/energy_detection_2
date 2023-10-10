`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/15 16:37:43
// Design Name: 
// Module Name: control_fft
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


module control_fft(
    input clk,
    input reset,
    input strobe,
    
    //control ram
    output reg ram_wr_en,
    output [9:0]addr,
    
    //fft
    output reg fft_s_in_data_tvalid,
    output fft_s_in_data_tlast,
    
    input fft_s_out_data_tready,
    input fft_m_out_data_tlast,
    input fft_m_out_data_tvalid
    );
    
    parameter RESET_STATE = 1, LOAD_FFT_DATA = 2, FFT_PROCESSING = 3, FFT_FINISH = 4;
    
    reg [3:0]present_state, next_state;
    
    reg en_counter;
    wire tc_counter;
    
    always @ (posedge clk, posedge reset) begin
        if (reset)
            present_state <= RESET_STATE;
        else
            present_state <= next_state;
    end
    
    always @ (*) begin
        case(present_state)
            RESET_STATE: //1
                if (strobe == 1'b1)
                    next_state <= LOAD_FFT_DATA;
                else
                    next_state <= RESET_STATE;
            LOAD_FFT_DATA: //2
                if (tc_counter == 1'b1) //fft load data full
                    next_state <= FFT_PROCESSING;
            FFT_PROCESSING: //3
                if (fft_m_out_data_tlast == 1'b1)
                    next_state <= FFT_FINISH;
            FFT_FINISH: //4
                if (strobe == 1'b1 && fft_s_out_data_tready == 1'b1)
                    next_state <= LOAD_FFT_DATA;
            default:next_state <= RESET_STATE;
        endcase
    end
    
    always @ (present_state) begin
//        fft_s_in_data_tvalid <= 1'b0;
//        en_counter <= 1'b0;
//        ram_wr_en <= 1'b0;
        case(present_state) 
            RESET_STATE: begin //1
                fft_s_in_data_tvalid <= 1'b0;
                en_counter <= 1'b0;
                ram_wr_en <= 1'b0;
            end
            LOAD_FFT_DATA: begin //2
                fft_s_in_data_tvalid <= 1'b1;
                en_counter <= 1'b1;
                ram_wr_en <= 1'b1;
            end
            FFT_PROCESSING: begin //3
                fft_s_in_data_tvalid <= 1'b1;
                en_counter <= 1'b1;
                ram_wr_en <= 1'b1;
            end
            FFT_FINISH: begin //4
                fft_s_in_data_tvalid <= 1'b0;
                en_counter <= 1'b1;
                ram_wr_en <= 1'b1;
            end
        endcase
    end

    counter_mod_10 counter_mod_10_inst(
      .CLK(clk),    // input wire CLK
      .CE(en_counter),      // input wire CE
      .SCLR(reset),  // input wire SCLR
      .Q(addr)        // output wire [9 : 0] Q
    );
    
    assign tc_counter = addr[0] & addr[1] & addr[2] & addr[3] & addr[4] & addr[5] & addr[6] & addr[7] & addr[8] & addr[9];
    assign fft_s_in_data_tlast = addr[0] & addr[1] & addr[2] & addr[3] & addr[4] & addr[5] & addr[6] & addr[7] & addr[8] & addr[9];
    
endmodule
