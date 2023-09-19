// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Sep 15 14:12:36 2023
// Host        : LAPTOP-UV5HGDQN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/vivado_prj/energy_detection_2.srcs/sources_1/ip/counter_mod_10/counter_mod_10_sim_netlist.v
// Design      : counter_mod_10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "counter_mod_10,c_counter_binary_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module counter_mod_10
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
  counter_mod_10_c_counter_binary_v12_0_11 U0
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
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_11" *) (* downgradeipidentifiedwarnings = "yes" *) 
module counter_mod_10_c_counter_binary_v12_0_11
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
  counter_mod_10_c_counter_binary_v12_0_11_viv i_synth
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
mWPo+CWlBC+7xVQ6HyincMXazyJA9AzMi3O102ZiJmEGM+G/wTKgaUSYxa2rN0zluUM98Wd/9WEc
NIjTJ8mNrYYQh2CSiDYb3mVbv0ll+VGFa3P5dqozKyABIRHxCiGJkgiTgN5Hq1KpFGc22yb0azV1
myYB/RU3kFY+F6Mbw4I0IQiNSzyCODd4hjTvRiHbN2upldVm8tRo9s5tUdIUgsbVLvuTV6DueNJw
ojx1PLqMnNq93BrUb3fZ9iVyX+LIvWqwwsmbniYgg0oQBSualZVteYiF4NPOC46Yl55oBMDoTwAs
jeSTG2o6nztMd9I9JAAAswBih/b+htGXUxKayw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vBrxGs2vdry8M4uMcPNX7Ptybl3xgjLxVAdM4e0LzEdOvG2pYz46+92kdYjAweRiDoXJfaQp+oBj
HtMkr9tHkYyeDjEklJBH9o5vYeaYI1ZiaDy0/18rNGAQIOkFZtJK+kaPu66BX7zprj4Sfxf+hJ01
x7v0ZXZUNeDu4OXgMhLuDHfx2zBxGqOTgKN0mJBTBF/6m0EEnOe5jNffkZxssp6Lz+5tUzUln2Ka
gf3nQwXG2XQNL9+/FQZ/OW5Q5zigl15L/dKfiHdizxcv96WWj8jM+HgsEBCj5z/A0o+mA64DHT/q
ShIPJ9BS3ZsRnb/UKhGlvm+P61M3DNBZHTKflA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11824)
`pragma protect data_block
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
jN4gikPnwKRgXCkrPmLFreNpRy/pOBN5+Q==
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
