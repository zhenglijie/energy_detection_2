set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_rst_n]
set_property PACKAGE_PIN U18 [get_ports sys_clk]
set_property PACKAGE_PIN N15 [get_ports sys_rst_n]


create_clock -period 20.000 -name sys_clk [get_ports sys_clk]


set_false_path -from [get_ports sys_rst_n]

#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets sys_clk_IBUF_BUFG]
