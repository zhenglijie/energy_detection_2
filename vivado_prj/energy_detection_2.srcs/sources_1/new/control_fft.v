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
    output [9:0]addra,
    
    //fft
    output reg fft_s_in_data_tvalid,
    output fft_s_in_data_tlast,
    
    input fft_s_out_data_tready,
    input fft_m_out_data_tlast,
    input fft_m_out_data_tvalid
    );
    
    parameter RESET_STATE = 1, LOAD_RAM_DATA = 2, LOAD_FFT_DATA = 3, FFT_PROCESSING = 4, FFT_FINISH = 5;
    
    reg [3:0]present_state, next_state;
    
    wire [9:0]addrb;
    reg en_counter_a, en_counter_b;
    wire tc_counter_a, tc_counter_b;
    
    always @ (posedge clk, posedge reset) begin
        if (reset)
            present_state <= RESET_STATE;
        else
            present_state <= next_state;
    end
    
    always @ (posedge clk, posedge reset) begin
        case(present_state)
            RESET_STATE: //1
                if (strobe == 1'b1)
                    next_state <= LOAD_RAM_DATA;
                else
                    next_state <= RESET_STATE;
            LOAD_RAM_DATA: //2
                if (tc_counter_a == 1'b1) //ram full
                    next_state <= LOAD_FFT_DATA;
                else
                    next_state <= LOAD_RAM_DATA;
            LOAD_FFT_DATA: //3
                if (tc_counter_b == 1'b1) //fft load data full
                    next_state <= FFT_PROCESSING;
                else
                    next_state <= LOAD_FFT_DATA;
            FFT_PROCESSING: //4
                if (fft_m_out_data_tlast == 1'b1)
                    next_state <= FFT_FINISH;
                else
                    next_state <= FFT_PROCESSING;
            FFT_FINISH: //4
                if (fft_s_out_data_tready == 1'b1 && strobe == 1'b1)
                    next_state <= LOAD_RAM_DATA;
                else
                    next_state <= FFT_FINISH;
            default:next_state <= RESET_STATE;
        endcase
    end
    
    always @ (posedge clk, posedge reset) begin
        case(present_state) 
            RESET_STATE: begin
                en_counter_a <= 1'b0;
                en_counter_b <= 1'b0;  
                fft_s_in_data_tvalid <= 1'b0;
            end
            LOAD_RAM_DATA: begin
                en_counter_a <= 1'b1;
                ram_wr_en <= 1'b1; //begin read
            end
            LOAD_FFT_DATA: begin
                fft_s_in_data_tvalid <= 1'b1;
                en_counter_b <= 1'b1;
            end
            //FFT_PROCESSING: begin
                
            //end
            //FFT_FINISH: begin
                
            //end
        endcase
    end

    counter_mod_10 counter_mod_10_inst_0 (
      .CLK(clk),    // input wire CLK
      .CE(en_counter_a),      // input wire CE
      .SCLR(reset),  // input wire SCLR
      .Q(addra)        // output wire [9 : 0] Q
    );
    
    counter_mod_10 counter_mod_10_inst_1 (
      .CLK(clk),    // input wire CLK
      .CE(en_counter_b),      // input wire CE
      .SCLR(reset),  // input wire SCLR
      .Q(addrb)        // output wire [9 : 0] Q
    );
    
    assign tc_counter_a = addra[0] & addra[1] & addra[2] & addra[3] & addra[4] & addra[5] & addra[6] & addra[7] & addra[8] & addra[9];
    assign tc_counter_b = addrb[0] & addrb[1] & addrb[2] & addrb[3] & addrb[4] & addrb[5] & addrb[6] & addrb[7] & addrb[8] & addrb[9];
    assign fft_s_in_data_tlast = addrb[0] & addrb[1] & addrb[2] & addrb[3] & addrb[4] & addrb[5] & addrb[6] & addrb[7] & addrb[8] & addrb[9];
    
endmodule
