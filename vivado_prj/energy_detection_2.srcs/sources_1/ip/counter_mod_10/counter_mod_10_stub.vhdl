-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Sep 15 14:12:36 2023
-- Host        : LAPTOP-UV5HGDQN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/vivado_prj/energy_detection_2.srcs/sources_1/ip/counter_mod_10/counter_mod_10_stub.vhdl
-- Design      : counter_mod_10
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_mod_10 is
  Port ( 
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );

end counter_mod_10;

architecture stub of counter_mod_10 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,CE,SCLR,Q[9:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_11,Vivado 2017.4";
begin
end;
