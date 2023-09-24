`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/24 21:53:05
// Design Name: 
// Module Name: control_unit_ed
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


module control_unit_ed(
    input  clock,
    input  reset, 
    input  empty_fin,
    input  cnt1_tc,
    input  cnt2_tc,
    output pop_fin,
    output sclr_fin,
    output pop_fout,
    output push_fout, 
    output sclr_fout,
    output sclr_ew,
    output ce_ew,
    output add_subn_ew,
    output end_sig,
    output sclr_cnt1,
    output en_cnt1,
    output sclr_cnt2,
    output en_cnt2,
    output sclr_dres,
    output en_dres
);
	
   control_unit_detection cu_detection(
       .clock(clock),
       .reset(reset),
       .empty_fin(empty_fin),
       .cnt1_tc(cnt1_tc),
       .pop_fin(pop_fin),
       .sclr_fin(sclr_fin),
       .push_fout(push_fout),
       .sclr_fout(sclr_fout),
       .sclr_ew(sclr_ew),
       .ce_ew(ce_ew),
       .add_subn_ew(add_subn_ew),
       .end_sig(end_sig),
       .sclr_cnt1(sclr_cnt1),
       .en_cnt1(en_cnt1),
       .sclr_dres(sclr_dres),
       .en_dres(en_dres)
    );
						 

   control_unit_packing cu_packing(
       .clock(clock),
       .reset(reset),
       .end_sig(end_sig),
       .cnt2_tc(cnt2_tc),
       .sclr_cnt2(sclr_cnt2),
       .en_cnt2(en_cnt2),
       .pop_fout(pop_fout)
    );
			
endmodule
