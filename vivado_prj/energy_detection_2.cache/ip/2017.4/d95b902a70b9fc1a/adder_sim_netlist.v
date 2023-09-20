// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Sep 20 09:58:36 2023
// Host        : LAPTOP-UV5HGDQN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_sim_netlist.v
// Design      : adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder,c_addsub_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_11 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_11
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_11_viv xst_addsub
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
YbnEniL6/jUEsV1SCgIN8kw4g5B+QJqzuSU=
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
