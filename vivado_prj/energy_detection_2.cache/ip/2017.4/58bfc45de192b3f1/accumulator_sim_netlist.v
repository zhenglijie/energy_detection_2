// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Sep 24 14:06:43 2023
// Host        : LAPTOP-UV5HGDQN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ accumulator_sim_netlist.v
// Design      : accumulator
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "accumulator,c_accum_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (B,
    CLK,
    ADD,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [31:0]Q;

  wire ADD;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_11 U0
       (.ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_OUT_WIDTH = "32" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_11
   (B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [31:0]Q;

  wire ADD;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_11_viv i_synth
       (.ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
Ugc6FdWL7POZ70z2gd/vtc5vUTk7nmnOc6x6GMUCdUwoDFdT8WnSzjKh5I0Y0m1vniIz2Yp2cAqh
OaEqpXGrhg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FXqM4O8QPotfIimM02hA4j5hZMdmS37+swJBqH+5CsUC4DNKFqjNL9rIKRWsqluRTZsRa8MDaMQ9
jPvlt46L73TR6jBrlzkW28QBwiXeSsIHfXdvFVRQLMopGVaARQ1EGd9/c3iyjwiByAhW1Jt8FinD
dh5clra/xBz77UXR7tE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g34KQoxuMCd6/UoXGNq1LUw6fACbLJJnWrv+t58R3f0TLzJqS0A/IOV3Ebjdnvg47tFGL0h6wEgk
KkJ8kgWctgN3gtX3NaEq0Toar+sxaw/4PPZrhJbqNrlYzpbn41rhMGt4N8P8flFmXPBnlNDzxaiK
CXCLCtRLBsAS6lTX+M7p5jRs/PxImqwJpXL3sWTQ9/FgY5wwqlMcCzAvD75kTe3CBE3nFu/SSpaZ
jzfpkW/4SpbNqu8flTVbEcex8K/HDAhBdWlBU4tdC1lT4rocPLBCSn24Lr3+Zp16EQgWHu3vbK1O
m6RZFhalcb7cRImMxHmCni7Sit3hqjaHYGNssQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nO6jnd8pbwJfbbg2+95ZO3AVri39Vy7rD5lRj+3/lF84CltWRbtzoUtbhj3ZgpBdioYvcTxGv/i2
8YtJgJDwQkGZm+ewN8eDJrDJvY+jZ3PKD/htPOdIHeirYWvRwzGTlgF9WUelbmOk76/wSMi/zAto
bqrhQOz8dzZ7WRcvgTeX7CXsbfpe6ADgQnVEVq+tb9hzIRP4B0RPAKwN2Tex3z0Mep3oNKQ0SoH8
tBG/IyDtGGYDOgGnnp0kR5vQAW7w4W2OZjMhWVsz2apb1N1PxUQQjRGrB0x4h6RZ2L5Ve9lhM+3U
RqXJ6/P/7ZuTQXiH1fGJhNMUdenwcOfDrZasDA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tUFKsnj0fNStBFWGXviiqLpQAWEhJPNc+y2N668WT4AjUiD6Cfi3MsIoPl3iITeV1NQi+iTF90tk
vvE8RodWQhtaS/b8F+twGWhoCwkNr+s4e9c/uUJjjbM9Gr24C4ej4KKhxPhFNYBy6/eZ3LGaznr6
HLUk5fx8JOSShEoonUHK/qvSZouWlhqK6AzvdFo2fkRAzJHMgFAorMWrkBD55mXFs4t912alyDl/
DfNi0s5x2c+pKbcHCYZNbNjIi4aZsTaqxURHXQRM4slSn1719zZ1oZKGWLz8FM7ZNj+5bqSLWZ3T
iEqvWCzWzhrwP10FIfcytMXWL6XN62+quaWveg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GD7wPrCfjGn4OXkOOgEMsooysuGTy7fuf/t6s6ed8hI6eVO1wiRiTUr8T6TOFMUPz25Fe3+AjAsj
7GJP9S+ylHE9/t8ljSrYjm+tr2qp0pItUQHlfnzD1HDFjcU2GQx71hUggRP7HSTXoX0ZBtdMxJsx
y5wU7l8PME4Z6+rFfWg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GQnnfXcKvfJGHibasZeBo9w+cQuQQMi0GLH3uU5kRl81aYoMeX41ttSWKNlAw2smlufudIVWIqr4
1XDM2abRB//KO5mDmKgYJIg/tf9731+Bdr1rCZs9mQF4PIroKcKqQa74O8/Yf0vQN0bHupu7hLbR
dvYSfOCD+cuomPjkVm7OlHAeJENPiNxOo8qROXxOi11ob8PnO+tzX4HuTSNWvZM4owOCdeV+bfJu
P4INquk12odtGIE2qfP62zVbUOWXx/QWHOiIBcwofde7bjvBW8FaJHBlvGXfqWCbzuAJnK5HQnoa
ghV+DzALxr2evIF+0yjPKB26Due69DJlFy4fEg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nNs3frE9LbbRd1nDjwgS7Ifpuh5a+3rqYBg0QS4LaOPlFdo41fdMxjiR7GDHl7rZ2WEZyNkOnTcE
0jdK8fhp0XAqHK2TaN6tsZMtnog/URXCdrOQFaAUawVuOOrBBvEIjGz97WLvX5pqo8iwqYCg3pPj
rs10tit3ZugbHW6iMKWddtLPTWkutdKMxxhibsfSS+X0RhU7Sw/9s/zUmUfau1Ui0IsO9vdEdvz/
OcQAt+2iR5dxes/TZ8v/XjCRrU4s2N5tZrj94zivuue9/BcydWwn1+N/7JggSJUc4TpgInpD6V6A
W2g5/G5xS6FyEkiCO9hz66ynMe03211c+2JjtA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2QuWIkEA1Me+TVQCU3zUmSFNaqXrFMpnf76Ngd1i+Onl1wmUhL0pn9yT0pchb1N31QXRPS8W2h3N
D+S62vuZMXMGRaTlji6+HpRI1iEcHdF1EkSqRnSWP7BeRsmJBmTBM4SCLUwoPe00vtllxahyWDKo
l/JrzM5iPrB2rSlYBSCPIfiQGjZg+Jn6gOYdQ+e09TSTK3+S3GXW7vVLF4ArMOGFasio4b3fmQXK
CrZD2TCq36OK8kZ9Sl13SlHISlahUtH2vhdGgDU3rYj/8LGJT1kT9H9FRzPolXCw5EwEpl7rc1q0
HNYZixrujLvgj7B815A25HIEHdnOZdOMJWwy6w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11296)
`pragma protect data_block
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
Ntyg272S3aPELg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
