// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Sep 24 14:06:44 2023
// Host        : LAPTOP-UV5HGDQN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/vivado_prj/energy_detection_2.srcs/sources_1/ip/accumulator/accumulator_sim_netlist.v
// Design      : accumulator
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "accumulator,c_accum_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module accumulator
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
  accumulator_c_accum_v12_0_11 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_accum_v12_0_11" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module accumulator_c_accum_v12_0_11
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
  accumulator_c_accum_v12_0_11_viv i_synth
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
GnKPBZB400HwcmHelhorWGVnjBFquRh1kMEEuFtzvIIb9GtaMj9dQG9wtFWN/EDT0yLEtn0MgOZJ
monrKTWBUiowMi7fKoV1QGtHG1i91yi/ETQS9xSpQCksLd7eQWtiXaKJUE0zcQ0hgh9jw4qxWGry
DGu5C0AfK5NhBDdGrADkel75mg6D/yAL7QnoVoJhgu+Se/EIQ/lFD5mckA7pDNjO1oCVoqnk5ENg
Vxj824S6dGhPw3O3rjqc9+K3IC/zT+olMeWd36pFQBVtgQQk/YqPYYSM4D+51imW8InkZFbtDOke
h+PqZT02hDDSNHTP1BBksb2XAmidIWhqPg1Oiw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HkqP9zHTh5cHd1cDHAP+UTVyqg4J7quoT3cIrp0xrM0qcEZbRfZgcwQILXT6c0RmAq98nQrF6l3u
32UmZd1slNzA+lg1lPKrBnLi/dwE1odpk9uQ3PphcgJ8WLpmp55EQQxr9MdE4pm7UlOAlwqWkJ9+
/Lhu127lf0/TCpLaDjz7yhGgotR1Klr0fcVS9bQG0RHvL2gkLpLQvNKprmolhDP4XcexdEX98qM2
Ut+8pDyYyJEtSjt0aKmR9RpTrpOrzT5EsxrkPdSqpXVSYPdYWT53kqw7zPsLYzybl+TvQEzSydvs
vmv16Fd89DV5DKQHcSH4QEc3QcASY3l4XbbMkQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11264)
`pragma protect data_block
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
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
