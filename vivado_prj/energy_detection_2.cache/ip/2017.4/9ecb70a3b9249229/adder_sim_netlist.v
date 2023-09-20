// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Sep 20 22:15:51 2023
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
  (* C_LATENCY = "2" *) 
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
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) 
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
  (* C_LATENCY = "2" *) 
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
aycZ3uJAyU7i2ycTeEIcALopT6eMWKXoR44VKYEESsEaZNk8VpeMWiBo2fhipuj0etonLtALRldL
29OXnSrcLrnBhloA3XI5ai1noiZ5V51g5CNdkjevycFfuWKGEGKNAu8afNeykFkOd6cmZlnhlhW0
KvAdhBi+i2LbW0opkB4jYynAQVCkXTwfrSvgWgtCFHH7dXtoxOhj+A06fBhh33HIglXo1zLsnyvd
JKAvCdRUBDpovPAAGKg74g5p5SqIkpsBJOtKZlTdl7AKsrabNcoux52xKl93NLk7FWwE9+N80PWs
WYdwFarhV5HJCC7SEDIsS6ZNDMwr/PHEZ+JY2g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
454GEtxMzc4a1LgU6E5BsxSMUREaRv+PWUNgPgHdi1SkYsmQ2kvTtDXxSMJCcAN+US9SgJ7m4R7d
BXPJ7DzHj84l91zKtlCBUq/I249To5kUjQKxv8loWZYx07ldW2QkdoA/3AkFXy+dYZyL8hRfZb97
WNZ0KaLLroumnT73aykAfWjX35JgqpdOziBmFefd5iU4+k6VoBZ/HyiKpep8qyJI6GefCm1ybmE5
TfYEe4xHg+kNtuo8LuGqlUTQi7tvsjoB8Bj+JwY0eh9IzRw4qknorNSNXffRKLryu64sI9iyhbuL
DnTz3EQzEZ32iJ5JBckkXBE1ALzjhtSzKIiI0A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12160)
`pragma protect data_block
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
lhCh49I3w/zfhsyXfQAUoOokeg==
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
