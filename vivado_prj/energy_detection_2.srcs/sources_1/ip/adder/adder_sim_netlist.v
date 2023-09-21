// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Sep 20 09:58:36 2023
// Host        : LAPTOP-UV5HGDQN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top adder -prefix
//               adder_ adder_sim_netlist.v
// Design      : adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder,c_addsub_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module adder
   (A,
    B,
    CLK,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CLK;
  wire [31:0]S;
  wire SCLR;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_c_addsub_v12_0_11 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module adder_c_addsub_v12_0_11
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire ADD;
  wire [31:0]B;
  wire CLK;
  wire [31:0]S;
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_c_addsub_v12_0_11_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
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
iO2Bdkfy0dqqValMR4KhTWXpD0gDQF+kyoly3tZBTZTVs0CbWJ4Owhu4jxMCf8X2gbWR6iweF6Ks
B5dmLHZTDA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dbcEbgyZfx3YLmYpvjegvD9sRQCV1qBv0GqFBvCakC3SMR/H82zqo5uv5MZldBGUVmNHnxF3Vejx
zSqxUKfTNc90CS6quuoQe0eeq3T5XSdgwbNtjPZKvJuJTmQKT96yB3CfQOz13fGjaLrn/8NBUBBh
I7OEoGGg7ADph9V3vRg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bD3a4YgAnaoJx9/hljj2C1rODcUhawTVE1gtdPkNj8/YjemaFM6/sF7Q0CXbDJ7a+OBrB5pUgj3O
Vesi4yVmFp+mGmFarftWat5KmZiP3RVWrXwdzMj+f8T7p+lE3iD4njqUxIUz0TsUaNvFeW0xVNNb
OwTEX04nyt5HrU82dltJCclpFxE6yrP9YvI7l328bphwnC63xxk8T3yXwCrvj3VrIYuDT2yMRxrB
TBCv/Fe2f07JQyV73J7+DGAeJG0B1dTHeu48auQT63g1HsYaUXREihEUKgZe70QlOqlPbrr6Quhx
2LXE8LSdCA+FbJ7LlQc/Sgasj3ZYjM5lhEKleQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GCfR7acMSeEtOw1DhZKkUXjh9Uw/vUar7CGDRG9rZcB9NFDtQTltJeuKjFg8eaeKH9HFBMryuX72
/tmzhtFaiSTjr2na4ncL2XV3QRXe7nQaiHdc7cKBcZDvdSSMzOSYcIxLunwLwQTLC7sCvINmlxO1
NXnYzJVL1xb9HP8QVnSYpo1p+gCXcRBZzrOjZjCUnl7F2t3ZZStSGjBEyXVLnV+ouU3+247oJAOa
kC7v+pOtG2ho4KclIg0MGijjPs+jyOFU+b5C+ufQp/zL9GiZ5waCjb/0Y1vkBc9jZKR7YRnv+ASG
ju1uP8oqEXR9742kXRnW4HkMKkCK1MLDgWYdqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L+AGKmFZ1zoRJFd2cA+zxJhkgQ1R0aEjGQCGRFLNNhLHZXpzGDIjdSLjralBVRJ2rD6UcJutapF5
YaMoV9kphGGG2B07dxBuIimVjOxS3ZQJ7ru59ddfGBxUe9EHrv00Q5hTwoxig0lxqnmjSSnfsDeF
weTIqNnXkG5kqqezKC8a2FvUD5QWQBibhK69OAdmhhIOwZmpfvQKbEKgLX70BzcNlmLnttRL7G+q
XZ3fabZ42+JJHDLiIfveB3Gp2Lf2tzTH1u2xx5aEUr9154pnC9PWIwL3y3VBAT1oHR7ScdoGDOEy
HoYUiDibldOidIeKW0KrTeAIuBNmtM4R0R+RSA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V5ClnklUs5Wo++EDemG/KeowZlAfqB8SUrvSxPQGrdIwGfUvoCajhuABAWdS/L/pQl7Eyz51aiuw
KzPMrWtQozAEITf1xzvzgKbWZqoi4PQD3rThywFsFq60u8DdvHYM/kEvit0cZVFvG8rAbtlseHLu
0vU1kbrNgxb3bxjOovg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cRqAgScIUeXUwYGfCC0XDtpcc+mFNm3p8oTcFdtIU1nnlMagpBMqRm5ELc+m/Yw8jBwvcvt4tUFv
u/ypEEw+y12B+5Pr6SmnLJ+NVB3Q3Eyh4Q/d7p3jReIIsUxrlENpCTi4PVXMKr1B1Htzm8F8mXDq
y2UV+0SC+4yrBIntsdS0S8jPBERhfJhzNC5z38pPHANtM4wGGIUuKxIALLz1aq+2AjLbEgFHNrzw
2bJiDwRSTwrY4Yx2MSzYJk3O+cQBUe8nJDPx+aGEvDzQ4ZdJMNg2z+iaiE7OTaqK492Jb/1jvU0j
wlI+n35s2rrnc9QgfljdOJuueruPuYDi5vTTxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kKVVCLhfEXEKT5e2fT3VDnXwfO9tUD65nsmNI5wdyRg+Zf3zEcNRZYbhFGmtDA3/aIJrfjWKuDQq
v9mbm4JPi+YB0l5Goxp403rwUFD//65qsJAkjfIMqDfBVHaX8YzFVbyk1WLNjfq6erP8AVfoVWgL
S1dZAspNGT10Kp9VRkz56mXUaYTDZebrPuYfvHk7g/wYWCWpU/I0LOCvg9sTcqiPn14aFywyfBsO
fWIN/YFN78QhDSGc2rQa+lXQnjTpii3qYIzfAynmhbUqENJ9sFyu9Mzuz6AFP3P4IZTOBxY3+GjZ
Ij9bqFRd4wauj3YgidkBIL4RVe6qxF9TaNTznQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qzLJQz5muJ1bmKd97E0QzKU+mhf1/A/KTEwIB2lfSm4yg9KMoTjb6APKsPk862ph4qWCRYuoDiSg
1yJYP8j/5rcTxf88ayLtDcwNiou8crlbDYBxElfff/q0TDlV5BxGk7/rmI0Key9/+GHotETsAppJ
sIJwGjDBlJDN2kq3iMJZDcWsShq/ZSdT/tFb2kHmfg6wcIdI60iKnO+QulxBuNYHXkTo80seUSDN
ww4aOXBR0cLTIRIaz2GH2JPPAbMk350QvgHlO/Zu1xxu4XoOLcSbHnjxXp+Y2vfTcEId4v7DvURL
bSqKb4Q1iM6oDoGg2ArhoO452FqPvO28v4uiaw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12224)
`pragma protect data_block
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
Sm77A5X1kv15aB9/yh4TjyTgnDIwLP3IQg==
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
