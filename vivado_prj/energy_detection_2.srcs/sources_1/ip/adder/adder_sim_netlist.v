// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Sep 20 22:15:51 2023
// Host        : LAPTOP-UV5HGDQN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/vivado_prj/energy_detection_2.srcs/sources_1/ip/adder/adder_sim_netlist.v
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
  (* C_LATENCY = "2" *) 
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
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_11" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
  (* C_LATENCY = "2" *) 
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
mu8Csdpk31pzYNNk0KPhzHRfVPj47tgHMRDAp4XwKbnDJsj9j42dWJ6IStAQdNrEMHDO3Gt/wA7Q
pAmYtZxvKIzc18LuQZyNapYaF4FvxdsGfhgct091GUlXpv3hape1za3N+CR+8N1BcbA1gyIS2G1j
BAlvbRX4UCBfblc4s6G9LNBCrO3qMr1qID6P/W0rWRUuBJOx2jRdXJzmzvtN8lpHPgPWnz1uQR0D
zEVVOb+6MSKR8FpLPTlzmJJCP/I2HxL/yWun/GLS9ZVcHtdIBzkVJ6MAlNbcKbMtskov6aGmAXaj
UK6/GdPQr4V0ue/PyFIlkkQL+ddkXFxejMuJKg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KM6lkhx+RQDPBqVC/zcvDbunvYp8wznkUBnPdybtFXeALFNvd0AMYMuaaPVpYtNGaw/d+U1+x8dX
Yndc0Ozegyxgg+aQpaVWgpSNeHpkz5qxubbrEFSE+ax0q2wxNl/4qM1brH5audII6F38KzyvbUZe
3s9l1NBZ8Wv+ixkCQWtGsqj9qc2OPjNEx9fkl03WB/sXv/Vg9jV8glDaIa0Zw9Nl8tpjahcqGZdU
4m63k3udnNrZnd6HDUodL8A4WsBWbcDI1AX4kq1Ubi3SEBk8yANpDtXndYriSB3wS1zxL8+7sKpB
gwf9HukSy8yYce4ET1P7DL0qDyoeJlLNDlFrdA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12064)
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
