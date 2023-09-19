// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Sep 15 14:12:35 2023
// Host        : LAPTOP-UV5HGDQN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ counter_mod_10_sim_netlist.v
// Design      : counter_mod_10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "counter_mod_10,c_counter_binary_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [9:0]Q;

  wire CE;
  wire CLK;
  wire [9:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "10" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_11 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "10" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_11
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [9:0]L;
  output THRESH0;
  output [9:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [9:0]L;
  wire [9:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "10" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_11_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
UHFVmasyKjfj4+E5+UDdB3HKx5S3H7gGcnqkv58O0IwulMQp8DxFI/AvlAk6XXDGZ4aJ1xJmgdUH
IEKZdbCe1w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ODBk4L+OGRxw3kGQUsEN1FXYr7mSzBu96qQm/eCuXSchvsRPbbKT7Serptxfyt2C2HrO1BR5Z+jR
zJXTi+ESycU+otYp9HKQ4CctpDX+h3qjmnJrY+nhTeh/xjmfgFzjTN3WKcCuBPJRYHCfWuWSuOtk
Tdg2BJslzA5zI/K8GVI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0gWw3Rx9zEiRxrwGX8MD7rg+ULH7DamiPudssxMZaMvyZj2oDnXYWAavRDlg7m2FHJsBwStLqP1k
Bl5XNG3Y0lS+xVpabXZFQiu8Z8z3oRC/B0uNzWruCjLQe0KlUO58UW8cABOs01Fq+Mm9nJVAJuQs
F2qb1a0+xijGR7/TDcf6kWEgSeGA1ZjbV8qPBEJhxgxSaGNDrZq1kbdM5ZrApF2MYgzOXPWP6UmM
jf1Rmm20lpupkEG5gSHDlvLLrtoPlWNfzKZZfSKETVmMnlAiSZUYfVD3wWhnNluuThLA4nKa5jlh
x5x/T6Jkz7feo3m0lLLGTbIlGICsLPnk0Hx71w==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rQgzRzbhWQ0Al1I538gFaU5J7VlQlYwUjq7kN7u5aORPPTM/J7ycEm8OiVyVEkaqoKxXBXk/xcrS
wv7kvgjfOCpjHTPYsIz4LrawwiIzoRX1ong4m+SR47hJCx43t/6qBUoBECW2k6RczNfHPnz7l7Nq
sOakiiau0sFN/Zq7CREQOrDH3iIrqD7/IdGpzyeagXpuV3emZ//XgG8VsWZG1evTvVZcoOzf+6mN
hvwFd83qYr2dYgCjpE/gRIiPJ838fB/naP8Rp27imJdmQCYtsZ1bmTUE+KB4i+y+scmCS+ovEH7+
5zl0brwm/GfoXVvbw+U2hgtqeY5ZdRPSgBP1wQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Eu94DibK9Kjrew0fk70C/fpOG7fCHMVQCfIIsuaTMCkg3w4G+5DmX6+w+8ljzIQwbx9nlzoGrY3S
1bhubRvwzJ6Eeq8xl2GAY/f5O1K0XtaVOx1x1F6sbyxLUImWljgecHlMqjEG2O5U/eGrpDR5uLHJ
D1Sl3TWr/a5PU+nwgw2SJmsivpoA/sjauJBlgIePyyxYh0FRPdZl1fJ63QZG1TvR7Cg2dV0dtsq3
5EG7dmHCmW84iFSD9Hg4jSwgrvQUKRNuDmLsuuLKeJTIItN+oSeVSdssJie0f9cJ6xQ8UmBdPker
26gD2pANhQdFkIRh/ewqXzHh5+FDE1H5pwTacA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jAA+brDtvuqO7ngFkWJQCODLdmzbDGVSvIlPiSkRD0tSoWQmtO2DLJNZny7JqCci9tQj4/QPpr6T
1WffSmMAk4jyCWgRoOTICERBtTfvVWyBsiyqVhwt/8gXs7C1X9qgb9RBmaZcrv15zmGpGi4HMp9e
fYxHjaTeWA5d3z2sOxA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ETqZQ53rrkpTiQPZp1j5gKz+UsH2WS5CRqY0Xd89H7zKB6ZrCPlMc34LYspCVycl/FPGzGT6+nOj
Md1Nvesp8ZvXflhu6BWO4z2M54SpZM3zNz6O6HLFjB1K1ckqKXsRctsJm946HynyIe5Q1Mek4Lo4
U84QRf4RlI9ZGuIy9qe9ud7qx67xCzhgA/PfDZUwaC7Vu8w9LloGcQF+luXVj7JB9bWsFLT9bE2Y
apEVvx4bfLeLGNNLt4A2HjQaVtXSi5rnzQRKOb1u6ZJkQ2e40FFz8gX8ya6fzmI28K+RU7iyybg1
TP6p0GZSzlRzT/1JM5gMoKTbxE1xjzSYkp2uow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JMDOxydAIUThqNelxDImPxOCTXQnmvtPoIx2rIvGN8S4t6FGzKJh1oL8h+/5nn0XV4vaPWAiBPkx
aC/aCculMuRl/F5BOxj+9htWFc8k43/GJEzPIOzTT5HE9n9uyLe7ijBhP8CJYEVX183Eu1iwPIbu
0eCqPR2MvjwDMm0VqY0brSTLfctmTq0IMo4xIncsx4Gnl9MBKbhPAK27kxeR0bB+v5lqG4GUQS7a
CFZ3pFE112bjR7gIQSOBdNokeezYv4hjMuxklv4O3+Na8vN/PyOA9oPu3UQH+yTmC4ycMpx6b4Qh
leyhrMBdV9hxtDvhicFX0/gnwyKew6AyvFGHWg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6aF5MFcSVNOb7MVIbyUccyA/VrZbdeTuAVLaC5CY7cXTmNXWLQRexuQlTH2XiPbtIWM2/sJchjUx
8eMX8l0nWH3Ts0tJvaTBZBIZzLpM+2huJkWJJQYDVuhprsRVU8l3H1ei7nIhlmjzbMKZ8ZJGJ04j
NXtktxQ5iQWJayxm9arP1ocISbQagXBJ1ZQrp9ExPjv7rkklQCB3+kfSz3l8OkxsQFIGhEMjIZK1
ojspC0WQBb4mqYUmcW/rFL1BhjDN25N2G5y4cKlRbuoj+ysZBltf16X0yAP+f7guURtAHhv5SYHH
ld2e4SDjlAK8Jvea8xcILN3682TnFsBOCBIuHA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11824)
`pragma protect data_block
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
S/onz20Y9K7lIvYG4ryHPZmzSz8fkGQ1yA==
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
