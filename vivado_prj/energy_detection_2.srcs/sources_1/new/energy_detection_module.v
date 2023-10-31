`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/24 20:57:16
// Design Name: 
// Module Name: energy_detection_module
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


module energy_detection_module(
    input clock,
    input reset,
    
    input [31:0]xk_sq_m,
    input dv_sq_m,
    output [31:0]xk_sq_m_dt,
    output dv_sq_m_dt
);

    (* dont_touch = "true" *) wire [31:0] th_value;
    (* dont_touch = "true" *) wire [9:0] window_size; 
    (* dont_touch = "true" *) wire pop_fin;
    (* dont_touch = "true" *) wire sclr_fin;
    (* dont_touch = "true" *) wire pop_fout;
    (* dont_touch = "true" *) wire push_fout;
    (* dont_touch = "true" *) wire sclr_fout;
    (* dont_touch = "true" *) wire sclr_ew;
    (* dont_touch = "true" *) wire ce_ew;
    (* dont_touch = "true" *) wire add_subn_ew;
    (* dont_touch = "true" *) wire end_sig;
    (* dont_touch = "true" *) wire sclr_cnt1;
    (* dont_touch = "true" *) wire en_cnt1;
    (* dont_touch = "true" *) wire sclr_cnt2;
    (* dont_touch = "true" *) wire en_cnt2;
    (* dont_touch = "true" *) wire sclr_dres;
    (* dont_touch = "true" *) wire en_dres;
    (* dont_touch = "true" *) wire empty_fin;
    (* dont_touch = "true" *) wire cnt1_tc;
    (* dont_touch = "true" *) wire cnt2_tc;
    
    assign window_size = 10'd2;
    assign th_value = 32'd120;
    
    control_unit_ed control_unit_ed_inst(
       .clock(clock),
       .reset(reset), 
       .empty_fin(empty_fin),
       .cnt1_tc(cnt1_tc),
       .cnt2_tc(cnt2_tc),
       .pop_fin(pop_fin),
       .sclr_fin(sclr_fin),
       .pop_fout(pop_fout),
       .push_fout(push_fout), 
       .sclr_fout(sclr_fout),
       .sclr_ew(sclr_ew),
       .ce_ew(ce_ew),
       .add_subn_ew(add_subn_ew),
       .end_sig(end_sig),
       .sclr_cnt1(sclr_cnt1),
       .en_cnt1(en_cnt1),
       .sclr_cnt2(sclr_cnt2),
       .en_cnt2(en_cnt2),
       .sclr_dres(sclr_dres),
       .en_dres(en_dres)
    );
    
    datapath_unit_ed datapath_unit_ed_inst(
        .clock(clock),
        .xk_sq_m(xk_sq_m),
        .th_value(th_value),
        .window_size(window_size),
        .pop_fin(pop_fin),
        .push_fin(dv_sq_m),
        .sclr_fin(sclr_fin),
        .pop_fout(pop_fout),
        .push_fout(push_fout), 
        .sclr_fout(sclr_fout),
        .sclr_ew(sclr_ew),
        .ce_ew(ce_ew),
        .add_subn_ew(add_subn_ew),
        .end_sig(end_sig),
        .sclr_cnt1(sclr_cnt1),
        .en_cnt1(en_cnt1),
        .sclr_cnt2(sclr_cnt2),
        .en_cnt2(en_cnt2),
        .sclr_dres(sclr_dres),
        .en_dres(en_dres),        
        .empty_fin(empty_fin),
        .cnt1_tc(cnt1_tc),
        .cnt2_tc(cnt2_tc),
        .xk_sq_m_dt(xk_sq_m_dt)
    );
    
    ffd ffd_inst( //dv_sq_m_dt_delayed 
     .clock((clock)),
     .reset(reset),
     .d(pop_fout),
     .q(dv_sq_m_dt)
    );
    
endmodule
