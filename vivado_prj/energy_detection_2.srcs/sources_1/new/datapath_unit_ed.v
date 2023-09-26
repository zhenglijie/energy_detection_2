`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/24 21:31:41
// Design Name: 
// Module Name: datapath_unit_ed
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

module datapath_unit_ed(
    input 	   clock,
    input [31:0]  xk_sq_m,
    input [31:0]  th_value,
    input [9:0]   window_size, 
    input 	   pop_fin,
    input 	   push_fin,
    input 	   sclr_fin,
    input 	   pop_fout,
    input 	   push_fout, 
    input 	   sclr_fout,
    input 	   sclr_ew,
    input 	   ce_ew,
    input 	   add_subn_ew,
    input 	   end_sig,
    input 	   sclr_cnt1,
    input 	   en_cnt1,
     input 	   sclr_cnt2,
    input 	   en_cnt2,
    input 	   sclr_dres,
    input 	   en_dres, 
    output 	   empty_fin,
    output 	   cnt1_tc,
    output 	   cnt2_tc,
    output [31:0] xk_sq_m_dt
);
    //wire fifo input
    wire [31:0]dout_fin;
    wire full_fin;
    
    //wire fifo output
    wire [31:0] dout_fout;
    wire full_fout;
    wire empty_fout;
    
    //wire Energy Window
    reg [31:0] din_ew;
    wire [31:0] dout_ew;
    
    //wire Detection Result
    wire d_res, d_res_d;
    
    //wire Counter
    wire [9:0] cnt1, cnt2;
    
    assign cnt1_tc = (window_size[0] ~^ cnt1[0]) & 
                     (window_size[2] ~^ cnt1[2]) & 
                     (window_size[3] ~^ cnt1[3]) &
                     (window_size[3] ~^ cnt1[3]) &
                     (window_size[4] ~^ cnt1[4]) &
                     (window_size[5] ~^ cnt1[5]) &
                     (window_size[6] ~^ cnt1[6]) &
                     (window_size[7] ~^ cnt1[7]) &
                     (window_size[8] ~^ cnt1[8]) &
                     (window_size[9] ~^ cnt1[9]);
                     
    assign cnt2_tc = (window_size[0] ~^ cnt2[0]) & 
                     (window_size[2] ~^ cnt2[2]) & 
                     (window_size[3] ~^ cnt2[3]) &
                     (window_size[3] ~^ cnt2[3]) &
                     (window_size[4] ~^ cnt2[4]) &
                     (window_size[5] ~^ cnt2[5]) &
                     (window_size[6] ~^ cnt2[6]) &
                     (window_size[7] ~^ cnt2[7]) &
                     (window_size[8] ~^ cnt2[8]) &
                     (window_size[9] ~^ cnt2[9]);
    
    wire full_0, empty_0;
    wire full_1, empty_1;
    
    fifo fifo_inst_0 (
       .clk(clock),                    // input wire clk
       .srst(sclr_fout),                  // input wire srst
       .din(dout_fin),                    // input wire [31 : 0] din
       .wr_en(push_fout),                // input wire wr_en
       .rd_en(pop_fout),                // input wire rd_en
       .dout(dout_fout),                  // output wire [31 : 0] dout
       .full(full_0),                  // output wire full
       .almost_full(full_fout),    // output wire almost_full
       .empty(empty_0),                // output wire empty
       .almost_empty(empty_fout)  // output wire almost_empty
     );
     
     fifo fifo_inst_1 (
        .clk(clock),                    // input wire clk
        .srst(sclr_fin),                  // input wire srst
        .din(xk_sq_m),                    // input wire [31 : 0] din
        .wr_en(push_fin),                // input wire wr_en
        .rd_en(pop_fin),                // input wire rd_en
        .dout(dout_fin),                  // output wire [31 : 0] dout
        .full(full_1),                  // output wire full
        .almost_full(full_fin),    // output wire almost_full
        .empty(empty_1),                // output wire empty
        .almost_empty(empty_fin)  // output wire almost_empty
      );
      
      accumulator accumulator_inst (
        .B(din_ew),        // input wire [31 : 0] B
        .CLK(clock),    // input wire CLK
        .ADD(add_subn_ew),    // input wire ADD
        .CE(ce_ew),      // input wire CE
        .SCLR(sclr_ew),  // input wire SCLR
        .Q(dout_ew)        // output wire [31 : 0] Q
      );
     
     ffd_en ffd_en_inst(
       .q(d_res),
       .clk(clock),
        .en(en_dres),
       .rst(sclr_dres),
       .d(~dout_ew[31])
      );
      
    always @ (add_subn_ew or dout_fin or th_value) begin:MUX
        case(add_subn_ew)
            1'b0:din_ew <= th_value;
            1'b1:din_ew <= dout_fin; 
        endcase 
    end
    
    assign xk_sq_m_dt = {d_res, dout_fout[30:0]};
    
    counter_mod_10 counter_mod_10_inst_0 (
      .CLK(clock),    // input wire CLK
      .CE(en_cnt1),      // input wire CE
      .SCLR(sclr_cnt1),  // input wire SCLR
      .Q(cnt1)        // output wire [9 : 0] Q
    );
    
    counter_mod_10 counter_mod_10_inst_1 (
      .CLK(clock),    // input wire CLK
      .CE(en_cnt2),      // input wire CE
      .SCLR(sclr_cnt2),  // input wire SCLR
      .Q(cnt2)        // output wire [9 : 0] Q
    );
    
endmodule
