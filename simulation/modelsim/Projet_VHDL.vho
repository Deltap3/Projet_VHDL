-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/05/2020 21:53:30"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	septseg IS
    PORT (
	clk : IN std_logic;
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END septseg;

-- Design Ports Information
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF septseg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \s_clk_lent~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \s_clk_compte[0]~26_combout\ : std_logic;
SIGNAL \s_clk_compte[24]~75\ : std_logic;
SIGNAL \s_clk_compte[25]~76_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \s_clk_compte[0]~27\ : std_logic;
SIGNAL \s_clk_compte[1]~28_combout\ : std_logic;
SIGNAL \s_clk_compte[1]~29\ : std_logic;
SIGNAL \s_clk_compte[2]~30_combout\ : std_logic;
SIGNAL \s_clk_compte[2]~31\ : std_logic;
SIGNAL \s_clk_compte[3]~32_combout\ : std_logic;
SIGNAL \s_clk_compte[3]~33\ : std_logic;
SIGNAL \s_clk_compte[4]~34_combout\ : std_logic;
SIGNAL \s_clk_compte[4]~35\ : std_logic;
SIGNAL \s_clk_compte[5]~36_combout\ : std_logic;
SIGNAL \s_clk_compte[5]~37\ : std_logic;
SIGNAL \s_clk_compte[6]~38_combout\ : std_logic;
SIGNAL \s_clk_compte[6]~39\ : std_logic;
SIGNAL \s_clk_compte[7]~40_combout\ : std_logic;
SIGNAL \s_clk_compte[7]~41\ : std_logic;
SIGNAL \s_clk_compte[8]~42_combout\ : std_logic;
SIGNAL \s_clk_compte[8]~43\ : std_logic;
SIGNAL \s_clk_compte[9]~44_combout\ : std_logic;
SIGNAL \s_clk_compte[9]~45\ : std_logic;
SIGNAL \s_clk_compte[10]~46_combout\ : std_logic;
SIGNAL \s_clk_compte[10]~47\ : std_logic;
SIGNAL \s_clk_compte[11]~48_combout\ : std_logic;
SIGNAL \s_clk_compte[11]~49\ : std_logic;
SIGNAL \s_clk_compte[12]~50_combout\ : std_logic;
SIGNAL \s_clk_compte[12]~51\ : std_logic;
SIGNAL \s_clk_compte[13]~52_combout\ : std_logic;
SIGNAL \s_clk_compte[13]~53\ : std_logic;
SIGNAL \s_clk_compte[14]~54_combout\ : std_logic;
SIGNAL \s_clk_compte[14]~55\ : std_logic;
SIGNAL \s_clk_compte[15]~56_combout\ : std_logic;
SIGNAL \s_clk_compte[15]~57\ : std_logic;
SIGNAL \s_clk_compte[16]~58_combout\ : std_logic;
SIGNAL \s_clk_compte[16]~59\ : std_logic;
SIGNAL \s_clk_compte[17]~60_combout\ : std_logic;
SIGNAL \s_clk_compte[17]~61\ : std_logic;
SIGNAL \s_clk_compte[18]~62_combout\ : std_logic;
SIGNAL \s_clk_compte[18]~63\ : std_logic;
SIGNAL \s_clk_compte[19]~64_combout\ : std_logic;
SIGNAL \s_clk_compte[19]~65\ : std_logic;
SIGNAL \s_clk_compte[20]~66_combout\ : std_logic;
SIGNAL \s_clk_compte[20]~67\ : std_logic;
SIGNAL \s_clk_compte[21]~68_combout\ : std_logic;
SIGNAL \s_clk_compte[21]~69\ : std_logic;
SIGNAL \s_clk_compte[22]~70_combout\ : std_logic;
SIGNAL \s_clk_compte[22]~71\ : std_logic;
SIGNAL \s_clk_compte[23]~72_combout\ : std_logic;
SIGNAL \s_clk_compte[23]~73\ : std_logic;
SIGNAL \s_clk_compte[24]~74_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \s_clk_lent~q\ : std_logic;
SIGNAL \s_clk_lent~clkctrl_outclk\ : std_logic;
SIGNAL \mess[104]~42_combout\ : std_logic;
SIGNAL \mess[97]~38_combout\ : std_logic;
SIGNAL \mess[90]~34_combout\ : std_logic;
SIGNAL \mess[83]~feeder_combout\ : std_logic;
SIGNAL \mess[76]~feeder_combout\ : std_logic;
SIGNAL \mess[69]~26_combout\ : std_logic;
SIGNAL \mess[62]~feeder_combout\ : std_logic;
SIGNAL \mess[55]~19_combout\ : std_logic;
SIGNAL \mess[48]~feeder_combout\ : std_logic;
SIGNAL \mess[41]~12_combout\ : std_logic;
SIGNAL \mess[34]~9_combout\ : std_logic;
SIGNAL \mess[27]~feeder_combout\ : std_logic;
SIGNAL \mess[20]~6_combout\ : std_logic;
SIGNAL \mess[13]~3_combout\ : std_logic;
SIGNAL \mess[6]~0_combout\ : std_logic;
SIGNAL \HEX5[6]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX5[6]~reg0_q\ : std_logic;
SIGNAL \mess[102]~43_combout\ : std_logic;
SIGNAL \mess[95]~39_combout\ : std_logic;
SIGNAL \mess[88]~feeder_combout\ : std_logic;
SIGNAL \mess[81]~feeder_combout\ : std_logic;
SIGNAL \mess[74]~feeder_combout\ : std_logic;
SIGNAL \mess[67]~feeder_combout\ : std_logic;
SIGNAL \mess[60]~feeder_combout\ : std_logic;
SIGNAL \mess[53]~feeder_combout\ : std_logic;
SIGNAL \mess[46]~16_combout\ : std_logic;
SIGNAL \mess[39]~13_combout\ : std_logic;
SIGNAL \mess[32]~feeder_combout\ : std_logic;
SIGNAL \mess[25]~feeder_combout\ : std_logic;
SIGNAL \mess[18]~feeder_combout\ : std_logic;
SIGNAL \mess[11]~feeder_combout\ : std_logic;
SIGNAL \mess[4]~feeder_combout\ : std_logic;
SIGNAL \HEX5[5]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX5[5]~reg0_q\ : std_logic;
SIGNAL \HEX5[4]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX5[4]~reg0_q\ : std_logic;
SIGNAL \mess[101]~feeder_combout\ : std_logic;
SIGNAL \mess[94]~40_combout\ : std_logic;
SIGNAL \mess[87]~35_combout\ : std_logic;
SIGNAL \mess[80]~feeder_combout\ : std_logic;
SIGNAL \mess[73]~feeder_combout\ : std_logic;
SIGNAL \mess[66]~27_combout\ : std_logic;
SIGNAL \mess[59]~23_combout\ : std_logic;
SIGNAL \mess[52]~20_combout\ : std_logic;
SIGNAL \mess[45]~17_combout\ : std_logic;
SIGNAL \mess[38]~14_combout\ : std_logic;
SIGNAL \mess[31]~10_combout\ : std_logic;
SIGNAL \mess[24]~feeder_combout\ : std_logic;
SIGNAL \mess[17]~7_combout\ : std_logic;
SIGNAL \mess[10]~4_combout\ : std_logic;
SIGNAL \mess[3]~feeder_combout\ : std_logic;
SIGNAL \HEX5[3]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX5[3]~reg0_q\ : std_logic;
SIGNAL \mess[100]~feeder_combout\ : std_logic;
SIGNAL \mess[93]~feeder_combout\ : std_logic;
SIGNAL \mess[86]~36_combout\ : std_logic;
SIGNAL \mess[79]~31_combout\ : std_logic;
SIGNAL \mess[72]~feeder_combout\ : std_logic;
SIGNAL \mess[65]~feeder_combout\ : std_logic;
SIGNAL \mess[58]~24_combout\ : std_logic;
SIGNAL \mess[51]~21_combout\ : std_logic;
SIGNAL \mess[44]~feeder_combout\ : std_logic;
SIGNAL \mess[37]~feeder_combout\ : std_logic;
SIGNAL \mess[30]~feeder_combout\ : std_logic;
SIGNAL \mess[23]~feeder_combout\ : std_logic;
SIGNAL \mess[16]~feeder_combout\ : std_logic;
SIGNAL \mess[9]~feeder_combout\ : std_logic;
SIGNAL \mess[2]~feeder_combout\ : std_logic;
SIGNAL \HEX5[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX5[2]~reg0_q\ : std_logic;
SIGNAL \mess[99]~44_combout\ : std_logic;
SIGNAL \mess[92]~feeder_combout\ : std_logic;
SIGNAL \mess[85]~37_combout\ : std_logic;
SIGNAL \mess[78]~32_combout\ : std_logic;
SIGNAL \mess[71]~29_combout\ : std_logic;
SIGNAL \mess[64]~28_combout\ : std_logic;
SIGNAL \mess[57]~feeder_combout\ : std_logic;
SIGNAL \mess[50]~feeder_combout\ : std_logic;
SIGNAL \mess[43]~feeder_combout\ : std_logic;
SIGNAL \mess[36]~feeder_combout\ : std_logic;
SIGNAL \mess[29]~11_combout\ : std_logic;
SIGNAL \mess[22]~feeder_combout\ : std_logic;
SIGNAL \mess[15]~8_combout\ : std_logic;
SIGNAL \mess[8]~feeder_combout\ : std_logic;
SIGNAL \mess[1]~1_combout\ : std_logic;
SIGNAL \HEX5[1]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX5[1]~reg0_q\ : std_logic;
SIGNAL \mess[98]~45_combout\ : std_logic;
SIGNAL \mess[91]~41_combout\ : std_logic;
SIGNAL \mess[84]~feeder_combout\ : std_logic;
SIGNAL \mess[77]~33_combout\ : std_logic;
SIGNAL \mess[70]~30_combout\ : std_logic;
SIGNAL \mess[63]~feeder_combout\ : std_logic;
SIGNAL \mess[56]~25_combout\ : std_logic;
SIGNAL \mess[49]~22_combout\ : std_logic;
SIGNAL \mess[42]~18_combout\ : std_logic;
SIGNAL \mess[35]~15_combout\ : std_logic;
SIGNAL \mess[28]~feeder_combout\ : std_logic;
SIGNAL \mess[21]~feeder_combout\ : std_logic;
SIGNAL \mess[14]~feeder_combout\ : std_logic;
SIGNAL \mess[7]~5_combout\ : std_logic;
SIGNAL \mess[0]~2_combout\ : std_logic;
SIGNAL \HEX5[0]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX5[0]~reg0_q\ : std_logic;
SIGNAL \HEX4[6]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[6]~reg0_q\ : std_logic;
SIGNAL \HEX4[5]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[5]~reg0_q\ : std_logic;
SIGNAL \HEX4[4]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[4]~reg0_q\ : std_logic;
SIGNAL \HEX4[3]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[3]~reg0_q\ : std_logic;
SIGNAL \HEX4[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[2]~reg0_q\ : std_logic;
SIGNAL \HEX4[1]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[1]~reg0_q\ : std_logic;
SIGNAL \HEX4[0]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[0]~reg0_q\ : std_logic;
SIGNAL \HEX3[6]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX3[6]~reg0_q\ : std_logic;
SIGNAL \HEX3[5]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX3[5]~reg0_q\ : std_logic;
SIGNAL \HEX3[4]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX3[4]~reg0_q\ : std_logic;
SIGNAL \HEX3[3]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX3[3]~reg0_q\ : std_logic;
SIGNAL \HEX3[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX3[2]~reg0_q\ : std_logic;
SIGNAL \HEX3[1]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX3[1]~reg0_q\ : std_logic;
SIGNAL \HEX3[0]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX3[0]~reg0_q\ : std_logic;
SIGNAL \HEX2[6]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX2[6]~reg0_q\ : std_logic;
SIGNAL \HEX2[5]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX2[5]~reg0_q\ : std_logic;
SIGNAL \HEX2[4]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX2[4]~reg0_q\ : std_logic;
SIGNAL \HEX2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX2[3]~reg0_q\ : std_logic;
SIGNAL \HEX2[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX2[2]~reg0_q\ : std_logic;
SIGNAL \HEX2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX2[1]~reg0_q\ : std_logic;
SIGNAL \HEX2[0]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX2[0]~reg0_q\ : std_logic;
SIGNAL \HEX1[6]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX1[6]~reg0_q\ : std_logic;
SIGNAL \HEX1[5]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX1[5]~reg0_q\ : std_logic;
SIGNAL \HEX1[4]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX1[4]~reg0_q\ : std_logic;
SIGNAL \HEX1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX1[3]~reg0_q\ : std_logic;
SIGNAL \HEX1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX1[2]~reg0_q\ : std_logic;
SIGNAL \HEX1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX1[1]~reg0_q\ : std_logic;
SIGNAL \HEX1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX1[0]~reg0_q\ : std_logic;
SIGNAL \HEX0[6]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[6]~reg0_q\ : std_logic;
SIGNAL \HEX0[5]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[5]~reg0_q\ : std_logic;
SIGNAL \HEX0[4]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[4]~reg0_q\ : std_logic;
SIGNAL \HEX0[3]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[3]~reg0_q\ : std_logic;
SIGNAL \HEX0[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[2]~reg0_q\ : std_logic;
SIGNAL \HEX0[1]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[1]~reg0_q\ : std_logic;
SIGNAL \HEX0[0]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[0]~reg0_q\ : std_logic;
SIGNAL s_clk_compte : std_logic_vector(25 DOWNTO 0);
SIGNAL mess : std_logic_vector(0 TO 104);
SIGNAL \ALT_INV_HEX0[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX0[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX3[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX3[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX5[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX5[3]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\s_clk_lent~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s_clk_lent~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_HEX0[1]~reg0_q\ <= NOT \HEX0[1]~reg0_q\;
\ALT_INV_HEX0[2]~reg0_q\ <= NOT \HEX0[2]~reg0_q\;
\ALT_INV_HEX1[2]~reg0_q\ <= NOT \HEX1[2]~reg0_q\;
\ALT_INV_HEX1[3]~reg0_q\ <= NOT \HEX1[3]~reg0_q\;
\ALT_INV_HEX1[6]~reg0_q\ <= NOT \HEX1[6]~reg0_q\;
\ALT_INV_HEX2[2]~reg0_q\ <= NOT \HEX2[2]~reg0_q\;
\ALT_INV_HEX2[3]~reg0_q\ <= NOT \HEX2[3]~reg0_q\;
\ALT_INV_HEX2[6]~reg0_q\ <= NOT \HEX2[6]~reg0_q\;
\ALT_INV_HEX3[1]~reg0_q\ <= NOT \HEX3[1]~reg0_q\;
\ALT_INV_HEX3[2]~reg0_q\ <= NOT \HEX3[2]~reg0_q\;
\ALT_INV_HEX4[0]~reg0_q\ <= NOT \HEX4[0]~reg0_q\;
\ALT_INV_HEX4[1]~reg0_q\ <= NOT \HEX4[1]~reg0_q\;
\ALT_INV_HEX4[2]~reg0_q\ <= NOT \HEX4[2]~reg0_q\;
\ALT_INV_HEX4[3]~reg0_q\ <= NOT \HEX4[3]~reg0_q\;
\ALT_INV_HEX4[6]~reg0_q\ <= NOT \HEX4[6]~reg0_q\;
\ALT_INV_HEX5[2]~reg0_q\ <= NOT \HEX5[2]~reg0_q\;
\ALT_INV_HEX5[3]~reg0_q\ <= NOT \HEX5[3]~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5[6]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5[5]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5[4]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5[3]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5[2]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5[1]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5[0]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX4[6]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4[5]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4[4]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX4[3]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX4[2]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX4[1]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX4[0]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3[6]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3[5]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3[4]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3[3]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX3[2]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX3[1]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3[0]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX2[6]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[5]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[4]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[6]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[5]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[4]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[3]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX0[2]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX0[1]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[0]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X57_Y34_N6
\s_clk_compte[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[0]~26_combout\ = s_clk_compte(0) $ (VCC)
-- \s_clk_compte[0]~27\ = CARRY(s_clk_compte(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(0),
	datad => VCC,
	combout => \s_clk_compte[0]~26_combout\,
	cout => \s_clk_compte[0]~27\);

-- Location: LCCOMB_X57_Y33_N22
\s_clk_compte[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[24]~74_combout\ = (s_clk_compte(24) & (\s_clk_compte[23]~73\ $ (GND))) # (!s_clk_compte(24) & (!\s_clk_compte[23]~73\ & VCC))
-- \s_clk_compte[24]~75\ = CARRY((s_clk_compte(24) & !\s_clk_compte[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datad => VCC,
	cin => \s_clk_compte[23]~73\,
	combout => \s_clk_compte[24]~74_combout\,
	cout => \s_clk_compte[24]~75\);

-- Location: LCCOMB_X57_Y33_N24
\s_clk_compte[25]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[25]~76_combout\ = \s_clk_compte[24]~75\ $ (s_clk_compte(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => s_clk_compte(25),
	cin => \s_clk_compte[24]~75\,
	combout => \s_clk_compte[25]~76_combout\);

-- Location: FF_X57_Y33_N25
\s_clk_compte[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[25]~76_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(25));

-- Location: LCCOMB_X58_Y33_N30
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (s_clk_compte(19) & (s_clk_compte(22) & (s_clk_compte(21) & s_clk_compte(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(19),
	datab => s_clk_compte(22),
	datac => s_clk_compte(21),
	datad => s_clk_compte(20),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X58_Y33_N0
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (s_clk_compte(25) & (\LessThan0~0_combout\ & s_clk_compte(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(25),
	datac => \LessThan0~0_combout\,
	datad => s_clk_compte(23),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X58_Y33_N2
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (s_clk_compte(8)) # ((s_clk_compte(11)) # ((s_clk_compte(9)) # (s_clk_compte(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(8),
	datab => s_clk_compte(11),
	datac => s_clk_compte(9),
	datad => s_clk_compte(10),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X58_Y33_N12
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (s_clk_compte(12) & (s_clk_compte(13) & s_clk_compte(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(12),
	datac => s_clk_compte(13),
	datad => s_clk_compte(14),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X57_Y34_N4
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (s_clk_compte(2)) # ((s_clk_compte(6)) # ((s_clk_compte(1)) # (s_clk_compte(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(2),
	datab => s_clk_compte(6),
	datac => s_clk_compte(1),
	datad => s_clk_compte(0),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X57_Y34_N2
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (s_clk_compte(5)) # ((s_clk_compte(4)) # (s_clk_compte(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(5),
	datac => s_clk_compte(4),
	datad => s_clk_compte(3),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X57_Y34_N0
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (s_clk_compte(7) & ((\LessThan0~2_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(7),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X57_Y33_N30
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (s_clk_compte(15) & (\LessThan1~1_combout\ & ((\LessThan0~1_combout\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => s_clk_compte(15),
	datac => \LessThan1~1_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X57_Y33_N28
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (s_clk_compte(18)) # ((s_clk_compte(17) & ((s_clk_compte(16)) # (\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(17),
	datab => s_clk_compte(16),
	datac => \LessThan0~5_combout\,
	datad => s_clk_compte(18),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X57_Y33_N26
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (s_clk_compte(24) & ((s_clk_compte(25)) # ((\LessThan0~7_combout\ & \LessThan0~6_combout\)))) # (!s_clk_compte(24) & (((\LessThan0~7_combout\ & \LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~8_combout\);

-- Location: FF_X57_Y34_N7
\s_clk_compte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[0]~26_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(0));

-- Location: LCCOMB_X57_Y34_N8
\s_clk_compte[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[1]~28_combout\ = (s_clk_compte(1) & (!\s_clk_compte[0]~27\)) # (!s_clk_compte(1) & ((\s_clk_compte[0]~27\) # (GND)))
-- \s_clk_compte[1]~29\ = CARRY((!\s_clk_compte[0]~27\) # (!s_clk_compte(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(1),
	datad => VCC,
	cin => \s_clk_compte[0]~27\,
	combout => \s_clk_compte[1]~28_combout\,
	cout => \s_clk_compte[1]~29\);

-- Location: FF_X57_Y34_N9
\s_clk_compte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[1]~28_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(1));

-- Location: LCCOMB_X57_Y34_N10
\s_clk_compte[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[2]~30_combout\ = (s_clk_compte(2) & (\s_clk_compte[1]~29\ $ (GND))) # (!s_clk_compte(2) & (!\s_clk_compte[1]~29\ & VCC))
-- \s_clk_compte[2]~31\ = CARRY((s_clk_compte(2) & !\s_clk_compte[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(2),
	datad => VCC,
	cin => \s_clk_compte[1]~29\,
	combout => \s_clk_compte[2]~30_combout\,
	cout => \s_clk_compte[2]~31\);

-- Location: FF_X57_Y34_N11
\s_clk_compte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[2]~30_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(2));

-- Location: LCCOMB_X57_Y34_N12
\s_clk_compte[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[3]~32_combout\ = (s_clk_compte(3) & (!\s_clk_compte[2]~31\)) # (!s_clk_compte(3) & ((\s_clk_compte[2]~31\) # (GND)))
-- \s_clk_compte[3]~33\ = CARRY((!\s_clk_compte[2]~31\) # (!s_clk_compte(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(3),
	datad => VCC,
	cin => \s_clk_compte[2]~31\,
	combout => \s_clk_compte[3]~32_combout\,
	cout => \s_clk_compte[3]~33\);

-- Location: FF_X57_Y34_N13
\s_clk_compte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[3]~32_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(3));

-- Location: LCCOMB_X57_Y34_N14
\s_clk_compte[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[4]~34_combout\ = (s_clk_compte(4) & (\s_clk_compte[3]~33\ $ (GND))) # (!s_clk_compte(4) & (!\s_clk_compte[3]~33\ & VCC))
-- \s_clk_compte[4]~35\ = CARRY((s_clk_compte(4) & !\s_clk_compte[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(4),
	datad => VCC,
	cin => \s_clk_compte[3]~33\,
	combout => \s_clk_compte[4]~34_combout\,
	cout => \s_clk_compte[4]~35\);

-- Location: FF_X57_Y34_N15
\s_clk_compte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[4]~34_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(4));

-- Location: LCCOMB_X57_Y34_N16
\s_clk_compte[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[5]~36_combout\ = (s_clk_compte(5) & (!\s_clk_compte[4]~35\)) # (!s_clk_compte(5) & ((\s_clk_compte[4]~35\) # (GND)))
-- \s_clk_compte[5]~37\ = CARRY((!\s_clk_compte[4]~35\) # (!s_clk_compte(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(5),
	datad => VCC,
	cin => \s_clk_compte[4]~35\,
	combout => \s_clk_compte[5]~36_combout\,
	cout => \s_clk_compte[5]~37\);

-- Location: FF_X57_Y34_N17
\s_clk_compte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[5]~36_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(5));

-- Location: LCCOMB_X57_Y34_N18
\s_clk_compte[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[6]~38_combout\ = (s_clk_compte(6) & (\s_clk_compte[5]~37\ $ (GND))) # (!s_clk_compte(6) & (!\s_clk_compte[5]~37\ & VCC))
-- \s_clk_compte[6]~39\ = CARRY((s_clk_compte(6) & !\s_clk_compte[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(6),
	datad => VCC,
	cin => \s_clk_compte[5]~37\,
	combout => \s_clk_compte[6]~38_combout\,
	cout => \s_clk_compte[6]~39\);

-- Location: FF_X57_Y34_N19
\s_clk_compte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[6]~38_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(6));

-- Location: LCCOMB_X57_Y34_N20
\s_clk_compte[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[7]~40_combout\ = (s_clk_compte(7) & (!\s_clk_compte[6]~39\)) # (!s_clk_compte(7) & ((\s_clk_compte[6]~39\) # (GND)))
-- \s_clk_compte[7]~41\ = CARRY((!\s_clk_compte[6]~39\) # (!s_clk_compte(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(7),
	datad => VCC,
	cin => \s_clk_compte[6]~39\,
	combout => \s_clk_compte[7]~40_combout\,
	cout => \s_clk_compte[7]~41\);

-- Location: FF_X57_Y34_N21
\s_clk_compte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[7]~40_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(7));

-- Location: LCCOMB_X57_Y34_N22
\s_clk_compte[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[8]~42_combout\ = (s_clk_compte(8) & (\s_clk_compte[7]~41\ $ (GND))) # (!s_clk_compte(8) & (!\s_clk_compte[7]~41\ & VCC))
-- \s_clk_compte[8]~43\ = CARRY((s_clk_compte(8) & !\s_clk_compte[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(8),
	datad => VCC,
	cin => \s_clk_compte[7]~41\,
	combout => \s_clk_compte[8]~42_combout\,
	cout => \s_clk_compte[8]~43\);

-- Location: FF_X58_Y33_N23
\s_clk_compte[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_clk_compte[8]~42_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(8));

-- Location: LCCOMB_X57_Y34_N24
\s_clk_compte[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[9]~44_combout\ = (s_clk_compte(9) & (!\s_clk_compte[8]~43\)) # (!s_clk_compte(9) & ((\s_clk_compte[8]~43\) # (GND)))
-- \s_clk_compte[9]~45\ = CARRY((!\s_clk_compte[8]~43\) # (!s_clk_compte(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(9),
	datad => VCC,
	cin => \s_clk_compte[8]~43\,
	combout => \s_clk_compte[9]~44_combout\,
	cout => \s_clk_compte[9]~45\);

-- Location: FF_X58_Y33_N15
\s_clk_compte[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_clk_compte[9]~44_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(9));

-- Location: LCCOMB_X57_Y34_N26
\s_clk_compte[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[10]~46_combout\ = (s_clk_compte(10) & (\s_clk_compte[9]~45\ $ (GND))) # (!s_clk_compte(10) & (!\s_clk_compte[9]~45\ & VCC))
-- \s_clk_compte[10]~47\ = CARRY((s_clk_compte(10) & !\s_clk_compte[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(10),
	datad => VCC,
	cin => \s_clk_compte[9]~45\,
	combout => \s_clk_compte[10]~46_combout\,
	cout => \s_clk_compte[10]~47\);

-- Location: FF_X58_Y33_N19
\s_clk_compte[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_clk_compte[10]~46_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(10));

-- Location: LCCOMB_X57_Y34_N28
\s_clk_compte[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[11]~48_combout\ = (s_clk_compte(11) & (!\s_clk_compte[10]~47\)) # (!s_clk_compte(11) & ((\s_clk_compte[10]~47\) # (GND)))
-- \s_clk_compte[11]~49\ = CARRY((!\s_clk_compte[10]~47\) # (!s_clk_compte(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(11),
	datad => VCC,
	cin => \s_clk_compte[10]~47\,
	combout => \s_clk_compte[11]~48_combout\,
	cout => \s_clk_compte[11]~49\);

-- Location: FF_X58_Y33_N21
\s_clk_compte[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_clk_compte[11]~48_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(11));

-- Location: LCCOMB_X57_Y34_N30
\s_clk_compte[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[12]~50_combout\ = (s_clk_compte(12) & (\s_clk_compte[11]~49\ $ (GND))) # (!s_clk_compte(12) & (!\s_clk_compte[11]~49\ & VCC))
-- \s_clk_compte[12]~51\ = CARRY((s_clk_compte(12) & !\s_clk_compte[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(12),
	datad => VCC,
	cin => \s_clk_compte[11]~49\,
	combout => \s_clk_compte[12]~50_combout\,
	cout => \s_clk_compte[12]~51\);

-- Location: FF_X58_Y33_N29
\s_clk_compte[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_clk_compte[12]~50_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(12));

-- Location: LCCOMB_X57_Y33_N0
\s_clk_compte[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[13]~52_combout\ = (s_clk_compte(13) & (!\s_clk_compte[12]~51\)) # (!s_clk_compte(13) & ((\s_clk_compte[12]~51\) # (GND)))
-- \s_clk_compte[13]~53\ = CARRY((!\s_clk_compte[12]~51\) # (!s_clk_compte(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(13),
	datad => VCC,
	cin => \s_clk_compte[12]~51\,
	combout => \s_clk_compte[13]~52_combout\,
	cout => \s_clk_compte[13]~53\);

-- Location: FF_X57_Y33_N1
\s_clk_compte[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[13]~52_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(13));

-- Location: LCCOMB_X57_Y33_N2
\s_clk_compte[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[14]~54_combout\ = (s_clk_compte(14) & (\s_clk_compte[13]~53\ $ (GND))) # (!s_clk_compte(14) & (!\s_clk_compte[13]~53\ & VCC))
-- \s_clk_compte[14]~55\ = CARRY((s_clk_compte(14) & !\s_clk_compte[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(14),
	datad => VCC,
	cin => \s_clk_compte[13]~53\,
	combout => \s_clk_compte[14]~54_combout\,
	cout => \s_clk_compte[14]~55\);

-- Location: FF_X57_Y33_N3
\s_clk_compte[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[14]~54_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(14));

-- Location: LCCOMB_X57_Y33_N4
\s_clk_compte[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[15]~56_combout\ = (s_clk_compte(15) & (!\s_clk_compte[14]~55\)) # (!s_clk_compte(15) & ((\s_clk_compte[14]~55\) # (GND)))
-- \s_clk_compte[15]~57\ = CARRY((!\s_clk_compte[14]~55\) # (!s_clk_compte(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(15),
	datad => VCC,
	cin => \s_clk_compte[14]~55\,
	combout => \s_clk_compte[15]~56_combout\,
	cout => \s_clk_compte[15]~57\);

-- Location: FF_X57_Y33_N5
\s_clk_compte[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[15]~56_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(15));

-- Location: LCCOMB_X57_Y33_N6
\s_clk_compte[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[16]~58_combout\ = (s_clk_compte(16) & (\s_clk_compte[15]~57\ $ (GND))) # (!s_clk_compte(16) & (!\s_clk_compte[15]~57\ & VCC))
-- \s_clk_compte[16]~59\ = CARRY((s_clk_compte(16) & !\s_clk_compte[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(16),
	datad => VCC,
	cin => \s_clk_compte[15]~57\,
	combout => \s_clk_compte[16]~58_combout\,
	cout => \s_clk_compte[16]~59\);

-- Location: FF_X57_Y33_N7
\s_clk_compte[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[16]~58_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(16));

-- Location: LCCOMB_X57_Y33_N8
\s_clk_compte[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[17]~60_combout\ = (s_clk_compte(17) & (!\s_clk_compte[16]~59\)) # (!s_clk_compte(17) & ((\s_clk_compte[16]~59\) # (GND)))
-- \s_clk_compte[17]~61\ = CARRY((!\s_clk_compte[16]~59\) # (!s_clk_compte(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(17),
	datad => VCC,
	cin => \s_clk_compte[16]~59\,
	combout => \s_clk_compte[17]~60_combout\,
	cout => \s_clk_compte[17]~61\);

-- Location: FF_X57_Y33_N9
\s_clk_compte[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[17]~60_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(17));

-- Location: LCCOMB_X57_Y33_N10
\s_clk_compte[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[18]~62_combout\ = (s_clk_compte(18) & (\s_clk_compte[17]~61\ $ (GND))) # (!s_clk_compte(18) & (!\s_clk_compte[17]~61\ & VCC))
-- \s_clk_compte[18]~63\ = CARRY((s_clk_compte(18) & !\s_clk_compte[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(18),
	datad => VCC,
	cin => \s_clk_compte[17]~61\,
	combout => \s_clk_compte[18]~62_combout\,
	cout => \s_clk_compte[18]~63\);

-- Location: FF_X57_Y33_N11
\s_clk_compte[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[18]~62_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(18));

-- Location: LCCOMB_X57_Y33_N12
\s_clk_compte[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[19]~64_combout\ = (s_clk_compte(19) & (!\s_clk_compte[18]~63\)) # (!s_clk_compte(19) & ((\s_clk_compte[18]~63\) # (GND)))
-- \s_clk_compte[19]~65\ = CARRY((!\s_clk_compte[18]~63\) # (!s_clk_compte(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(19),
	datad => VCC,
	cin => \s_clk_compte[18]~63\,
	combout => \s_clk_compte[19]~64_combout\,
	cout => \s_clk_compte[19]~65\);

-- Location: FF_X57_Y33_N13
\s_clk_compte[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[19]~64_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(19));

-- Location: LCCOMB_X57_Y33_N14
\s_clk_compte[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[20]~66_combout\ = (s_clk_compte(20) & (\s_clk_compte[19]~65\ $ (GND))) # (!s_clk_compte(20) & (!\s_clk_compte[19]~65\ & VCC))
-- \s_clk_compte[20]~67\ = CARRY((s_clk_compte(20) & !\s_clk_compte[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(20),
	datad => VCC,
	cin => \s_clk_compte[19]~65\,
	combout => \s_clk_compte[20]~66_combout\,
	cout => \s_clk_compte[20]~67\);

-- Location: FF_X57_Y33_N15
\s_clk_compte[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[20]~66_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(20));

-- Location: LCCOMB_X57_Y33_N16
\s_clk_compte[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[21]~68_combout\ = (s_clk_compte(21) & (!\s_clk_compte[20]~67\)) # (!s_clk_compte(21) & ((\s_clk_compte[20]~67\) # (GND)))
-- \s_clk_compte[21]~69\ = CARRY((!\s_clk_compte[20]~67\) # (!s_clk_compte(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(21),
	datad => VCC,
	cin => \s_clk_compte[20]~67\,
	combout => \s_clk_compte[21]~68_combout\,
	cout => \s_clk_compte[21]~69\);

-- Location: FF_X57_Y33_N17
\s_clk_compte[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[21]~68_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(21));

-- Location: LCCOMB_X57_Y33_N18
\s_clk_compte[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[22]~70_combout\ = (s_clk_compte(22) & (\s_clk_compte[21]~69\ $ (GND))) # (!s_clk_compte(22) & (!\s_clk_compte[21]~69\ & VCC))
-- \s_clk_compte[22]~71\ = CARRY((s_clk_compte(22) & !\s_clk_compte[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(22),
	datad => VCC,
	cin => \s_clk_compte[21]~69\,
	combout => \s_clk_compte[22]~70_combout\,
	cout => \s_clk_compte[22]~71\);

-- Location: FF_X57_Y33_N19
\s_clk_compte[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[22]~70_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(22));

-- Location: LCCOMB_X57_Y33_N20
\s_clk_compte[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[23]~72_combout\ = (s_clk_compte(23) & (!\s_clk_compte[22]~71\)) # (!s_clk_compte(23) & ((\s_clk_compte[22]~71\) # (GND)))
-- \s_clk_compte[23]~73\ = CARRY((!\s_clk_compte[22]~71\) # (!s_clk_compte(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(23),
	datad => VCC,
	cin => \s_clk_compte[22]~71\,
	combout => \s_clk_compte[23]~72_combout\,
	cout => \s_clk_compte[23]~73\);

-- Location: FF_X57_Y33_N21
\s_clk_compte[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[23]~72_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(23));

-- Location: FF_X57_Y33_N23
\s_clk_compte[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[24]~74_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(24));

-- Location: LCCOMB_X58_Y33_N26
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!s_clk_compte(8) & (!s_clk_compte(10) & (!s_clk_compte(9) & !s_clk_compte(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(8),
	datab => s_clk_compte(10),
	datac => s_clk_compte(9),
	datad => s_clk_compte(6),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X58_Y33_N10
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((\LessThan1~0_combout\ & !s_clk_compte(7))) # (!s_clk_compte(11))) # (!\LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => s_clk_compte(11),
	datac => \LessThan1~0_combout\,
	datad => s_clk_compte(7),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X58_Y33_N16
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (s_clk_compte(16) & ((s_clk_compte(15)) # (!\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(16),
	datac => s_clk_compte(15),
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X58_Y33_N8
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (s_clk_compte(18) & (\LessThan0~0_combout\ & ((s_clk_compte(17)) # (\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(17),
	datab => s_clk_compte(18),
	datac => \LessThan0~0_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X58_Y33_N24
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (s_clk_compte(25)) # ((s_clk_compte(24) & ((\LessThan1~4_combout\) # (s_clk_compte(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan1~4_combout\,
	datad => s_clk_compte(23),
	combout => \LessThan1~5_combout\);

-- Location: FF_X58_Y33_N25
s_clk_lent : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_clk_lent~q\);

-- Location: CLKCTRL_G6
\s_clk_lent~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \s_clk_lent~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \s_clk_lent~clkctrl_outclk\);

-- Location: LCCOMB_X76_Y39_N26
\mess[104]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[104]~42_combout\ = !mess(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(6),
	combout => \mess[104]~42_combout\);

-- Location: FF_X76_Y39_N27
\mess[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[104]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(104));

-- Location: LCCOMB_X76_Y39_N28
\mess[97]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[97]~38_combout\ = !mess(104)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(104),
	combout => \mess[97]~38_combout\);

-- Location: FF_X76_Y39_N29
\mess[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[97]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(97));

-- Location: LCCOMB_X76_Y39_N2
\mess[90]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[90]~34_combout\ = !mess(97)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(97),
	combout => \mess[90]~34_combout\);

-- Location: FF_X76_Y39_N3
\mess[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[90]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(90));

-- Location: LCCOMB_X76_Y39_N20
\mess[83]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[83]~feeder_combout\ = mess(90)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(90),
	combout => \mess[83]~feeder_combout\);

-- Location: FF_X76_Y39_N21
\mess[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[83]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(83));

-- Location: LCCOMB_X76_Y39_N18
\mess[76]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[76]~feeder_combout\ = mess(83)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(83),
	combout => \mess[76]~feeder_combout\);

-- Location: FF_X76_Y39_N19
\mess[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[76]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(76));

-- Location: LCCOMB_X76_Y39_N24
\mess[69]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[69]~26_combout\ = !mess(76)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(76),
	combout => \mess[69]~26_combout\);

-- Location: FF_X76_Y39_N25
\mess[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[69]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(69));

-- Location: LCCOMB_X76_Y39_N6
\mess[62]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[62]~feeder_combout\ = mess(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(69),
	combout => \mess[62]~feeder_combout\);

-- Location: FF_X76_Y39_N7
\mess[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(62));

-- Location: LCCOMB_X76_Y39_N12
\mess[55]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[55]~19_combout\ = !mess(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(62),
	combout => \mess[55]~19_combout\);

-- Location: FF_X76_Y39_N13
\mess[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[55]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(55));

-- Location: LCCOMB_X77_Y39_N16
\mess[48]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[48]~feeder_combout\ = mess(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(55),
	combout => \mess[48]~feeder_combout\);

-- Location: FF_X77_Y39_N17
\mess[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(48));

-- Location: LCCOMB_X77_Y39_N18
\mess[41]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[41]~12_combout\ = !mess(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(48),
	combout => \mess[41]~12_combout\);

-- Location: FF_X77_Y39_N19
\mess[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[41]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(41));

-- Location: LCCOMB_X77_Y39_N12
\mess[34]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[34]~9_combout\ = !mess(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(41),
	combout => \mess[34]~9_combout\);

-- Location: FF_X77_Y39_N13
\mess[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[34]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(34));

-- Location: LCCOMB_X77_Y39_N10
\mess[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[27]~feeder_combout\ = mess(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(34),
	combout => \mess[27]~feeder_combout\);

-- Location: FF_X77_Y39_N11
\mess[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(27));

-- Location: LCCOMB_X77_Y39_N28
\mess[20]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[20]~6_combout\ = !mess(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(27),
	combout => \mess[20]~6_combout\);

-- Location: FF_X77_Y39_N29
\mess[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(20));

-- Location: LCCOMB_X77_Y39_N6
\mess[13]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[13]~3_combout\ = !mess(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(20),
	combout => \mess[13]~3_combout\);

-- Location: FF_X77_Y39_N7
\mess[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(13));

-- Location: LCCOMB_X76_Y39_N10
\mess[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[6]~0_combout\ = !mess(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(13),
	combout => \mess[6]~0_combout\);

-- Location: FF_X76_Y39_N11
\mess[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(6));

-- Location: LCCOMB_X76_Y39_N8
\HEX5[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[6]~reg0feeder_combout\ = mess(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(6),
	combout => \HEX5[6]~reg0feeder_combout\);

-- Location: FF_X76_Y39_N9
\HEX5[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[6]~reg0_q\);

-- Location: LCCOMB_X76_Y52_N6
\mess[102]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[102]~43_combout\ = !mess(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(4),
	combout => \mess[102]~43_combout\);

-- Location: FF_X76_Y52_N7
\mess[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[102]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(102));

-- Location: LCCOMB_X76_Y52_N4
\mess[95]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[95]~39_combout\ = !mess(102)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(102),
	combout => \mess[95]~39_combout\);

-- Location: FF_X76_Y52_N5
\mess[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[95]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(95));

-- Location: LCCOMB_X75_Y52_N12
\mess[88]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[88]~feeder_combout\ = mess(95)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(95),
	combout => \mess[88]~feeder_combout\);

-- Location: FF_X75_Y52_N13
\mess[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[88]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(88));

-- Location: LCCOMB_X75_Y52_N2
\mess[81]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[81]~feeder_combout\ = mess(88)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(88),
	combout => \mess[81]~feeder_combout\);

-- Location: FF_X75_Y52_N3
\mess[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[81]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(81));

-- Location: LCCOMB_X75_Y52_N16
\mess[74]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[74]~feeder_combout\ = mess(81)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(81),
	combout => \mess[74]~feeder_combout\);

-- Location: FF_X75_Y52_N17
\mess[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(74));

-- Location: LCCOMB_X75_Y52_N10
\mess[67]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[67]~feeder_combout\ = mess(74)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(74),
	combout => \mess[67]~feeder_combout\);

-- Location: FF_X75_Y52_N11
\mess[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[67]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(67));

-- Location: LCCOMB_X75_Y52_N0
\mess[60]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[60]~feeder_combout\ = mess(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(67),
	combout => \mess[60]~feeder_combout\);

-- Location: FF_X75_Y52_N1
\mess[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(60));

-- Location: LCCOMB_X75_Y52_N18
\mess[53]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[53]~feeder_combout\ = mess(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(60),
	combout => \mess[53]~feeder_combout\);

-- Location: FF_X75_Y52_N19
\mess[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(53));

-- Location: LCCOMB_X75_Y52_N28
\mess[46]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[46]~16_combout\ = !mess(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(53),
	combout => \mess[46]~16_combout\);

-- Location: FF_X75_Y52_N29
\mess[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[46]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(46));

-- Location: LCCOMB_X75_Y52_N6
\mess[39]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[39]~13_combout\ = !mess(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(46),
	combout => \mess[39]~13_combout\);

-- Location: FF_X75_Y52_N7
\mess[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(39));

-- Location: LCCOMB_X75_Y52_N20
\mess[32]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[32]~feeder_combout\ = mess(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(39),
	combout => \mess[32]~feeder_combout\);

-- Location: FF_X75_Y52_N21
\mess[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(32));

-- Location: LCCOMB_X76_Y52_N18
\mess[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[25]~feeder_combout\ = mess(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(32),
	combout => \mess[25]~feeder_combout\);

-- Location: FF_X76_Y52_N19
\mess[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(25));

-- Location: LCCOMB_X76_Y52_N24
\mess[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[18]~feeder_combout\ = mess(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(25),
	combout => \mess[18]~feeder_combout\);

-- Location: FF_X76_Y52_N25
\mess[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(18));

-- Location: LCCOMB_X76_Y52_N2
\mess[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[11]~feeder_combout\ = mess(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(18),
	combout => \mess[11]~feeder_combout\);

-- Location: FF_X76_Y52_N3
\mess[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(11));

-- Location: LCCOMB_X76_Y52_N20
\mess[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[4]~feeder_combout\ = mess(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(11),
	combout => \mess[4]~feeder_combout\);

-- Location: FF_X76_Y52_N21
\mess[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(4));

-- Location: LCCOMB_X76_Y52_N16
\HEX5[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[5]~reg0feeder_combout\ = mess(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(4),
	combout => \HEX5[5]~reg0feeder_combout\);

-- Location: FF_X76_Y52_N17
\HEX5[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[5]~reg0_q\);

-- Location: LCCOMB_X76_Y52_N10
\HEX5[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[4]~reg0feeder_combout\ = mess(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(4),
	combout => \HEX5[4]~reg0feeder_combout\);

-- Location: FF_X76_Y52_N11
\HEX5[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[4]~reg0_q\);

-- Location: LCCOMB_X71_Y40_N18
\mess[101]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[101]~feeder_combout\ = mess(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(3),
	combout => \mess[101]~feeder_combout\);

-- Location: FF_X71_Y40_N19
\mess[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[101]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(101));

-- Location: LCCOMB_X71_Y40_N12
\mess[94]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[94]~40_combout\ = !mess(101)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(101),
	combout => \mess[94]~40_combout\);

-- Location: FF_X71_Y40_N13
\mess[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[94]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(94));

-- Location: LCCOMB_X71_Y40_N2
\mess[87]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[87]~35_combout\ = !mess(94)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(94),
	combout => \mess[87]~35_combout\);

-- Location: FF_X71_Y40_N3
\mess[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[87]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(87));

-- Location: LCCOMB_X71_Y40_N24
\mess[80]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[80]~feeder_combout\ = mess(87)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(87),
	combout => \mess[80]~feeder_combout\);

-- Location: FF_X71_Y40_N25
\mess[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[80]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(80));

-- Location: LCCOMB_X70_Y40_N24
\mess[73]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[73]~feeder_combout\ = mess(80)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(80),
	combout => \mess[73]~feeder_combout\);

-- Location: FF_X70_Y40_N25
\mess[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[73]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(73));

-- Location: LCCOMB_X70_Y40_N2
\mess[66]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[66]~27_combout\ = !mess(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(73),
	combout => \mess[66]~27_combout\);

-- Location: FF_X70_Y40_N3
\mess[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[66]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(66));

-- Location: LCCOMB_X70_Y40_N16
\mess[59]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[59]~23_combout\ = !mess(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(66),
	combout => \mess[59]~23_combout\);

-- Location: FF_X70_Y40_N17
\mess[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[59]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(59));

-- Location: LCCOMB_X70_Y40_N6
\mess[52]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[52]~20_combout\ = !mess(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(59),
	combout => \mess[52]~20_combout\);

-- Location: FF_X70_Y40_N7
\mess[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[52]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(52));

-- Location: LCCOMB_X70_Y40_N20
\mess[45]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[45]~17_combout\ = !mess(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(52),
	combout => \mess[45]~17_combout\);

-- Location: FF_X70_Y40_N21
\mess[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[45]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(45));

-- Location: LCCOMB_X70_Y40_N10
\mess[38]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[38]~14_combout\ = !mess(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(45),
	combout => \mess[38]~14_combout\);

-- Location: FF_X70_Y40_N11
\mess[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[38]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(38));

-- Location: LCCOMB_X70_Y40_N12
\mess[31]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[31]~10_combout\ = !mess(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(38),
	combout => \mess[31]~10_combout\);

-- Location: FF_X70_Y40_N13
\mess[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(31));

-- Location: LCCOMB_X70_Y40_N18
\mess[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[24]~feeder_combout\ = mess(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(31),
	combout => \mess[24]~feeder_combout\);

-- Location: FF_X70_Y40_N19
\mess[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(24));

-- Location: LCCOMB_X70_Y40_N0
\mess[17]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[17]~7_combout\ = !mess(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(24),
	combout => \mess[17]~7_combout\);

-- Location: FF_X70_Y40_N1
\mess[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[17]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(17));

-- Location: LCCOMB_X70_Y40_N14
\mess[10]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[10]~4_combout\ = !mess(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(17),
	combout => \mess[10]~4_combout\);

-- Location: FF_X70_Y40_N15
\mess[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(10));

-- Location: LCCOMB_X71_Y40_N10
\mess[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[3]~feeder_combout\ = mess(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(10),
	combout => \mess[3]~feeder_combout\);

-- Location: FF_X71_Y40_N11
\mess[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(3));

-- Location: LCCOMB_X71_Y40_N4
\HEX5[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[3]~reg0feeder_combout\ = mess(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(3),
	combout => \HEX5[3]~reg0feeder_combout\);

-- Location: FF_X71_Y40_N5
\HEX5[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[3]~reg0_q\);

-- Location: LCCOMB_X71_Y49_N24
\mess[100]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[100]~feeder_combout\ = mess(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(2),
	combout => \mess[100]~feeder_combout\);

-- Location: FF_X71_Y49_N25
\mess[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[100]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(100));

-- Location: LCCOMB_X70_Y49_N2
\mess[93]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[93]~feeder_combout\ = mess(100)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(100),
	combout => \mess[93]~feeder_combout\);

-- Location: FF_X70_Y49_N3
\mess[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[93]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(93));

-- Location: LCCOMB_X70_Y49_N24
\mess[86]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[86]~36_combout\ = !mess(93)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(93),
	combout => \mess[86]~36_combout\);

-- Location: FF_X70_Y49_N25
\mess[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[86]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(86));

-- Location: LCCOMB_X70_Y49_N18
\mess[79]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[79]~31_combout\ = !mess(86)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(86),
	combout => \mess[79]~31_combout\);

-- Location: FF_X70_Y49_N19
\mess[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[79]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(79));

-- Location: LCCOMB_X70_Y49_N16
\mess[72]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[72]~feeder_combout\ = mess(79)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(79),
	combout => \mess[72]~feeder_combout\);

-- Location: FF_X70_Y49_N17
\mess[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(72));

-- Location: LCCOMB_X70_Y49_N10
\mess[65]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[65]~feeder_combout\ = mess(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(72),
	combout => \mess[65]~feeder_combout\);

-- Location: FF_X70_Y49_N11
\mess[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[65]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(65));

-- Location: LCCOMB_X70_Y49_N12
\mess[58]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[58]~24_combout\ = !mess(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(65),
	combout => \mess[58]~24_combout\);

-- Location: FF_X70_Y49_N13
\mess[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[58]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(58));

-- Location: LCCOMB_X70_Y49_N6
\mess[51]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[51]~21_combout\ = !mess(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(58),
	combout => \mess[51]~21_combout\);

-- Location: FF_X70_Y49_N7
\mess[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[51]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(51));

-- Location: LCCOMB_X70_Y49_N28
\mess[44]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[44]~feeder_combout\ = mess(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(51),
	combout => \mess[44]~feeder_combout\);

-- Location: FF_X70_Y49_N29
\mess[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(44));

-- Location: LCCOMB_X70_Y49_N14
\mess[37]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[37]~feeder_combout\ = mess(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(44),
	combout => \mess[37]~feeder_combout\);

-- Location: FF_X70_Y49_N15
\mess[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(37));

-- Location: LCCOMB_X70_Y49_N8
\mess[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[30]~feeder_combout\ = mess(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(37),
	combout => \mess[30]~feeder_combout\);

-- Location: FF_X70_Y49_N9
\mess[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(30));

-- Location: LCCOMB_X71_Y49_N10
\mess[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[23]~feeder_combout\ = mess(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(30),
	combout => \mess[23]~feeder_combout\);

-- Location: FF_X71_Y49_N11
\mess[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(23));

-- Location: LCCOMB_X71_Y49_N28
\mess[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[16]~feeder_combout\ = mess(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(23),
	combout => \mess[16]~feeder_combout\);

-- Location: FF_X71_Y49_N29
\mess[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(16));

-- Location: LCCOMB_X71_Y49_N18
\mess[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[9]~feeder_combout\ = mess(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(16),
	combout => \mess[9]~feeder_combout\);

-- Location: FF_X71_Y49_N19
\mess[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(9));

-- Location: LCCOMB_X71_Y49_N12
\mess[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[2]~feeder_combout\ = mess(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(9),
	combout => \mess[2]~feeder_combout\);

-- Location: FF_X71_Y49_N13
\mess[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(2));

-- Location: LCCOMB_X71_Y49_N0
\HEX5[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[2]~reg0feeder_combout\ = mess(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(2),
	combout => \HEX5[2]~reg0feeder_combout\);

-- Location: FF_X71_Y49_N1
\HEX5[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[2]~reg0_q\);

-- Location: LCCOMB_X77_Y49_N2
\mess[99]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[99]~44_combout\ = !mess(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(1),
	combout => \mess[99]~44_combout\);

-- Location: FF_X77_Y49_N3
\mess[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[99]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(99));

-- Location: LCCOMB_X77_Y49_N20
\mess[92]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[92]~feeder_combout\ = mess(99)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(99),
	combout => \mess[92]~feeder_combout\);

-- Location: FF_X77_Y49_N21
\mess[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[92]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(92));

-- Location: LCCOMB_X77_Y49_N6
\mess[85]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[85]~37_combout\ = !mess(92)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(92),
	combout => \mess[85]~37_combout\);

-- Location: FF_X77_Y49_N7
\mess[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[85]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(85));

-- Location: LCCOMB_X77_Y49_N4
\mess[78]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[78]~32_combout\ = !mess(85)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(85),
	combout => \mess[78]~32_combout\);

-- Location: FF_X77_Y49_N5
\mess[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[78]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(78));

-- Location: LCCOMB_X76_Y49_N28
\mess[71]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[71]~29_combout\ = !mess(78)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(78),
	combout => \mess[71]~29_combout\);

-- Location: FF_X76_Y49_N29
\mess[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[71]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(71));

-- Location: LCCOMB_X76_Y49_N10
\mess[64]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[64]~28_combout\ = !mess(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(71),
	combout => \mess[64]~28_combout\);

-- Location: FF_X76_Y49_N11
\mess[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[64]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(64));

-- Location: LCCOMB_X76_Y49_N24
\mess[57]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[57]~feeder_combout\ = mess(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(64),
	combout => \mess[57]~feeder_combout\);

-- Location: FF_X76_Y49_N25
\mess[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[57]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(57));

-- Location: LCCOMB_X76_Y49_N18
\mess[50]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[50]~feeder_combout\ = mess(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(57),
	combout => \mess[50]~feeder_combout\);

-- Location: FF_X76_Y49_N19
\mess[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(50));

-- Location: LCCOMB_X76_Y49_N20
\mess[43]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[43]~feeder_combout\ = mess(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(50),
	combout => \mess[43]~feeder_combout\);

-- Location: FF_X76_Y49_N21
\mess[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(43));

-- Location: LCCOMB_X76_Y49_N2
\mess[36]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[36]~feeder_combout\ = mess(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(43),
	combout => \mess[36]~feeder_combout\);

-- Location: FF_X76_Y49_N3
\mess[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(36));

-- Location: LCCOMB_X76_Y49_N12
\mess[29]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[29]~11_combout\ = !mess(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(36),
	combout => \mess[29]~11_combout\);

-- Location: FF_X76_Y49_N13
\mess[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[29]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(29));

-- Location: LCCOMB_X77_Y49_N10
\mess[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[22]~feeder_combout\ = mess(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(29),
	combout => \mess[22]~feeder_combout\);

-- Location: FF_X77_Y49_N11
\mess[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(22));

-- Location: LCCOMB_X77_Y49_N12
\mess[15]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[15]~8_combout\ = !mess(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(22),
	combout => \mess[15]~8_combout\);

-- Location: FF_X77_Y49_N13
\mess[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(15));

-- Location: LCCOMB_X77_Y49_N18
\mess[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[8]~feeder_combout\ = mess(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(15),
	combout => \mess[8]~feeder_combout\);

-- Location: FF_X77_Y49_N19
\mess[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(8));

-- Location: LCCOMB_X77_Y49_N24
\mess[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[1]~1_combout\ = !mess(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(8),
	combout => \mess[1]~1_combout\);

-- Location: FF_X77_Y49_N25
\mess[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(1));

-- Location: LCCOMB_X77_Y49_N8
\HEX5[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[1]~reg0feeder_combout\ = mess(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(1),
	combout => \HEX5[1]~reg0feeder_combout\);

-- Location: FF_X77_Y49_N9
\HEX5[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[1]~reg0_q\);

-- Location: LCCOMB_X77_Y41_N2
\mess[98]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[98]~45_combout\ = !mess(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(0),
	combout => \mess[98]~45_combout\);

-- Location: FF_X77_Y41_N3
\mess[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[98]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(98));

-- Location: LCCOMB_X77_Y41_N24
\mess[91]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[91]~41_combout\ = !mess(98)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(98),
	combout => \mess[91]~41_combout\);

-- Location: FF_X77_Y41_N25
\mess[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[91]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(91));

-- Location: LCCOMB_X76_Y41_N16
\mess[84]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[84]~feeder_combout\ = mess(91)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(91),
	combout => \mess[84]~feeder_combout\);

-- Location: FF_X76_Y41_N17
\mess[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[84]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(84));

-- Location: LCCOMB_X76_Y41_N18
\mess[77]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[77]~33_combout\ = !mess(84)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(84),
	combout => \mess[77]~33_combout\);

-- Location: FF_X76_Y41_N19
\mess[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[77]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(77));

-- Location: LCCOMB_X76_Y41_N20
\mess[70]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[70]~30_combout\ = !mess(77)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(77),
	combout => \mess[70]~30_combout\);

-- Location: FF_X76_Y41_N21
\mess[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[70]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(70));

-- Location: LCCOMB_X76_Y41_N6
\mess[63]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[63]~feeder_combout\ = mess(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(70),
	combout => \mess[63]~feeder_combout\);

-- Location: FF_X76_Y41_N7
\mess[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[63]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(63));

-- Location: LCCOMB_X76_Y41_N24
\mess[56]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[56]~25_combout\ = !mess(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(63),
	combout => \mess[56]~25_combout\);

-- Location: FF_X76_Y41_N25
\mess[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[56]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(56));

-- Location: LCCOMB_X76_Y41_N10
\mess[49]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[49]~22_combout\ = !mess(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(56),
	combout => \mess[49]~22_combout\);

-- Location: FF_X76_Y41_N11
\mess[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[49]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(49));

-- Location: LCCOMB_X76_Y41_N28
\mess[42]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[42]~18_combout\ = !mess(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(49),
	combout => \mess[42]~18_combout\);

-- Location: FF_X76_Y41_N29
\mess[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[42]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(42));

-- Location: LCCOMB_X76_Y41_N2
\mess[35]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[35]~15_combout\ = !mess(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(42),
	combout => \mess[35]~15_combout\);

-- Location: FF_X76_Y41_N3
\mess[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[35]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(35));

-- Location: LCCOMB_X76_Y41_N12
\mess[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[28]~feeder_combout\ = mess(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(35),
	combout => \mess[28]~feeder_combout\);

-- Location: FF_X76_Y41_N13
\mess[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(28));

-- Location: LCCOMB_X77_Y41_N10
\mess[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[21]~feeder_combout\ = mess(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(28),
	combout => \mess[21]~feeder_combout\);

-- Location: FF_X77_Y41_N11
\mess[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(21));

-- Location: LCCOMB_X77_Y41_N28
\mess[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[14]~feeder_combout\ = mess(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(21),
	combout => \mess[14]~feeder_combout\);

-- Location: FF_X77_Y41_N29
\mess[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(14));

-- Location: LCCOMB_X77_Y41_N18
\mess[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[7]~5_combout\ = !mess(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(14),
	combout => \mess[7]~5_combout\);

-- Location: FF_X77_Y41_N19
\mess[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(7));

-- Location: LCCOMB_X77_Y41_N12
\mess[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[0]~2_combout\ = !mess(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(7),
	combout => \mess[0]~2_combout\);

-- Location: FF_X77_Y41_N13
\mess[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(0));

-- Location: LCCOMB_X77_Y41_N4
\HEX5[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[0]~reg0feeder_combout\ = mess(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(0),
	combout => \HEX5[0]~reg0feeder_combout\);

-- Location: FF_X77_Y41_N5
\HEX5[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[0]~reg0_q\);

-- Location: LCCOMB_X77_Y39_N8
\HEX4[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[6]~reg0feeder_combout\ = mess(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(13),
	combout => \HEX4[6]~reg0feeder_combout\);

-- Location: FF_X77_Y39_N9
\HEX4[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[6]~reg0_q\);

-- Location: LCCOMB_X76_Y52_N8
\HEX4[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[5]~reg0feeder_combout\ = mess(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(11),
	combout => \HEX4[5]~reg0feeder_combout\);

-- Location: FF_X76_Y52_N9
\HEX4[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[5]~reg0_q\);

-- Location: LCCOMB_X76_Y52_N26
\HEX4[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[4]~reg0feeder_combout\ = mess(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(11),
	combout => \HEX4[4]~reg0feeder_combout\);

-- Location: FF_X76_Y52_N27
\HEX4[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[4]~reg0_q\);

-- Location: LCCOMB_X70_Y40_N8
\HEX4[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[3]~reg0feeder_combout\ = mess(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(10),
	combout => \HEX4[3]~reg0feeder_combout\);

-- Location: FF_X70_Y40_N9
\HEX4[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[3]~reg0_q\);

-- Location: LCCOMB_X71_Y49_N30
\HEX4[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[2]~reg0feeder_combout\ = mess(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(9),
	combout => \HEX4[2]~reg0feeder_combout\);

-- Location: FF_X71_Y49_N31
\HEX4[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[2]~reg0_q\);

-- Location: LCCOMB_X77_Y49_N30
\HEX4[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[1]~reg0feeder_combout\ = mess(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(8),
	combout => \HEX4[1]~reg0feeder_combout\);

-- Location: FF_X77_Y49_N31
\HEX4[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[1]~reg0_q\);

-- Location: LCCOMB_X77_Y41_N30
\HEX4[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[0]~reg0feeder_combout\ = mess(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(7),
	combout => \HEX4[0]~reg0feeder_combout\);

-- Location: FF_X77_Y41_N31
\HEX4[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[0]~reg0_q\);

-- Location: LCCOMB_X77_Y39_N2
\HEX3[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[6]~reg0feeder_combout\ = mess(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(20),
	combout => \HEX3[6]~reg0feeder_combout\);

-- Location: FF_X77_Y39_N3
\HEX3[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[6]~reg0_q\);

-- Location: LCCOMB_X76_Y52_N12
\HEX3[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[5]~reg0feeder_combout\ = mess(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(18),
	combout => \HEX3[5]~reg0feeder_combout\);

-- Location: FF_X76_Y52_N13
\HEX3[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[5]~reg0_q\);

-- Location: LCCOMB_X76_Y52_N14
\HEX3[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[4]~reg0feeder_combout\ = mess(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(18),
	combout => \HEX3[4]~reg0feeder_combout\);

-- Location: FF_X76_Y52_N15
\HEX3[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[4]~reg0_q\);

-- Location: LCCOMB_X70_Y40_N22
\HEX3[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[3]~reg0feeder_combout\ = mess(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(17),
	combout => \HEX3[3]~reg0feeder_combout\);

-- Location: FF_X70_Y40_N23
\HEX3[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[3]~reg0_q\);

-- Location: LCCOMB_X71_Y49_N20
\HEX3[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[2]~reg0feeder_combout\ = mess(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(16),
	combout => \HEX3[2]~reg0feeder_combout\);

-- Location: FF_X71_Y49_N21
\HEX3[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[2]~reg0_q\);

-- Location: LCCOMB_X77_Y49_N28
\HEX3[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[1]~reg0feeder_combout\ = mess(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(15),
	combout => \HEX3[1]~reg0feeder_combout\);

-- Location: FF_X77_Y49_N29
\HEX3[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[1]~reg0_q\);

-- Location: LCCOMB_X77_Y41_N20
\HEX3[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[0]~reg0feeder_combout\ = mess(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(14),
	combout => \HEX3[0]~reg0feeder_combout\);

-- Location: FF_X77_Y41_N21
\HEX3[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[0]~reg0_q\);

-- Location: LCCOMB_X77_Y39_N0
\HEX2[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[6]~reg0feeder_combout\ = mess(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(27),
	combout => \HEX2[6]~reg0feeder_combout\);

-- Location: FF_X77_Y39_N1
\HEX2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[6]~reg0_q\);

-- Location: LCCOMB_X76_Y52_N28
\HEX2[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[5]~reg0feeder_combout\ = mess(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(25),
	combout => \HEX2[5]~reg0feeder_combout\);

-- Location: FF_X76_Y52_N29
\HEX2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[5]~reg0_q\);

-- Location: LCCOMB_X76_Y52_N30
\HEX2[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[4]~reg0feeder_combout\ = mess(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(25),
	combout => \HEX2[4]~reg0feeder_combout\);

-- Location: FF_X76_Y52_N31
\HEX2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[4]~reg0_q\);

-- Location: LCCOMB_X70_Y40_N28
\HEX2[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[3]~reg0feeder_combout\ = mess(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(24),
	combout => \HEX2[3]~reg0feeder_combout\);

-- Location: FF_X70_Y40_N29
\HEX2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[3]~reg0_q\);

-- Location: LCCOMB_X71_Y49_N26
\HEX2[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[2]~reg0feeder_combout\ = mess(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(23),
	combout => \HEX2[2]~reg0feeder_combout\);

-- Location: FF_X71_Y49_N27
\HEX2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[2]~reg0_q\);

-- Location: LCCOMB_X77_Y49_N26
\HEX2[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[1]~reg0feeder_combout\ = mess(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(22),
	combout => \HEX2[1]~reg0feeder_combout\);

-- Location: FF_X77_Y49_N27
\HEX2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[1]~reg0_q\);

-- Location: LCCOMB_X77_Y41_N22
\HEX2[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[0]~reg0feeder_combout\ = mess(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(21),
	combout => \HEX2[0]~reg0feeder_combout\);

-- Location: FF_X77_Y41_N23
\HEX2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[0]~reg0_q\);

-- Location: LCCOMB_X77_Y39_N22
\HEX1[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[6]~reg0feeder_combout\ = mess(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(34),
	combout => \HEX1[6]~reg0feeder_combout\);

-- Location: FF_X77_Y39_N23
\HEX1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[6]~reg0_q\);

-- Location: LCCOMB_X75_Y52_N8
\HEX1[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[5]~reg0feeder_combout\ = mess(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(32),
	combout => \HEX1[5]~reg0feeder_combout\);

-- Location: FF_X75_Y52_N9
\HEX1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[5]~reg0_q\);

-- Location: LCCOMB_X75_Y52_N30
\HEX1[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[4]~reg0feeder_combout\ = mess(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(32),
	combout => \HEX1[4]~reg0feeder_combout\);

-- Location: FF_X75_Y52_N31
\HEX1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[4]~reg0_q\);

-- Location: LCCOMB_X70_Y40_N26
\HEX1[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[3]~reg0feeder_combout\ = mess(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(31),
	combout => \HEX1[3]~reg0feeder_combout\);

-- Location: FF_X70_Y40_N27
\HEX1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[3]~reg0_q\);

-- Location: LCCOMB_X70_Y49_N20
\HEX1[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[2]~reg0feeder_combout\ = mess(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(30),
	combout => \HEX1[2]~reg0feeder_combout\);

-- Location: FF_X70_Y49_N21
\HEX1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[2]~reg0_q\);

-- Location: LCCOMB_X76_Y49_N4
\HEX1[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[1]~reg0feeder_combout\ = mess(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(29),
	combout => \HEX1[1]~reg0feeder_combout\);

-- Location: FF_X76_Y49_N5
\HEX1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[1]~reg0_q\);

-- Location: LCCOMB_X76_Y41_N4
\HEX1[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[0]~reg0feeder_combout\ = mess(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(28),
	combout => \HEX1[0]~reg0feeder_combout\);

-- Location: FF_X76_Y41_N5
\HEX1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[0]~reg0_q\);

-- Location: LCCOMB_X77_Y39_N24
\HEX0[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[6]~reg0feeder_combout\ = mess(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(41),
	combout => \HEX0[6]~reg0feeder_combout\);

-- Location: FF_X77_Y39_N25
\HEX0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[6]~reg0_q\);

-- Location: LCCOMB_X75_Y52_N4
\HEX0[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[5]~reg0feeder_combout\ = mess(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(39),
	combout => \HEX0[5]~reg0feeder_combout\);

-- Location: FF_X75_Y52_N5
\HEX0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[5]~reg0_q\);

-- Location: LCCOMB_X75_Y52_N22
\HEX0[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[4]~reg0feeder_combout\ = mess(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(39),
	combout => \HEX0[4]~reg0feeder_combout\);

-- Location: FF_X75_Y52_N23
\HEX0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[4]~reg0_q\);

-- Location: LCCOMB_X70_Y40_N4
\HEX0[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[3]~reg0feeder_combout\ = mess(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(38),
	combout => \HEX0[3]~reg0feeder_combout\);

-- Location: FF_X70_Y40_N5
\HEX0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[3]~reg0_q\);

-- Location: LCCOMB_X70_Y49_N26
\HEX0[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[2]~reg0feeder_combout\ = mess(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(37),
	combout => \HEX0[2]~reg0feeder_combout\);

-- Location: FF_X70_Y49_N27
\HEX0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[2]~reg0_q\);

-- Location: LCCOMB_X76_Y49_N22
\HEX0[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[1]~reg0feeder_combout\ = mess(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(36),
	combout => \HEX0[1]~reg0feeder_combout\);

-- Location: FF_X76_Y49_N23
\HEX0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[1]~reg0_q\);

-- Location: LCCOMB_X76_Y41_N26
\HEX0[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[0]~reg0feeder_combout\ = mess(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(35),
	combout => \HEX0[0]~reg0feeder_combout\);

-- Location: FF_X76_Y41_N27
\HEX0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[0]~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;
END structure;


