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

-- DATE "03/06/2020 10:00:49"

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
	trigger0 : IN std_logic;
	trigger1 : IN std_logic;
	trigger2 : IN std_logic;
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END septseg;

-- Design Ports Information
-- trigger2	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- trigger0	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trigger1	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_trigger0 : std_logic;
SIGNAL ww_trigger1 : std_logic;
SIGNAL ww_trigger2 : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
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
SIGNAL \trigger2~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led0~output_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
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
SIGNAL \trigger0~input_o\ : std_logic;
SIGNAL \trigger1~input_o\ : std_logic;
SIGNAL \led1$latch~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \s_clk_compte[0]~26_combout\ : std_logic;
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
SIGNAL \s_clk_compte[24]~75\ : std_logic;
SIGNAL \s_clk_compte[25]~76_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \s_clk_lent~q\ : std_logic;
SIGNAL \s_clk_lent~clkctrl_outclk\ : std_logic;
SIGNAL \mess[349]~150_combout\ : std_logic;
SIGNAL \mess[0]~0_combout\ : std_logic;
SIGNAL \mess[342]~feeder_combout\ : std_logic;
SIGNAL \mess[335]~feeder_combout\ : std_logic;
SIGNAL \mess[328]~feeder_combout\ : std_logic;
SIGNAL \mess[321]~145_combout\ : std_logic;
SIGNAL \mess[314]~141_combout\ : std_logic;
SIGNAL \mess[307]~feeder_combout\ : std_logic;
SIGNAL \mess[300]~136_combout\ : std_logic;
SIGNAL \mess[293]~132_combout\ : std_logic;
SIGNAL \mess[286]~130_combout\ : std_logic;
SIGNAL \mess[279]~127_combout\ : std_logic;
SIGNAL \mess[272]~feeder_combout\ : std_logic;
SIGNAL \mess[265]~119_combout\ : std_logic;
SIGNAL \mess[258]~115_combout\ : std_logic;
SIGNAL \mess[251]~feeder_combout\ : std_logic;
SIGNAL \mess[244]~110_combout\ : std_logic;
SIGNAL \mess[237]~feeder_combout\ : std_logic;
SIGNAL \mess[230]~103_combout\ : std_logic;
SIGNAL \mess[223]~feeder_combout\ : std_logic;
SIGNAL \mess[216]~feeder_combout\ : std_logic;
SIGNAL \mess[209]~feeder_combout\ : std_logic;
SIGNAL \mess[202]~89_combout\ : std_logic;
SIGNAL \mess[195]~feeder_combout\ : std_logic;
SIGNAL \mess[188]~82_combout\ : std_logic;
SIGNAL \mess[181]~77_combout\ : std_logic;
SIGNAL \mess[174]~73_combout\ : std_logic;
SIGNAL \mess[167]~feeder_combout\ : std_logic;
SIGNAL \mess[160]~feeder_combout\ : std_logic;
SIGNAL \mess[153]~65_combout\ : std_logic;
SIGNAL \mess[146]~feeder_combout\ : std_logic;
SIGNAL \mess[139]~58_combout\ : std_logic;
SIGNAL \mess[132]~feeder_combout\ : std_logic;
SIGNAL \mess[125]~48_combout\ : std_logic;
SIGNAL \mess[118]~47_combout\ : std_logic;
SIGNAL \mess[111]~43_combout\ : std_logic;
SIGNAL \mess[104]~40_combout\ : std_logic;
SIGNAL \mess[97]~feeder_combout\ : std_logic;
SIGNAL \mess[90]~37_combout\ : std_logic;
SIGNAL \mess[83]~feeder_combout\ : std_logic;
SIGNAL \mess[76]~feeder_combout\ : std_logic;
SIGNAL \mess[69]~28_combout\ : std_logic;
SIGNAL \mess[62]~24_combout\ : std_logic;
SIGNAL \mess[55]~21_combout\ : std_logic;
SIGNAL \mess[48]~feeder_combout\ : std_logic;
SIGNAL \mess[41]~13_combout\ : std_logic;
SIGNAL \mess[34]~10_combout\ : std_logic;
SIGNAL \mess[27]~feeder_combout\ : std_logic;
SIGNAL \mess[20]~7_combout\ : std_logic;
SIGNAL \mess[13]~4_combout\ : std_logic;
SIGNAL \mess[6]~1_combout\ : std_logic;
SIGNAL \HEX5[6]~0_combout\ : std_logic;
SIGNAL \HEX5[6]~reg0_q\ : std_logic;
SIGNAL \mess[348]~151_combout\ : std_logic;
SIGNAL \mess[341]~148_combout\ : std_logic;
SIGNAL \mess[334]~feeder_combout\ : std_logic;
SIGNAL \mess[327]~feeder_combout\ : std_logic;
SIGNAL \mess[320]~feeder_combout\ : std_logic;
SIGNAL \mess[313]~feeder_combout\ : std_logic;
SIGNAL \mess[306]~feeder_combout\ : std_logic;
SIGNAL \mess[299]~feeder_combout\ : std_logic;
SIGNAL \mess[292]~feeder_combout\ : std_logic;
SIGNAL \mess[285]~feeder_combout\ : std_logic;
SIGNAL \mess[278]~128_combout\ : std_logic;
SIGNAL \mess[271]~feeder_combout\ : std_logic;
SIGNAL \mess[264]~120_combout\ : std_logic;
SIGNAL \mess[257]~feeder_combout\ : std_logic;
SIGNAL \mess[250]~feeder_combout\ : std_logic;
SIGNAL \mess[243]~feeder_combout\ : std_logic;
SIGNAL \mess[236]~feeder_combout\ : std_logic;
SIGNAL \mess[229]~feeder_combout\ : std_logic;
SIGNAL \mess[222]~102_combout\ : std_logic;
SIGNAL \mess[215]~feeder_combout\ : std_logic;
SIGNAL \mess[208]~92_combout\ : std_logic;
SIGNAL \mess[201]~feeder_combout\ : std_logic;
SIGNAL \mess[194]~feeder_combout\ : std_logic;
SIGNAL \mess[187]~83_combout\ : std_logic;
SIGNAL \mess[180]~78_combout\ : std_logic;
SIGNAL \mess[173]~feeder_combout\ : std_logic;
SIGNAL \mess[166]~feeder_combout\ : std_logic;
SIGNAL \mess[159]~feeder_combout\ : std_logic;
SIGNAL \mess[152]~feeder_combout\ : std_logic;
SIGNAL \mess[145]~feeder_combout\ : std_logic;
SIGNAL \mess[138]~feeder_combout\ : std_logic;
SIGNAL \mess[131]~54_combout\ : std_logic;
SIGNAL \mess[124]~49_combout\ : std_logic;
SIGNAL \mess[117]~feeder_combout\ : std_logic;
SIGNAL \mess[110]~feeder_combout\ : std_logic;
SIGNAL \mess[103]~feeder_combout\ : std_logic;
SIGNAL \mess[96]~feeder_combout\ : std_logic;
SIGNAL \mess[89]~feeder_combout\ : std_logic;
SIGNAL \mess[82]~feeder_combout\ : std_logic;
SIGNAL \mess[75]~feeder_combout\ : std_logic;
SIGNAL \mess[68]~feeder_combout\ : std_logic;
SIGNAL \mess[61]~feeder_combout\ : std_logic;
SIGNAL \mess[54]~22_combout\ : std_logic;
SIGNAL \mess[47]~feeder_combout\ : std_logic;
SIGNAL \mess[40]~14_combout\ : std_logic;
SIGNAL \mess[33]~feeder_combout\ : std_logic;
SIGNAL \mess[26]~feeder_combout\ : std_logic;
SIGNAL \mess[19]~feeder_combout\ : std_logic;
SIGNAL \mess[12]~feeder_combout\ : std_logic;
SIGNAL \mess[5]~feeder_combout\ : std_logic;
SIGNAL \HEX5[5]~1_combout\ : std_logic;
SIGNAL \HEX5[5]~reg0_q\ : std_logic;
SIGNAL \mess[347]~152_combout\ : std_logic;
SIGNAL \mess[340]~149_combout\ : std_logic;
SIGNAL \mess[333]~feeder_combout\ : std_logic;
SIGNAL \mess[326]~feeder_combout\ : std_logic;
SIGNAL \mess[319]~feeder_combout\ : std_logic;
SIGNAL \mess[312]~feeder_combout\ : std_logic;
SIGNAL \mess[305]~feeder_combout\ : std_logic;
SIGNAL \mess[298]~feeder_combout\ : std_logic;
SIGNAL \mess[291]~feeder_combout\ : std_logic;
SIGNAL \mess[284]~feeder_combout\ : std_logic;
SIGNAL \mess[277]~feeder_combout\ : std_logic;
SIGNAL \mess[270]~124_combout\ : std_logic;
SIGNAL \mess[263]~121_combout\ : std_logic;
SIGNAL \mess[256]~feeder_combout\ : std_logic;
SIGNAL \mess[249]~feeder_combout\ : std_logic;
SIGNAL \mess[242]~feeder_combout\ : std_logic;
SIGNAL \mess[235]~107_combout\ : std_logic;
SIGNAL \mess[228]~104_combout\ : std_logic;
SIGNAL \mess[221]~feeder_combout\ : std_logic;
SIGNAL \mess[214]~98_combout\ : std_logic;
SIGNAL \mess[207]~93_combout\ : std_logic;
SIGNAL \mess[200]~feeder_combout\ : std_logic;
SIGNAL \mess[193]~87_combout\ : std_logic;
SIGNAL \mess[186]~feeder_combout\ : std_logic;
SIGNAL \mess[179]~79_combout\ : std_logic;
SIGNAL \mess[172]~feeder_combout\ : std_logic;
SIGNAL \mess[165]~feeder_combout\ : std_logic;
SIGNAL \mess[158]~feeder_combout\ : std_logic;
SIGNAL \mess[151]~feeder_combout\ : std_logic;
SIGNAL \mess[144]~feeder_combout\ : std_logic;
SIGNAL \mess[137]~feeder_combout\ : std_logic;
SIGNAL \mess[130]~55_combout\ : std_logic;
SIGNAL \mess[123]~50_combout\ : std_logic;
SIGNAL \mess[116]~feeder_combout\ : std_logic;
SIGNAL \mess[109]~feeder_combout\ : std_logic;
SIGNAL \mess[102]~feeder_combout\ : std_logic;
SIGNAL \mess[95]~feeder_combout\ : std_logic;
SIGNAL \mess[88]~feeder_combout\ : std_logic;
SIGNAL \mess[81]~feeder_combout\ : std_logic;
SIGNAL \mess[74]~33_combout\ : std_logic;
SIGNAL \mess[67]~29_combout\ : std_logic;
SIGNAL \mess[60]~feeder_combout\ : std_logic;
SIGNAL \mess[53]~feeder_combout\ : std_logic;
SIGNAL \mess[46]~18_combout\ : std_logic;
SIGNAL \mess[39]~15_combout\ : std_logic;
SIGNAL \mess[32]~feeder_combout\ : std_logic;
SIGNAL \mess[25]~feeder_combout\ : std_logic;
SIGNAL \mess[18]~feeder_combout\ : std_logic;
SIGNAL \mess[11]~feeder_combout\ : std_logic;
SIGNAL \mess[4]~feeder_combout\ : std_logic;
SIGNAL \HEX5[4]~2_combout\ : std_logic;
SIGNAL \HEX5[4]~reg0_q\ : std_logic;
SIGNAL \mess[346]~feeder_combout\ : std_logic;
SIGNAL \mess[339]~feeder_combout\ : std_logic;
SIGNAL \mess[332]~147_combout\ : std_logic;
SIGNAL \mess[325]~feeder_combout\ : std_logic;
SIGNAL \mess[318]~feeder_combout\ : std_logic;
SIGNAL \mess[311]~142_combout\ : std_logic;
SIGNAL \mess[304]~feeder_combout\ : std_logic;
SIGNAL \mess[297]~137_combout\ : std_logic;
SIGNAL \mess[290]~133_combout\ : std_logic;
SIGNAL \mess[283]~feeder_combout\ : std_logic;
SIGNAL \mess[276]~feeder_combout\ : std_logic;
SIGNAL \mess[269]~feeder_combout\ : std_logic;
SIGNAL \mess[262]~122_combout\ : std_logic;
SIGNAL \mess[255]~116_combout\ : std_logic;
SIGNAL \mess[248]~feeder_combout\ : std_logic;
SIGNAL \mess[241]~111_combout\ : std_logic;
SIGNAL \mess[234]~feeder_combout\ : std_logic;
SIGNAL \mess[227]~feeder_combout\ : std_logic;
SIGNAL \mess[220]~feeder_combout\ : std_logic;
SIGNAL \mess[213]~99_combout\ : std_logic;
SIGNAL \mess[206]~94_combout\ : std_logic;
SIGNAL \mess[199]~feeder_combout\ : std_logic;
SIGNAL \mess[192]~feeder_combout\ : std_logic;
SIGNAL \mess[185]~84_combout\ : std_logic;
SIGNAL \mess[178]~80_combout\ : std_logic;
SIGNAL \mess[171]~74_combout\ : std_logic;
SIGNAL \mess[164]~feeder_combout\ : std_logic;
SIGNAL \mess[157]~feeder_combout\ : std_logic;
SIGNAL \mess[150]~66_combout\ : std_logic;
SIGNAL \mess[143]~62_combout\ : std_logic;
SIGNAL \mess[136]~59_combout\ : std_logic;
SIGNAL \mess[129]~56_combout\ : std_logic;
SIGNAL \mess[122]~feeder_combout\ : std_logic;
SIGNAL \mess[115]~feeder_combout\ : std_logic;
SIGNAL \mess[108]~44_combout\ : std_logic;
SIGNAL \mess[101]~41_combout\ : std_logic;
SIGNAL \mess[94]~feeder_combout\ : std_logic;
SIGNAL \mess[87]~38_combout\ : std_logic;
SIGNAL \mess[80]~feeder_combout\ : std_logic;
SIGNAL \mess[73]~feeder_combout\ : std_logic;
SIGNAL \mess[66]~30_combout\ : std_logic;
SIGNAL \mess[59]~feeder_combout\ : std_logic;
SIGNAL \mess[52]~feeder_combout\ : std_logic;
SIGNAL \mess[45]~feeder_combout\ : std_logic;
SIGNAL \mess[38]~16_combout\ : std_logic;
SIGNAL \mess[31]~11_combout\ : std_logic;
SIGNAL \mess[24]~feeder_combout\ : std_logic;
SIGNAL \mess[17]~8_combout\ : std_logic;
SIGNAL \mess[10]~5_combout\ : std_logic;
SIGNAL \mess[3]~feeder_combout\ : std_logic;
SIGNAL \HEX5[3]~reg0_q\ : std_logic;
SIGNAL \mess[345]~feeder_combout\ : std_logic;
SIGNAL \mess[338]~feeder_combout\ : std_logic;
SIGNAL \mess[331]~feeder_combout\ : std_logic;
SIGNAL \mess[324]~feeder_combout\ : std_logic;
SIGNAL \mess[317]~feeder_combout\ : std_logic;
SIGNAL \mess[310]~143_combout\ : std_logic;
SIGNAL \mess[303]~138_combout\ : std_logic;
SIGNAL \mess[296]~feeder_combout\ : std_logic;
SIGNAL \mess[289]~feeder_combout\ : std_logic;
SIGNAL \mess[282]~131_combout\ : std_logic;
SIGNAL \mess[275]~feeder_combout\ : std_logic;
SIGNAL \mess[268]~125_combout\ : std_logic;
SIGNAL \mess[261]~feeder_combout\ : std_logic;
SIGNAL \mess[254]~117_combout\ : std_logic;
SIGNAL \mess[247]~112_combout\ : std_logic;
SIGNAL \mess[240]~feeder_combout\ : std_logic;
SIGNAL \mess[233]~108_combout\ : std_logic;
SIGNAL \mess[226]~feeder_combout\ : std_logic;
SIGNAL \mess[219]~feeder_combout\ : std_logic;
SIGNAL \mess[212]~100_combout\ : std_logic;
SIGNAL \mess[205]~95_combout\ : std_logic;
SIGNAL \mess[198]~90_combout\ : std_logic;
SIGNAL \mess[191]~88_combout\ : std_logic;
SIGNAL \mess[184]~85_combout\ : std_logic;
SIGNAL \mess[177]~feeder_combout\ : std_logic;
SIGNAL \mess[170]~75_combout\ : std_logic;
SIGNAL \mess[163]~70_combout\ : std_logic;
SIGNAL \mess[156]~feeder_combout\ : std_logic;
SIGNAL \mess[149]~feeder_combout\ : std_logic;
SIGNAL \mess[142]~63_combout\ : std_logic;
SIGNAL \mess[135]~60_combout\ : std_logic;
SIGNAL \mess[128]~feeder_combout\ : std_logic;
SIGNAL \mess[121]~51_combout\ : std_logic;
SIGNAL \mess[114]~feeder_combout\ : std_logic;
SIGNAL \mess[107]~45_combout\ : std_logic;
SIGNAL \mess[93]~feeder_combout\ : std_logic;
SIGNAL \mess[86]~feeder_combout\ : std_logic;
SIGNAL \mess[79]~feeder_combout\ : std_logic;
SIGNAL \mess[72]~34_combout\ : std_logic;
SIGNAL \mess[65]~31_combout\ : std_logic;
SIGNAL \mess[58]~25_combout\ : std_logic;
SIGNAL \mess[51]~feeder_combout\ : std_logic;
SIGNAL \mess[44]~19_combout\ : std_logic;
SIGNAL \mess[37]~feeder_combout\ : std_logic;
SIGNAL \mess[30]~feeder_combout\ : std_logic;
SIGNAL \mess[23]~feeder_combout\ : std_logic;
SIGNAL \mess[16]~feeder_combout\ : std_logic;
SIGNAL \mess[9]~feeder_combout\ : std_logic;
SIGNAL \mess[2]~feeder_combout\ : std_logic;
SIGNAL \HEX5[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX5[2]~reg0_q\ : std_logic;
SIGNAL \mess[344]~153_combout\ : std_logic;
SIGNAL \mess[337]~feeder_combout\ : std_logic;
SIGNAL \mess[330]~feeder_combout\ : std_logic;
SIGNAL \mess[323]~feeder_combout\ : std_logic;
SIGNAL \mess[316]~feeder_combout\ : std_logic;
SIGNAL \mess[309]~144_combout\ : std_logic;
SIGNAL \mess[302]~139_combout\ : std_logic;
SIGNAL \mess[295]~feeder_combout\ : std_logic;
SIGNAL \mess[288]~134_combout\ : std_logic;
SIGNAL \mess[281]~feeder_combout\ : std_logic;
SIGNAL \mess[274]~129_combout\ : std_logic;
SIGNAL \mess[267]~feeder_combout\ : std_logic;
SIGNAL \mess[260]~feeder_combout\ : std_logic;
SIGNAL \mess[253]~118_combout\ : std_logic;
SIGNAL \mess[246]~113_combout\ : std_logic;
SIGNAL \mess[239]~feeder_combout\ : std_logic;
SIGNAL \mess[232]~feeder_combout\ : std_logic;
SIGNAL \mess[225]~105_combout\ : std_logic;
SIGNAL \mess[218]~feeder_combout\ : std_logic;
SIGNAL \mess[211]~101_combout\ : std_logic;
SIGNAL \mess[204]~96_combout\ : std_logic;
SIGNAL \mess[197]~91_combout\ : std_logic;
SIGNAL \mess[190]~feeder_combout\ : std_logic;
SIGNAL \mess[183]~feeder_combout\ : std_logic;
SIGNAL \mess[176]~feeder_combout\ : std_logic;
SIGNAL \mess[169]~76_combout\ : std_logic;
SIGNAL \mess[162]~71_combout\ : std_logic;
SIGNAL \mess[155]~68_combout\ : std_logic;
SIGNAL \mess[148]~67_combout\ : std_logic;
SIGNAL \mess[141]~feeder_combout\ : std_logic;
SIGNAL \mess[134]~feeder_combout\ : std_logic;
SIGNAL \mess[127]~feeder_combout\ : std_logic;
SIGNAL \mess[120]~52_combout\ : std_logic;
SIGNAL \mess[113]~feeder_combout\ : std_logic;
SIGNAL \mess[106]~46_combout\ : std_logic;
SIGNAL \mess[99]~42_combout\ : std_logic;
SIGNAL \mess[92]~feeder_combout\ : std_logic;
SIGNAL \mess[85]~39_combout\ : std_logic;
SIGNAL \mess[78]~feeder_combout\ : std_logic;
SIGNAL \mess[71]~feeder_combout\ : std_logic;
SIGNAL \mess[64]~feeder_combout\ : std_logic;
SIGNAL \mess[57]~26_combout\ : std_logic;
SIGNAL \mess[50]~23_combout\ : std_logic;
SIGNAL \mess[43]~feeder_combout\ : std_logic;
SIGNAL \mess[36]~feeder_combout\ : std_logic;
SIGNAL \mess[29]~12_combout\ : std_logic;
SIGNAL \mess[22]~feeder_combout\ : std_logic;
SIGNAL \mess[15]~9_combout\ : std_logic;
SIGNAL \mess[8]~feeder_combout\ : std_logic;
SIGNAL \mess[1]~2_combout\ : std_logic;
SIGNAL \HEX5[1]~3_combout\ : std_logic;
SIGNAL \HEX5[1]~reg0_q\ : std_logic;
SIGNAL \mess[343]~154_combout\ : std_logic;
SIGNAL \mess[336]~feeder_combout\ : std_logic;
SIGNAL \mess[329]~feeder_combout\ : std_logic;
SIGNAL \mess[322]~feeder_combout\ : std_logic;
SIGNAL \mess[315]~146_combout\ : std_logic;
SIGNAL \mess[308]~feeder_combout\ : std_logic;
SIGNAL \mess[301]~140_combout\ : std_logic;
SIGNAL \mess[294]~feeder_combout\ : std_logic;
SIGNAL \mess[287]~135_combout\ : std_logic;
SIGNAL \mess[280]~feeder_combout\ : std_logic;
SIGNAL \mess[273]~feeder_combout\ : std_logic;
SIGNAL \mess[266]~126_combout\ : std_logic;
SIGNAL \mess[259]~123_combout\ : std_logic;
SIGNAL \mess[252]~feeder_combout\ : std_logic;
SIGNAL \mess[245]~114_combout\ : std_logic;
SIGNAL \mess[238]~feeder_combout\ : std_logic;
SIGNAL \mess[231]~109_combout\ : std_logic;
SIGNAL \mess[224]~106_combout\ : std_logic;
SIGNAL \mess[217]~feeder_combout\ : std_logic;
SIGNAL \mess[210]~feeder_combout\ : std_logic;
SIGNAL \mess[203]~97_combout\ : std_logic;
SIGNAL \mess[196]~feeder_combout\ : std_logic;
SIGNAL \mess[182]~86_combout\ : std_logic;
SIGNAL \mess[175]~81_combout\ : std_logic;
SIGNAL \mess[168]~feeder_combout\ : std_logic;
SIGNAL \mess[161]~72_combout\ : std_logic;
SIGNAL \mess[154]~69_combout\ : std_logic;
SIGNAL \mess[147]~feeder_combout\ : std_logic;
SIGNAL \mess[140]~64_combout\ : std_logic;
SIGNAL \mess[133]~61_combout\ : std_logic;
SIGNAL \mess[126]~57_combout\ : std_logic;
SIGNAL \mess[119]~53_combout\ : std_logic;
SIGNAL \mess[119]~feeder_combout\ : std_logic;
SIGNAL \mess[112]~feeder_combout\ : std_logic;
SIGNAL \mess[105]~feeder_combout\ : std_logic;
SIGNAL \mess[98]~feeder_combout\ : std_logic;
SIGNAL \mess[91]~feeder_combout\ : std_logic;
SIGNAL \mess[84]~feeder_combout\ : std_logic;
SIGNAL \mess[77]~36_combout\ : std_logic;
SIGNAL \mess[70]~35_combout\ : std_logic;
SIGNAL \mess[63]~32_combout\ : std_logic;
SIGNAL \mess[56]~27_combout\ : std_logic;
SIGNAL \mess[49]~feeder_combout\ : std_logic;
SIGNAL \mess[42]~20_combout\ : std_logic;
SIGNAL \mess[35]~17_combout\ : std_logic;
SIGNAL \mess[28]~feeder_combout\ : std_logic;
SIGNAL \mess[21]~feeder_combout\ : std_logic;
SIGNAL \mess[14]~feeder_combout\ : std_logic;
SIGNAL \mess[7]~6_combout\ : std_logic;
SIGNAL \mess[0]~3_combout\ : std_logic;
SIGNAL \HEX5[0]~4_combout\ : std_logic;
SIGNAL \HEX5[0]~reg0_q\ : std_logic;
SIGNAL \HEX4[6]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[6]~reg0_q\ : std_logic;
SIGNAL \HEX4[5]~0_combout\ : std_logic;
SIGNAL \HEX4[5]~reg0_q\ : std_logic;
SIGNAL \HEX4[4]~1_combout\ : std_logic;
SIGNAL \HEX4[4]~reg0_q\ : std_logic;
SIGNAL \HEX4[3]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[3]~reg0_q\ : std_logic;
SIGNAL \HEX4[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[2]~reg0_q\ : std_logic;
SIGNAL \HEX4[1]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[1]~reg0_q\ : std_logic;
SIGNAL \HEX4[0]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[0]~reg0_q\ : std_logic;
SIGNAL \HEX3[6]~0_combout\ : std_logic;
SIGNAL \HEX3[6]~reg0_q\ : std_logic;
SIGNAL \HEX3[5]~1_combout\ : std_logic;
SIGNAL \HEX3[5]~reg0_q\ : std_logic;
SIGNAL \HEX3[4]~2_combout\ : std_logic;
SIGNAL \HEX3[4]~reg0_q\ : std_logic;
SIGNAL \HEX3[3]~3_combout\ : std_logic;
SIGNAL \HEX3[3]~reg0_q\ : std_logic;
SIGNAL \HEX3[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX3[2]~reg0_q\ : std_logic;
SIGNAL \HEX3[1]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX3[1]~reg0_q\ : std_logic;
SIGNAL \HEX3[0]~4_combout\ : std_logic;
SIGNAL \HEX3[0]~reg0_q\ : std_logic;
SIGNAL \HEX2[6]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX2[6]~reg0_q\ : std_logic;
SIGNAL \HEX2[5]~0_combout\ : std_logic;
SIGNAL \HEX2[5]~reg0_q\ : std_logic;
SIGNAL \HEX2[4]~1_combout\ : std_logic;
SIGNAL \HEX2[4]~reg0_q\ : std_logic;
SIGNAL \HEX2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX2[3]~reg0_q\ : std_logic;
SIGNAL \HEX2[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX2[2]~reg0_q\ : std_logic;
SIGNAL \HEX2[1]~2_combout\ : std_logic;
SIGNAL \HEX2[1]~reg0_q\ : std_logic;
SIGNAL \HEX2[0]~3_combout\ : std_logic;
SIGNAL \HEX2[0]~reg0_q\ : std_logic;
SIGNAL \HEX1[6]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX1[6]~reg0_q\ : std_logic;
SIGNAL \HEX1[5]~0_combout\ : std_logic;
SIGNAL \HEX1[5]~reg0_q\ : std_logic;
SIGNAL \HEX1[4]~1_combout\ : std_logic;
SIGNAL \HEX1[4]~reg0_q\ : std_logic;
SIGNAL \HEX1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX1[3]~reg0_q\ : std_logic;
SIGNAL \HEX1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX1[2]~reg0_q\ : std_logic;
SIGNAL \HEX1[1]~2_combout\ : std_logic;
SIGNAL \HEX1[1]~reg0_q\ : std_logic;
SIGNAL \HEX1[0]~3_combout\ : std_logic;
SIGNAL \HEX1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX1[0]~reg0_q\ : std_logic;
SIGNAL \HEX0[6]~0_combout\ : std_logic;
SIGNAL \HEX0[6]~reg0_q\ : std_logic;
SIGNAL \HEX0[5]~1_combout\ : std_logic;
SIGNAL \HEX0[5]~reg0_q\ : std_logic;
SIGNAL \HEX0[4]~2_combout\ : std_logic;
SIGNAL \HEX0[4]~reg0_q\ : std_logic;
SIGNAL \HEX0[3]~3_combout\ : std_logic;
SIGNAL \HEX0[3]~reg0_q\ : std_logic;
SIGNAL \HEX0[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[2]~reg0_q\ : std_logic;
SIGNAL \HEX0[1]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[1]~reg0_q\ : std_logic;
SIGNAL \HEX0[0]~4_combout\ : std_logic;
SIGNAL \HEX0[0]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[0]~reg0_q\ : std_logic;
SIGNAL s_clk_compte : std_logic_vector(25 DOWNTO 0);
SIGNAL mess : std_logic_vector(0 TO 349);
SIGNAL \ALT_INV_trigger1~input_o\ : std_logic;
SIGNAL \ALT_INV_trigger0~input_o\ : std_logic;
SIGNAL \ALT_INV_HEX0[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX0[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX0[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX0[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX0[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX0[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX0[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX3[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX3[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX3[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX3[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX3[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX3[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX3[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX4[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX5[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX5[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX5[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX5[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX5[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX5[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX5[6]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_trigger0 <= trigger0;
ww_trigger1 <= trigger1;
ww_trigger2 <= trigger2;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
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
\ALT_INV_trigger1~input_o\ <= NOT \trigger1~input_o\;
\ALT_INV_trigger0~input_o\ <= NOT \trigger0~input_o\;
\ALT_INV_HEX0[0]~reg0_q\ <= NOT \HEX0[0]~reg0_q\;
\ALT_INV_HEX0[1]~reg0_q\ <= NOT \HEX0[1]~reg0_q\;
\ALT_INV_HEX0[2]~reg0_q\ <= NOT \HEX0[2]~reg0_q\;
\ALT_INV_HEX0[3]~reg0_q\ <= NOT \HEX0[3]~reg0_q\;
\ALT_INV_HEX0[4]~reg0_q\ <= NOT \HEX0[4]~reg0_q\;
\ALT_INV_HEX0[5]~reg0_q\ <= NOT \HEX0[5]~reg0_q\;
\ALT_INV_HEX0[6]~reg0_q\ <= NOT \HEX0[6]~reg0_q\;
\ALT_INV_HEX1[0]~reg0_q\ <= NOT \HEX1[0]~reg0_q\;
\ALT_INV_HEX1[1]~reg0_q\ <= NOT \HEX1[1]~reg0_q\;
\ALT_INV_HEX1[2]~reg0_q\ <= NOT \HEX1[2]~reg0_q\;
\ALT_INV_HEX1[3]~reg0_q\ <= NOT \HEX1[3]~reg0_q\;
\ALT_INV_HEX1[4]~reg0_q\ <= NOT \HEX1[4]~reg0_q\;
\ALT_INV_HEX1[5]~reg0_q\ <= NOT \HEX1[5]~reg0_q\;
\ALT_INV_HEX1[6]~reg0_q\ <= NOT \HEX1[6]~reg0_q\;
\ALT_INV_HEX2[0]~reg0_q\ <= NOT \HEX2[0]~reg0_q\;
\ALT_INV_HEX2[1]~reg0_q\ <= NOT \HEX2[1]~reg0_q\;
\ALT_INV_HEX2[2]~reg0_q\ <= NOT \HEX2[2]~reg0_q\;
\ALT_INV_HEX2[3]~reg0_q\ <= NOT \HEX2[3]~reg0_q\;
\ALT_INV_HEX2[4]~reg0_q\ <= NOT \HEX2[4]~reg0_q\;
\ALT_INV_HEX2[5]~reg0_q\ <= NOT \HEX2[5]~reg0_q\;
\ALT_INV_HEX2[6]~reg0_q\ <= NOT \HEX2[6]~reg0_q\;
\ALT_INV_HEX3[0]~reg0_q\ <= NOT \HEX3[0]~reg0_q\;
\ALT_INV_HEX3[1]~reg0_q\ <= NOT \HEX3[1]~reg0_q\;
\ALT_INV_HEX3[2]~reg0_q\ <= NOT \HEX3[2]~reg0_q\;
\ALT_INV_HEX3[3]~reg0_q\ <= NOT \HEX3[3]~reg0_q\;
\ALT_INV_HEX3[4]~reg0_q\ <= NOT \HEX3[4]~reg0_q\;
\ALT_INV_HEX3[5]~reg0_q\ <= NOT \HEX3[5]~reg0_q\;
\ALT_INV_HEX3[6]~reg0_q\ <= NOT \HEX3[6]~reg0_q\;
\ALT_INV_HEX4[0]~reg0_q\ <= NOT \HEX4[0]~reg0_q\;
\ALT_INV_HEX4[1]~reg0_q\ <= NOT \HEX4[1]~reg0_q\;
\ALT_INV_HEX4[2]~reg0_q\ <= NOT \HEX4[2]~reg0_q\;
\ALT_INV_HEX4[3]~reg0_q\ <= NOT \HEX4[3]~reg0_q\;
\ALT_INV_HEX4[4]~reg0_q\ <= NOT \HEX4[4]~reg0_q\;
\ALT_INV_HEX4[5]~reg0_q\ <= NOT \HEX4[5]~reg0_q\;
\ALT_INV_HEX4[6]~reg0_q\ <= NOT \HEX4[6]~reg0_q\;
\ALT_INV_HEX5[0]~reg0_q\ <= NOT \HEX5[0]~reg0_q\;
\ALT_INV_HEX5[1]~reg0_q\ <= NOT \HEX5[1]~reg0_q\;
\ALT_INV_HEX5[2]~reg0_q\ <= NOT \HEX5[2]~reg0_q\;
\ALT_INV_HEX5[3]~reg0_q\ <= NOT \HEX5[3]~reg0_q\;
\ALT_INV_HEX5[4]~reg0_q\ <= NOT \HEX5[4]~reg0_q\;
\ALT_INV_HEX5[5]~reg0_q\ <= NOT \HEX5[5]~reg0_q\;
\ALT_INV_HEX5[6]~reg0_q\ <= NOT \HEX5[6]~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y47_N24
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

-- Location: IOOBUF_X46_Y54_N2
\led0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_trigger0~input_o\,
	devoe => ww_devoe,
	o => \led0~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\led1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1$latch~combout\,
	devoe => ww_devoe,
	o => \led1~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\led2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5[6]~reg0_q\,
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
	i => \ALT_INV_HEX5[5]~reg0_q\,
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
	i => \ALT_INV_HEX5[4]~reg0_q\,
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
	i => \ALT_INV_HEX5[1]~reg0_q\,
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
	i => \ALT_INV_HEX5[0]~reg0_q\,
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
	i => \ALT_INV_HEX4[5]~reg0_q\,
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
	i => \ALT_INV_HEX4[4]~reg0_q\,
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
	i => \ALT_INV_HEX3[6]~reg0_q\,
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
	i => \ALT_INV_HEX3[5]~reg0_q\,
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
	i => \ALT_INV_HEX3[4]~reg0_q\,
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
	i => \ALT_INV_HEX3[3]~reg0_q\,
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
	i => \ALT_INV_HEX3[0]~reg0_q\,
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
	i => \ALT_INV_HEX2[5]~reg0_q\,
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
	i => \ALT_INV_HEX2[4]~reg0_q\,
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
	i => \ALT_INV_HEX2[1]~reg0_q\,
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
	i => \ALT_INV_HEX2[0]~reg0_q\,
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
	i => \ALT_INV_HEX1[5]~reg0_q\,
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
	i => \ALT_INV_HEX1[4]~reg0_q\,
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
	i => \ALT_INV_HEX1[1]~reg0_q\,
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
	i => \ALT_INV_HEX1[0]~reg0_q\,
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
	i => \ALT_INV_HEX0[6]~reg0_q\,
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
	i => \ALT_INV_HEX0[5]~reg0_q\,
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
	i => \ALT_INV_HEX0[4]~reg0_q\,
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
	i => \ALT_INV_HEX0[3]~reg0_q\,
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
	i => \ALT_INV_HEX0[0]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\trigger0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trigger0,
	o => \trigger0~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\trigger1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trigger1,
	o => \trigger1~input_o\);

-- Location: LCCOMB_X52_Y53_N10
\led1$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led1$latch~combout\ = (\trigger0~input_o\ & ((\trigger1~input_o\))) # (!\trigger0~input_o\ & (\led1$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led1$latch~combout\,
	datab => \trigger1~input_o\,
	datad => \trigger0~input_o\,
	combout => \led1$latch~combout\);

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

-- Location: LCCOMB_X50_Y48_N6
\s_clk_compte[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[0]~26_combout\ = s_clk_compte(0) $ (VCC)
-- \s_clk_compte[0]~27\ = CARRY(s_clk_compte(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(0),
	datad => VCC,
	combout => \s_clk_compte[0]~26_combout\,
	cout => \s_clk_compte[0]~27\);

-- Location: LCCOMB_X49_Y47_N24
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (s_clk_compte(20) & (s_clk_compte(22) & (s_clk_compte(19) & s_clk_compte(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(20),
	datab => s_clk_compte(22),
	datac => s_clk_compte(19),
	datad => s_clk_compte(21),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y47_N14
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (s_clk_compte(25) & (s_clk_compte(23) & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(25),
	datac => s_clk_compte(23),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X49_Y47_N12
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (s_clk_compte(9)) # ((s_clk_compte(8)) # ((s_clk_compte(11)) # (s_clk_compte(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(9),
	datab => s_clk_compte(8),
	datac => s_clk_compte(11),
	datad => s_clk_compte(10),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y47_N30
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (s_clk_compte(14) & (s_clk_compte(12) & s_clk_compte(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(14),
	datab => s_clk_compte(12),
	datad => s_clk_compte(13),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X50_Y48_N4
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

-- Location: LCCOMB_X50_Y48_N2
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

-- Location: LCCOMB_X50_Y48_N0
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

-- Location: LCCOMB_X50_Y47_N30
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan1~1_combout\ & (s_clk_compte(15) & ((\LessThan0~1_combout\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan1~1_combout\,
	datac => s_clk_compte(15),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X50_Y47_N28
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (s_clk_compte(18)) # ((s_clk_compte(17) & ((s_clk_compte(16)) # (\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(18),
	datab => s_clk_compte(16),
	datac => \LessThan0~5_combout\,
	datad => s_clk_compte(17),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X50_Y47_N26
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~7_combout\ & ((\LessThan0~6_combout\) # ((s_clk_compte(25) & s_clk_compte(24))))) # (!\LessThan0~7_combout\ & (s_clk_compte(25) & (s_clk_compte(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => s_clk_compte(25),
	datac => s_clk_compte(24),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~8_combout\);

-- Location: FF_X50_Y48_N7
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

-- Location: LCCOMB_X50_Y48_N8
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

-- Location: FF_X50_Y48_N9
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

-- Location: LCCOMB_X50_Y48_N10
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

-- Location: FF_X50_Y48_N11
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

-- Location: LCCOMB_X50_Y48_N12
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

-- Location: FF_X50_Y48_N13
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

-- Location: LCCOMB_X50_Y48_N14
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

-- Location: FF_X50_Y48_N15
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

-- Location: LCCOMB_X50_Y48_N16
\s_clk_compte[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[5]~36_combout\ = (s_clk_compte(5) & (!\s_clk_compte[4]~35\)) # (!s_clk_compte(5) & ((\s_clk_compte[4]~35\) # (GND)))
-- \s_clk_compte[5]~37\ = CARRY((!\s_clk_compte[4]~35\) # (!s_clk_compte(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(5),
	datad => VCC,
	cin => \s_clk_compte[4]~35\,
	combout => \s_clk_compte[5]~36_combout\,
	cout => \s_clk_compte[5]~37\);

-- Location: FF_X50_Y48_N17
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

-- Location: LCCOMB_X50_Y48_N18
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

-- Location: FF_X50_Y48_N19
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

-- Location: LCCOMB_X50_Y48_N20
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

-- Location: FF_X50_Y48_N21
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

-- Location: LCCOMB_X50_Y48_N22
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

-- Location: FF_X49_Y47_N17
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

-- Location: LCCOMB_X50_Y48_N24
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

-- Location: FF_X49_Y47_N27
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

-- Location: LCCOMB_X50_Y48_N26
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

-- Location: FF_X49_Y47_N7
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

-- Location: LCCOMB_X50_Y48_N28
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

-- Location: FF_X49_Y47_N9
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

-- Location: LCCOMB_X50_Y48_N30
\s_clk_compte[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[12]~50_combout\ = (s_clk_compte(12) & (\s_clk_compte[11]~49\ $ (GND))) # (!s_clk_compte(12) & (!\s_clk_compte[11]~49\ & VCC))
-- \s_clk_compte[12]~51\ = CARRY((s_clk_compte(12) & !\s_clk_compte[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(12),
	datad => VCC,
	cin => \s_clk_compte[11]~49\,
	combout => \s_clk_compte[12]~50_combout\,
	cout => \s_clk_compte[12]~51\);

-- Location: FF_X49_Y47_N3
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

-- Location: LCCOMB_X50_Y47_N0
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

-- Location: FF_X50_Y47_N1
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

-- Location: LCCOMB_X50_Y47_N2
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

-- Location: FF_X50_Y47_N3
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

-- Location: LCCOMB_X50_Y47_N4
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

-- Location: FF_X50_Y47_N5
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

-- Location: LCCOMB_X50_Y47_N6
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

-- Location: FF_X50_Y47_N7
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

-- Location: LCCOMB_X50_Y47_N8
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

-- Location: FF_X50_Y47_N9
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

-- Location: LCCOMB_X50_Y47_N10
\s_clk_compte[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[18]~62_combout\ = (s_clk_compte(18) & (\s_clk_compte[17]~61\ $ (GND))) # (!s_clk_compte(18) & (!\s_clk_compte[17]~61\ & VCC))
-- \s_clk_compte[18]~63\ = CARRY((s_clk_compte(18) & !\s_clk_compte[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(18),
	datad => VCC,
	cin => \s_clk_compte[17]~61\,
	combout => \s_clk_compte[18]~62_combout\,
	cout => \s_clk_compte[18]~63\);

-- Location: FF_X50_Y47_N11
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

-- Location: LCCOMB_X50_Y47_N12
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

-- Location: FF_X50_Y47_N13
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

-- Location: LCCOMB_X50_Y47_N14
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

-- Location: FF_X50_Y47_N15
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

-- Location: LCCOMB_X50_Y47_N16
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

-- Location: FF_X50_Y47_N17
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

-- Location: LCCOMB_X50_Y47_N18
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

-- Location: FF_X50_Y47_N19
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

-- Location: LCCOMB_X50_Y47_N20
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

-- Location: FF_X50_Y47_N21
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

-- Location: LCCOMB_X50_Y47_N22
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

-- Location: FF_X50_Y47_N23
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

-- Location: LCCOMB_X50_Y47_N24
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

-- Location: FF_X50_Y47_N25
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

-- Location: LCCOMB_X49_Y47_N18
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!s_clk_compte(10) & (!s_clk_compte(9) & (!s_clk_compte(6) & !s_clk_compte(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(10),
	datab => s_clk_compte(9),
	datac => s_clk_compte(6),
	datad => s_clk_compte(8),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y47_N22
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!s_clk_compte(7) & \LessThan1~0_combout\)) # (!\LessThan1~1_combout\)) # (!s_clk_compte(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(7),
	datab => s_clk_compte(11),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X49_Y47_N20
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (s_clk_compte(16) & ((s_clk_compte(15)) # (!\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(16),
	datac => \LessThan1~2_combout\,
	datad => s_clk_compte(15),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X49_Y47_N28
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (s_clk_compte(18) & (\LessThan0~0_combout\ & ((s_clk_compte(17)) # (\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(18),
	datab => \LessThan0~0_combout\,
	datac => s_clk_compte(17),
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X49_Y47_N10
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (s_clk_compte(25)) # ((s_clk_compte(24) & ((s_clk_compte(23)) # (\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(25),
	datab => s_clk_compte(24),
	datac => s_clk_compte(23),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: FF_X49_Y47_N11
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

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X49_Y51_N26
\mess[349]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[349]~150_combout\ = !mess(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(6),
	combout => \mess[349]~150_combout\);

-- Location: LCCOMB_X51_Y51_N26
\mess[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[0]~0_combout\ = (!\trigger1~input_o\ & \trigger0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger1~input_o\,
	datad => \trigger0~input_o\,
	combout => \mess[0]~0_combout\);

-- Location: FF_X49_Y51_N27
\mess[349]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[349]~150_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(349));

-- Location: LCCOMB_X49_Y51_N16
\mess[342]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[342]~feeder_combout\ = mess(349)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(349),
	combout => \mess[342]~feeder_combout\);

-- Location: FF_X49_Y51_N17
\mess[342]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[342]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(342));

-- Location: LCCOMB_X49_Y51_N22
\mess[335]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[335]~feeder_combout\ = mess(342)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(342),
	combout => \mess[335]~feeder_combout\);

-- Location: FF_X49_Y51_N23
\mess[335]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[335]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(335));

-- Location: LCCOMB_X49_Y51_N12
\mess[328]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[328]~feeder_combout\ = mess(335)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(335),
	combout => \mess[328]~feeder_combout\);

-- Location: FF_X49_Y51_N13
\mess[328]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[328]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(328));

-- Location: LCCOMB_X49_Y51_N10
\mess[321]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[321]~145_combout\ = !mess(328)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(328),
	combout => \mess[321]~145_combout\);

-- Location: FF_X49_Y51_N11
\mess[321]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[321]~145_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(321));

-- Location: LCCOMB_X49_Y51_N20
\mess[314]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[314]~141_combout\ = !mess(321)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(321),
	combout => \mess[314]~141_combout\);

-- Location: FF_X49_Y51_N21
\mess[314]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[314]~141_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(314));

-- Location: LCCOMB_X49_Y51_N18
\mess[307]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[307]~feeder_combout\ = mess(314)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(314),
	combout => \mess[307]~feeder_combout\);

-- Location: FF_X49_Y51_N19
\mess[307]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[307]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(307));

-- Location: LCCOMB_X49_Y51_N4
\mess[300]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[300]~136_combout\ = !mess(307)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(307),
	combout => \mess[300]~136_combout\);

-- Location: FF_X49_Y51_N5
\mess[300]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[300]~136_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(300));

-- Location: LCCOMB_X49_Y51_N6
\mess[293]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[293]~132_combout\ = !mess(300)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(300),
	combout => \mess[293]~132_combout\);

-- Location: FF_X49_Y51_N7
\mess[293]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[293]~132_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(293));

-- Location: LCCOMB_X49_Y51_N8
\mess[286]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[286]~130_combout\ = !mess(293)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(293),
	combout => \mess[286]~130_combout\);

-- Location: FF_X49_Y51_N9
\mess[286]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[286]~130_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(286));

-- Location: LCCOMB_X49_Y51_N30
\mess[279]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[279]~127_combout\ = !mess(286)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(286),
	combout => \mess[279]~127_combout\);

-- Location: FF_X49_Y51_N31
\mess[279]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[279]~127_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(279));

-- Location: LCCOMB_X49_Y51_N0
\mess[272]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[272]~feeder_combout\ = mess(279)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(279),
	combout => \mess[272]~feeder_combout\);

-- Location: FF_X49_Y51_N1
\mess[272]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[272]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(272));

-- Location: LCCOMB_X49_Y51_N14
\mess[265]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[265]~119_combout\ = !mess(272)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(272),
	combout => \mess[265]~119_combout\);

-- Location: FF_X49_Y51_N15
\mess[265]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[265]~119_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(265));

-- Location: LCCOMB_X49_Y51_N28
\mess[258]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[258]~115_combout\ = !mess(265)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(265),
	combout => \mess[258]~115_combout\);

-- Location: FF_X49_Y51_N29
\mess[258]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[258]~115_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(258));

-- Location: LCCOMB_X49_Y51_N2
\mess[251]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[251]~feeder_combout\ = mess(258)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(258),
	combout => \mess[251]~feeder_combout\);

-- Location: FF_X49_Y51_N3
\mess[251]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[251]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(251));

-- Location: LCCOMB_X49_Y51_N24
\mess[244]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[244]~110_combout\ = !mess(251)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(251),
	combout => \mess[244]~110_combout\);

-- Location: FF_X49_Y51_N25
\mess[244]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[244]~110_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(244));

-- Location: LCCOMB_X50_Y53_N16
\mess[237]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[237]~feeder_combout\ = mess(244)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(244),
	combout => \mess[237]~feeder_combout\);

-- Location: FF_X50_Y53_N17
\mess[237]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[237]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(237));

-- Location: LCCOMB_X50_Y52_N30
\mess[230]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[230]~103_combout\ = !mess(237)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(237),
	combout => \mess[230]~103_combout\);

-- Location: FF_X50_Y52_N31
\mess[230]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[230]~103_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(230));

-- Location: LCCOMB_X51_Y51_N24
\mess[223]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[223]~feeder_combout\ = mess(230)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(230),
	combout => \mess[223]~feeder_combout\);

-- Location: FF_X51_Y51_N25
\mess[223]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[223]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(223));

-- Location: LCCOMB_X47_Y51_N22
\mess[216]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[216]~feeder_combout\ = mess(223)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(223),
	combout => \mess[216]~feeder_combout\);

-- Location: FF_X47_Y51_N23
\mess[216]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[216]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(216));

-- Location: LCCOMB_X47_Y52_N24
\mess[209]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[209]~feeder_combout\ = mess(216)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(216),
	combout => \mess[209]~feeder_combout\);

-- Location: FF_X47_Y52_N25
\mess[209]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[209]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(209));

-- Location: LCCOMB_X47_Y52_N10
\mess[202]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[202]~89_combout\ = !mess(209)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(209),
	combout => \mess[202]~89_combout\);

-- Location: FF_X47_Y52_N11
\mess[202]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[202]~89_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(202));

-- Location: LCCOMB_X47_Y52_N8
\mess[195]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[195]~feeder_combout\ = mess(202)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(202),
	combout => \mess[195]~feeder_combout\);

-- Location: FF_X47_Y52_N9
\mess[195]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[195]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(195));

-- Location: LCCOMB_X46_Y51_N26
\mess[188]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[188]~82_combout\ = !mess(195)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(195),
	combout => \mess[188]~82_combout\);

-- Location: FF_X46_Y51_N27
\mess[188]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[188]~82_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(188));

-- Location: LCCOMB_X47_Y52_N2
\mess[181]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[181]~77_combout\ = !mess(188)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(188),
	combout => \mess[181]~77_combout\);

-- Location: FF_X47_Y52_N3
\mess[181]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[181]~77_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(181));

-- Location: LCCOMB_X47_Y52_N12
\mess[174]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[174]~73_combout\ = !mess(181)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(181),
	combout => \mess[174]~73_combout\);

-- Location: FF_X47_Y52_N13
\mess[174]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[174]~73_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(174));

-- Location: LCCOMB_X47_Y51_N8
\mess[167]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[167]~feeder_combout\ = mess(174)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(174),
	combout => \mess[167]~feeder_combout\);

-- Location: FF_X47_Y51_N9
\mess[167]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[167]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(167));

-- Location: LCCOMB_X51_Y51_N16
\mess[160]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[160]~feeder_combout\ = mess(167)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(167),
	combout => \mess[160]~feeder_combout\);

-- Location: FF_X51_Y51_N17
\mess[160]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[160]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(160));

-- Location: LCCOMB_X47_Y51_N0
\mess[153]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[153]~65_combout\ = !mess(160)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(160),
	combout => \mess[153]~65_combout\);

-- Location: FF_X47_Y51_N1
\mess[153]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[153]~65_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(153));

-- Location: LCCOMB_X47_Y52_N18
\mess[146]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[146]~feeder_combout\ = mess(153)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(153),
	combout => \mess[146]~feeder_combout\);

-- Location: FF_X47_Y52_N19
\mess[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[146]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(146));

-- Location: LCCOMB_X47_Y52_N0
\mess[139]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[139]~58_combout\ = !mess(146)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(146),
	combout => \mess[139]~58_combout\);

-- Location: FF_X47_Y52_N1
\mess[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[139]~58_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(139));

-- Location: LCCOMB_X47_Y53_N4
\mess[132]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[132]~feeder_combout\ = mess(139)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(139),
	combout => \mess[132]~feeder_combout\);

-- Location: FF_X47_Y53_N5
\mess[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[132]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(132));

-- Location: LCCOMB_X51_Y53_N12
\mess[125]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[125]~48_combout\ = !mess(132)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(132),
	combout => \mess[125]~48_combout\);

-- Location: FF_X51_Y53_N13
\mess[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[125]~48_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(125));

-- Location: LCCOMB_X51_Y53_N30
\mess[118]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[118]~47_combout\ = !mess(125)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(125),
	combout => \mess[118]~47_combout\);

-- Location: FF_X51_Y53_N31
\mess[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[118]~47_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(118));

-- Location: LCCOMB_X51_Y53_N16
\mess[111]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[111]~43_combout\ = !mess(118)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(118),
	combout => \mess[111]~43_combout\);

-- Location: FF_X51_Y53_N17
\mess[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[111]~43_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(111));

-- Location: LCCOMB_X51_Y53_N2
\mess[104]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[104]~40_combout\ = !mess(111)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(111),
	combout => \mess[104]~40_combout\);

-- Location: FF_X51_Y53_N3
\mess[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[104]~40_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(104));

-- Location: LCCOMB_X51_Y53_N28
\mess[97]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[97]~feeder_combout\ = mess(104)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(104),
	combout => \mess[97]~feeder_combout\);

-- Location: FF_X51_Y53_N29
\mess[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[97]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(97));

-- Location: LCCOMB_X51_Y53_N6
\mess[90]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[90]~37_combout\ = !mess(97)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(97),
	combout => \mess[90]~37_combout\);

-- Location: FF_X51_Y53_N7
\mess[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[90]~37_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(90));

-- Location: LCCOMB_X51_Y53_N20
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

-- Location: FF_X51_Y53_N21
\mess[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[83]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(83));

-- Location: LCCOMB_X51_Y53_N18
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

-- Location: FF_X51_Y53_N19
\mess[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[76]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(76));

-- Location: LCCOMB_X51_Y53_N4
\mess[69]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[69]~28_combout\ = !mess(76)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(76),
	combout => \mess[69]~28_combout\);

-- Location: FF_X51_Y53_N5
\mess[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[69]~28_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(69));

-- Location: LCCOMB_X51_Y52_N0
\mess[62]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[62]~24_combout\ = !mess(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(69),
	combout => \mess[62]~24_combout\);

-- Location: FF_X51_Y52_N1
\mess[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[62]~24_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(62));

-- Location: LCCOMB_X50_Y53_N2
\mess[55]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[55]~21_combout\ = !mess(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(62),
	combout => \mess[55]~21_combout\);

-- Location: FF_X50_Y53_N3
\mess[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[55]~21_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(55));

-- Location: LCCOMB_X50_Y53_N20
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

-- Location: FF_X50_Y53_N21
\mess[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[48]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(48));

-- Location: LCCOMB_X50_Y53_N18
\mess[41]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[41]~13_combout\ = !mess(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(48),
	combout => \mess[41]~13_combout\);

-- Location: FF_X50_Y53_N19
\mess[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[41]~13_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(41));

-- Location: LCCOMB_X50_Y53_N0
\mess[34]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[34]~10_combout\ = !mess(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(41),
	combout => \mess[34]~10_combout\);

-- Location: FF_X50_Y53_N1
\mess[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[34]~10_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(34));

-- Location: LCCOMB_X50_Y53_N22
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

-- Location: FF_X50_Y53_N23
\mess[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[27]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(27));

-- Location: LCCOMB_X50_Y53_N4
\mess[20]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[20]~7_combout\ = !mess(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(27),
	combout => \mess[20]~7_combout\);

-- Location: FF_X50_Y53_N5
\mess[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[20]~7_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(20));

-- Location: LCCOMB_X50_Y53_N10
\mess[13]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[13]~4_combout\ = !mess(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(20),
	combout => \mess[13]~4_combout\);

-- Location: FF_X50_Y53_N11
\mess[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[13]~4_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(13));

-- Location: LCCOMB_X50_Y53_N28
\mess[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[6]~1_combout\ = !mess(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(13),
	combout => \mess[6]~1_combout\);

-- Location: FF_X50_Y53_N29
\mess[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[6]~1_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(6));

-- Location: LCCOMB_X50_Y53_N12
\HEX5[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[6]~0_combout\ = !mess(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(6),
	combout => \HEX5[6]~0_combout\);

-- Location: FF_X50_Y53_N13
\HEX5[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[6]~0_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[6]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N18
\mess[348]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[348]~151_combout\ = !mess(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(5),
	combout => \mess[348]~151_combout\);

-- Location: FF_X52_Y51_N19
\mess[348]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[348]~151_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(348));

-- Location: LCCOMB_X52_Y51_N24
\mess[341]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[341]~148_combout\ = !mess(348)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(348),
	combout => \mess[341]~148_combout\);

-- Location: FF_X52_Y51_N25
\mess[341]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[341]~148_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(341));

-- Location: LCCOMB_X52_Y51_N6
\mess[334]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[334]~feeder_combout\ = mess(341)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(341),
	combout => \mess[334]~feeder_combout\);

-- Location: FF_X52_Y51_N7
\mess[334]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[334]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(334));

-- Location: LCCOMB_X52_Y51_N0
\mess[327]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[327]~feeder_combout\ = mess(334)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(334),
	combout => \mess[327]~feeder_combout\);

-- Location: FF_X52_Y51_N1
\mess[327]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[327]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(327));

-- Location: LCCOMB_X52_Y51_N10
\mess[320]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[320]~feeder_combout\ = mess(327)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(327),
	combout => \mess[320]~feeder_combout\);

-- Location: FF_X52_Y51_N11
\mess[320]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[320]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(320));

-- Location: LCCOMB_X52_Y51_N20
\mess[313]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[313]~feeder_combout\ = mess(320)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(320),
	combout => \mess[313]~feeder_combout\);

-- Location: FF_X52_Y51_N21
\mess[313]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[313]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(313));

-- Location: LCCOMB_X52_Y51_N26
\mess[306]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[306]~feeder_combout\ = mess(313)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(313),
	combout => \mess[306]~feeder_combout\);

-- Location: FF_X52_Y51_N27
\mess[306]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[306]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(306));

-- Location: LCCOMB_X52_Y51_N12
\mess[299]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[299]~feeder_combout\ = mess(306)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(306),
	combout => \mess[299]~feeder_combout\);

-- Location: FF_X52_Y51_N13
\mess[299]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[299]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(299));

-- Location: LCCOMB_X52_Y51_N14
\mess[292]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[292]~feeder_combout\ = mess(299)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(299),
	combout => \mess[292]~feeder_combout\);

-- Location: FF_X52_Y51_N15
\mess[292]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[292]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(292));

-- Location: LCCOMB_X52_Y51_N16
\mess[285]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[285]~feeder_combout\ = mess(292)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(292),
	combout => \mess[285]~feeder_combout\);

-- Location: FF_X52_Y51_N17
\mess[285]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[285]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(285));

-- Location: LCCOMB_X52_Y49_N26
\mess[278]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[278]~128_combout\ = !mess(285)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(285),
	combout => \mess[278]~128_combout\);

-- Location: FF_X52_Y49_N27
\mess[278]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[278]~128_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(278));

-- Location: LCCOMB_X52_Y49_N12
\mess[271]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[271]~feeder_combout\ = mess(278)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(278),
	combout => \mess[271]~feeder_combout\);

-- Location: FF_X52_Y49_N13
\mess[271]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[271]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(271));

-- Location: LCCOMB_X52_Y49_N6
\mess[264]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[264]~120_combout\ = !mess(271)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(271),
	combout => \mess[264]~120_combout\);

-- Location: FF_X52_Y49_N7
\mess[264]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[264]~120_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(264));

-- Location: LCCOMB_X52_Y49_N16
\mess[257]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[257]~feeder_combout\ = mess(264)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(264),
	combout => \mess[257]~feeder_combout\);

-- Location: FF_X52_Y49_N17
\mess[257]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[257]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(257));

-- Location: LCCOMB_X52_Y49_N14
\mess[250]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[250]~feeder_combout\ = mess(257)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(257),
	combout => \mess[250]~feeder_combout\);

-- Location: FF_X52_Y49_N15
\mess[250]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[250]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(250));

-- Location: LCCOMB_X52_Y49_N4
\mess[243]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[243]~feeder_combout\ = mess(250)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(250),
	combout => \mess[243]~feeder_combout\);

-- Location: FF_X52_Y49_N5
\mess[243]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[243]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(243));

-- Location: LCCOMB_X51_Y49_N18
\mess[236]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[236]~feeder_combout\ = mess(243)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(243),
	combout => \mess[236]~feeder_combout\);

-- Location: FF_X51_Y49_N19
\mess[236]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[236]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(236));

-- Location: LCCOMB_X51_Y49_N0
\mess[229]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[229]~feeder_combout\ = mess(236)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(236),
	combout => \mess[229]~feeder_combout\);

-- Location: FF_X51_Y49_N1
\mess[229]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[229]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(229));

-- Location: LCCOMB_X51_Y49_N22
\mess[222]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[222]~102_combout\ = !mess(229)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(229),
	combout => \mess[222]~102_combout\);

-- Location: FF_X51_Y49_N23
\mess[222]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[222]~102_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(222));

-- Location: LCCOMB_X52_Y49_N24
\mess[215]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[215]~feeder_combout\ = mess(222)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(222),
	combout => \mess[215]~feeder_combout\);

-- Location: FF_X52_Y49_N25
\mess[215]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[215]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(215));

-- Location: LCCOMB_X51_Y49_N6
\mess[208]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[208]~92_combout\ = !mess(215)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(215),
	combout => \mess[208]~92_combout\);

-- Location: FF_X51_Y49_N7
\mess[208]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[208]~92_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(208));

-- Location: LCCOMB_X51_Y49_N24
\mess[201]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[201]~feeder_combout\ = mess(208)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(208),
	combout => \mess[201]~feeder_combout\);

-- Location: FF_X51_Y49_N25
\mess[201]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[201]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(201));

-- Location: LCCOMB_X52_Y49_N30
\mess[194]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[194]~feeder_combout\ = mess(201)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(201),
	combout => \mess[194]~feeder_combout\);

-- Location: FF_X52_Y49_N31
\mess[194]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[194]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(194));

-- Location: LCCOMB_X52_Y49_N8
\mess[187]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[187]~83_combout\ = !mess(194)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(194),
	combout => \mess[187]~83_combout\);

-- Location: FF_X52_Y49_N9
\mess[187]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[187]~83_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(187));

-- Location: LCCOMB_X52_Y49_N10
\mess[180]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[180]~78_combout\ = !mess(187)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(187),
	combout => \mess[180]~78_combout\);

-- Location: FF_X52_Y49_N11
\mess[180]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[180]~78_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(180));

-- Location: LCCOMB_X52_Y49_N28
\mess[173]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[173]~feeder_combout\ = mess(180)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(180),
	combout => \mess[173]~feeder_combout\);

-- Location: FF_X52_Y49_N29
\mess[173]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[173]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(173));

-- Location: LCCOMB_X51_Y49_N28
\mess[166]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[166]~feeder_combout\ = mess(173)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(173),
	combout => \mess[166]~feeder_combout\);

-- Location: FF_X51_Y49_N29
\mess[166]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[166]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(166));

-- Location: LCCOMB_X50_Y49_N12
\mess[159]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[159]~feeder_combout\ = mess(166)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(166),
	combout => \mess[159]~feeder_combout\);

-- Location: FF_X50_Y49_N13
\mess[159]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[159]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(159));

-- Location: LCCOMB_X50_Y49_N22
\mess[152]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[152]~feeder_combout\ = mess(159)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(159),
	combout => \mess[152]~feeder_combout\);

-- Location: FF_X50_Y49_N23
\mess[152]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[152]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(152));

-- Location: LCCOMB_X51_Y49_N30
\mess[145]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[145]~feeder_combout\ = mess(152)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(152),
	combout => \mess[145]~feeder_combout\);

-- Location: FF_X51_Y49_N31
\mess[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[145]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(145));

-- Location: LCCOMB_X51_Y49_N26
\mess[138]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[138]~feeder_combout\ = mess(145)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(145),
	combout => \mess[138]~feeder_combout\);

-- Location: FF_X51_Y49_N27
\mess[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[138]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(138));

-- Location: LCCOMB_X51_Y49_N12
\mess[131]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[131]~54_combout\ = !mess(138)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(138),
	combout => \mess[131]~54_combout\);

-- Location: FF_X51_Y49_N13
\mess[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[131]~54_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(131));

-- Location: LCCOMB_X50_Y49_N4
\mess[124]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[124]~49_combout\ = !mess(131)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(131),
	combout => \mess[124]~49_combout\);

-- Location: FF_X50_Y49_N5
\mess[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[124]~49_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(124));

-- Location: LCCOMB_X50_Y49_N16
\mess[117]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[117]~feeder_combout\ = mess(124)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(124),
	combout => \mess[117]~feeder_combout\);

-- Location: FF_X50_Y49_N17
\mess[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[117]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(117));

-- Location: LCCOMB_X50_Y49_N18
\mess[110]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[110]~feeder_combout\ = mess(117)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(117),
	combout => \mess[110]~feeder_combout\);

-- Location: FF_X50_Y49_N19
\mess[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[110]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(110));

-- Location: LCCOMB_X50_Y49_N28
\mess[103]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[103]~feeder_combout\ = mess(110)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(110),
	combout => \mess[103]~feeder_combout\);

-- Location: FF_X50_Y49_N29
\mess[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[103]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(103));

-- Location: LCCOMB_X50_Y49_N10
\mess[96]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[96]~feeder_combout\ = mess(103)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(103),
	combout => \mess[96]~feeder_combout\);

-- Location: FF_X50_Y49_N11
\mess[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[96]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(96));

-- Location: LCCOMB_X51_Y49_N20
\mess[89]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[89]~feeder_combout\ = mess(96)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(96),
	combout => \mess[89]~feeder_combout\);

-- Location: FF_X51_Y49_N21
\mess[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[89]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(89));

-- Location: LCCOMB_X54_Y49_N10
\mess[82]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[82]~feeder_combout\ = mess(89)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(89),
	combout => \mess[82]~feeder_combout\);

-- Location: FF_X54_Y49_N11
\mess[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[82]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(82));

-- Location: LCCOMB_X54_Y49_N12
\mess[75]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[75]~feeder_combout\ = mess(82)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(82),
	combout => \mess[75]~feeder_combout\);

-- Location: FF_X54_Y49_N13
\mess[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[75]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(75));

-- Location: LCCOMB_X54_Y49_N18
\mess[68]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[68]~feeder_combout\ = mess(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(75),
	combout => \mess[68]~feeder_combout\);

-- Location: FF_X54_Y49_N19
\mess[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[68]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(68));

-- Location: LCCOMB_X54_Y49_N24
\mess[61]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[61]~feeder_combout\ = mess(68)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(68),
	combout => \mess[61]~feeder_combout\);

-- Location: FF_X54_Y49_N25
\mess[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[61]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(61));

-- Location: LCCOMB_X54_Y53_N10
\mess[54]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[54]~22_combout\ = !mess(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(61),
	combout => \mess[54]~22_combout\);

-- Location: FF_X54_Y53_N11
\mess[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[54]~22_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(54));

-- Location: LCCOMB_X54_Y53_N12
\mess[47]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[47]~feeder_combout\ = mess(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(54),
	combout => \mess[47]~feeder_combout\);

-- Location: FF_X54_Y53_N13
\mess[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[47]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(47));

-- Location: LCCOMB_X54_Y53_N18
\mess[40]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[40]~14_combout\ = !mess(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(47),
	combout => \mess[40]~14_combout\);

-- Location: FF_X54_Y53_N19
\mess[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[40]~14_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(40));

-- Location: LCCOMB_X54_Y53_N20
\mess[33]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[33]~feeder_combout\ = mess(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(40),
	combout => \mess[33]~feeder_combout\);

-- Location: FF_X54_Y53_N21
\mess[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[33]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(33));

-- Location: LCCOMB_X54_Y51_N12
\mess[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[26]~feeder_combout\ = mess(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(33),
	combout => \mess[26]~feeder_combout\);

-- Location: FF_X54_Y51_N13
\mess[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[26]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(26));

-- Location: LCCOMB_X52_Y51_N22
\mess[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[19]~feeder_combout\ = mess(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(26),
	combout => \mess[19]~feeder_combout\);

-- Location: FF_X52_Y51_N23
\mess[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[19]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(19));

-- Location: LCCOMB_X52_Y51_N28
\mess[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[12]~feeder_combout\ = mess(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(19),
	combout => \mess[12]~feeder_combout\);

-- Location: FF_X52_Y51_N29
\mess[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[12]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(12));

-- Location: LCCOMB_X52_Y51_N2
\mess[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[5]~feeder_combout\ = mess(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(12),
	combout => \mess[5]~feeder_combout\);

-- Location: FF_X52_Y51_N3
\mess[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[5]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(5));

-- Location: LCCOMB_X52_Y51_N8
\HEX5[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[5]~1_combout\ = !mess(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(5),
	combout => \HEX5[5]~1_combout\);

-- Location: FF_X52_Y51_N9
\HEX5[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[5]~1_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[5]~reg0_q\);

-- Location: LCCOMB_X54_Y51_N18
\mess[347]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[347]~152_combout\ = !mess(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(4),
	combout => \mess[347]~152_combout\);

-- Location: FF_X54_Y51_N19
\mess[347]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[347]~152_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(347));

-- Location: LCCOMB_X54_Y51_N24
\mess[340]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[340]~149_combout\ = !mess(347)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(347),
	combout => \mess[340]~149_combout\);

-- Location: FF_X54_Y51_N25
\mess[340]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[340]~149_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(340));

-- Location: LCCOMB_X54_Y51_N2
\mess[333]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[333]~feeder_combout\ = mess(340)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(340),
	combout => \mess[333]~feeder_combout\);

-- Location: FF_X54_Y51_N3
\mess[333]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[333]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(333));

-- Location: LCCOMB_X54_Y51_N8
\mess[326]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[326]~feeder_combout\ = mess(333)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(333),
	combout => \mess[326]~feeder_combout\);

-- Location: FF_X54_Y51_N9
\mess[326]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[326]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(326));

-- Location: LCCOMB_X55_Y51_N14
\mess[319]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[319]~feeder_combout\ = mess(326)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(326),
	combout => \mess[319]~feeder_combout\);

-- Location: FF_X55_Y51_N15
\mess[319]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[319]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(319));

-- Location: LCCOMB_X56_Y51_N20
\mess[312]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[312]~feeder_combout\ = mess(319)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(319),
	combout => \mess[312]~feeder_combout\);

-- Location: FF_X56_Y51_N21
\mess[312]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[312]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(312));

-- Location: LCCOMB_X56_Y51_N10
\mess[305]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[305]~feeder_combout\ = mess(312)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(312),
	combout => \mess[305]~feeder_combout\);

-- Location: FF_X56_Y51_N11
\mess[305]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[305]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(305));

-- Location: LCCOMB_X56_Y51_N28
\mess[298]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[298]~feeder_combout\ = mess(305)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(305),
	combout => \mess[298]~feeder_combout\);

-- Location: FF_X56_Y51_N29
\mess[298]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[298]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(298));

-- Location: LCCOMB_X55_Y51_N12
\mess[291]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[291]~feeder_combout\ = mess(298)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(298),
	combout => \mess[291]~feeder_combout\);

-- Location: FF_X55_Y51_N13
\mess[291]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[291]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(291));

-- Location: LCCOMB_X55_Y51_N18
\mess[284]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[284]~feeder_combout\ = mess(291)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(291),
	combout => \mess[284]~feeder_combout\);

-- Location: FF_X55_Y51_N19
\mess[284]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[284]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(284));

-- Location: LCCOMB_X54_Y51_N0
\mess[277]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[277]~feeder_combout\ = mess(284)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(284),
	combout => \mess[277]~feeder_combout\);

-- Location: FF_X54_Y51_N1
\mess[277]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[277]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(277));

-- Location: LCCOMB_X54_Y51_N10
\mess[270]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[270]~124_combout\ = !mess(277)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(277),
	combout => \mess[270]~124_combout\);

-- Location: FF_X54_Y51_N11
\mess[270]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[270]~124_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(270));

-- Location: LCCOMB_X54_Y51_N20
\mess[263]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[263]~121_combout\ = !mess(270)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(270),
	combout => \mess[263]~121_combout\);

-- Location: FF_X54_Y51_N21
\mess[263]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[263]~121_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(263));

-- Location: LCCOMB_X54_Y51_N6
\mess[256]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[256]~feeder_combout\ = mess(263)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(263),
	combout => \mess[256]~feeder_combout\);

-- Location: FF_X54_Y51_N7
\mess[256]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[256]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(256));

-- Location: LCCOMB_X50_Y51_N6
\mess[249]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[249]~feeder_combout\ = mess(256)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(256),
	combout => \mess[249]~feeder_combout\);

-- Location: FF_X50_Y51_N7
\mess[249]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[249]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(249));

-- Location: LCCOMB_X50_Y51_N26
\mess[242]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[242]~feeder_combout\ = mess(249)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(249),
	combout => \mess[242]~feeder_combout\);

-- Location: FF_X50_Y51_N27
\mess[242]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[242]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(242));

-- Location: LCCOMB_X46_Y51_N18
\mess[235]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[235]~107_combout\ = !mess(242)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(242),
	combout => \mess[235]~107_combout\);

-- Location: FF_X46_Y51_N19
\mess[235]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[235]~107_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(235));

-- Location: LCCOMB_X46_Y51_N20
\mess[228]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[228]~104_combout\ = !mess(235)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(235),
	combout => \mess[228]~104_combout\);

-- Location: FF_X46_Y51_N21
\mess[228]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[228]~104_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(228));

-- Location: LCCOMB_X46_Y51_N2
\mess[221]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[221]~feeder_combout\ = mess(228)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(228),
	combout => \mess[221]~feeder_combout\);

-- Location: FF_X46_Y51_N3
\mess[221]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[221]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(221));

-- Location: LCCOMB_X46_Y51_N16
\mess[214]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[214]~98_combout\ = !mess(221)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(221),
	combout => \mess[214]~98_combout\);

-- Location: FF_X46_Y51_N17
\mess[214]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[214]~98_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(214));

-- Location: LCCOMB_X46_Y51_N10
\mess[207]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[207]~93_combout\ = !mess(214)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(214),
	combout => \mess[207]~93_combout\);

-- Location: FF_X46_Y51_N11
\mess[207]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[207]~93_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(207));

-- Location: LCCOMB_X46_Y51_N12
\mess[200]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[200]~feeder_combout\ = mess(207)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(207),
	combout => \mess[200]~feeder_combout\);

-- Location: FF_X46_Y51_N13
\mess[200]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[200]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(200));

-- Location: LCCOMB_X46_Y51_N6
\mess[193]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[193]~87_combout\ = !mess(200)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(200),
	combout => \mess[193]~87_combout\);

-- Location: FF_X46_Y51_N7
\mess[193]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[193]~87_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(193));

-- Location: LCCOMB_X46_Y51_N0
\mess[186]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[186]~feeder_combout\ = mess(193)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(193),
	combout => \mess[186]~feeder_combout\);

-- Location: FF_X46_Y51_N1
\mess[186]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[186]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(186));

-- Location: LCCOMB_X46_Y51_N4
\mess[179]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[179]~79_combout\ = !mess(186)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(186),
	combout => \mess[179]~79_combout\);

-- Location: FF_X46_Y51_N5
\mess[179]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[179]~79_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(179));

-- Location: LCCOMB_X46_Y51_N22
\mess[172]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[172]~feeder_combout\ = mess(179)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(179),
	combout => \mess[172]~feeder_combout\);

-- Location: FF_X46_Y51_N23
\mess[172]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[172]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(172));

-- Location: LCCOMB_X46_Y51_N28
\mess[165]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[165]~feeder_combout\ = mess(172)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(172),
	combout => \mess[165]~feeder_combout\);

-- Location: FF_X46_Y51_N29
\mess[165]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[165]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(165));

-- Location: LCCOMB_X46_Y51_N30
\mess[158]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[158]~feeder_combout\ = mess(165)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(165),
	combout => \mess[158]~feeder_combout\);

-- Location: FF_X46_Y51_N31
\mess[158]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[158]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(158));

-- Location: LCCOMB_X47_Y51_N30
\mess[151]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[151]~feeder_combout\ = mess(158)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(158),
	combout => \mess[151]~feeder_combout\);

-- Location: FF_X47_Y51_N31
\mess[151]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[151]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(151));

-- Location: LCCOMB_X47_Y51_N6
\mess[144]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[144]~feeder_combout\ = mess(151)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(151),
	combout => \mess[144]~feeder_combout\);

-- Location: FF_X47_Y51_N7
\mess[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[144]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(144));

-- Location: LCCOMB_X46_Y51_N24
\mess[137]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[137]~feeder_combout\ = mess(144)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(144),
	combout => \mess[137]~feeder_combout\);

-- Location: FF_X46_Y51_N25
\mess[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[137]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(137));

-- Location: LCCOMB_X47_Y51_N12
\mess[130]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[130]~55_combout\ = !mess(137)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(137),
	combout => \mess[130]~55_combout\);

-- Location: FF_X47_Y51_N13
\mess[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[130]~55_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(130));

-- Location: LCCOMB_X47_Y51_N10
\mess[123]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[123]~50_combout\ = !mess(130)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(130),
	combout => \mess[123]~50_combout\);

-- Location: FF_X47_Y51_N11
\mess[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[123]~50_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(123));

-- Location: LCCOMB_X47_Y51_N4
\mess[116]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[116]~feeder_combout\ = mess(123)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(123),
	combout => \mess[116]~feeder_combout\);

-- Location: FF_X47_Y51_N5
\mess[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[116]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(116));

-- Location: LCCOMB_X47_Y51_N26
\mess[109]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[109]~feeder_combout\ = mess(116)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(116),
	combout => \mess[109]~feeder_combout\);

-- Location: FF_X47_Y51_N27
\mess[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[109]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(109));

-- Location: LCCOMB_X47_Y51_N16
\mess[102]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[102]~feeder_combout\ = mess(109)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(109),
	combout => \mess[102]~feeder_combout\);

-- Location: FF_X47_Y51_N17
\mess[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[102]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(102));

-- Location: LCCOMB_X47_Y51_N14
\mess[95]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[95]~feeder_combout\ = mess(102)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(102),
	combout => \mess[95]~feeder_combout\);

-- Location: FF_X47_Y51_N15
\mess[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[95]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(95));

-- Location: LCCOMB_X47_Y51_N28
\mess[88]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[88]~feeder_combout\ = mess(95)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(95),
	combout => \mess[88]~feeder_combout\);

-- Location: FF_X47_Y51_N29
\mess[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[88]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(88));

-- Location: LCCOMB_X46_Y51_N14
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

-- Location: FF_X46_Y51_N15
\mess[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[81]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(81));

-- Location: LCCOMB_X47_Y51_N18
\mess[74]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[74]~33_combout\ = !mess(81)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(81),
	combout => \mess[74]~33_combout\);

-- Location: FF_X47_Y51_N19
\mess[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[74]~33_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(74));

-- Location: LCCOMB_X47_Y51_N20
\mess[67]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[67]~29_combout\ = !mess(74)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(74),
	combout => \mess[67]~29_combout\);

-- Location: FF_X47_Y51_N21
\mess[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[67]~29_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(67));

-- Location: LCCOMB_X47_Y51_N2
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

-- Location: FF_X47_Y51_N3
\mess[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[60]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(60));

-- Location: LCCOMB_X46_Y51_N8
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

-- Location: FF_X46_Y51_N9
\mess[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[53]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(53));

-- Location: LCCOMB_X47_Y51_N24
\mess[46]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[46]~18_combout\ = !mess(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(53),
	combout => \mess[46]~18_combout\);

-- Location: FF_X47_Y51_N25
\mess[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[46]~18_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(46));

-- Location: LCCOMB_X51_Y51_N0
\mess[39]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[39]~15_combout\ = !mess(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(46),
	combout => \mess[39]~15_combout\);

-- Location: FF_X51_Y51_N1
\mess[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[39]~15_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(39));

-- Location: LCCOMB_X51_Y52_N12
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

-- Location: FF_X51_Y52_N13
\mess[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[32]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(32));

-- Location: LCCOMB_X51_Y51_N28
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

-- Location: FF_X51_Y51_N29
\mess[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[25]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(25));

-- Location: LCCOMB_X51_Y51_N8
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

-- Location: FF_X51_Y51_N9
\mess[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[18]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(18));

-- Location: LCCOMB_X51_Y48_N0
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

-- Location: FF_X51_Y48_N1
\mess[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[11]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(11));

-- Location: LCCOMB_X54_Y48_N16
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

-- Location: FF_X54_Y48_N17
\mess[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[4]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(4));

-- Location: LCCOMB_X54_Y50_N20
\HEX5[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[4]~2_combout\ = !mess(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(4),
	combout => \HEX5[4]~2_combout\);

-- Location: FF_X54_Y50_N21
\HEX5[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[4]~2_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[4]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N20
\mess[346]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[346]~feeder_combout\ = mess(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(3),
	combout => \mess[346]~feeder_combout\);

-- Location: FF_X52_Y53_N21
\mess[346]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[346]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(346));

-- Location: LCCOMB_X52_Y53_N2
\mess[339]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[339]~feeder_combout\ = mess(346)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(346),
	combout => \mess[339]~feeder_combout\);

-- Location: FF_X52_Y53_N3
\mess[339]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[339]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(339));

-- Location: LCCOMB_X52_Y53_N22
\mess[332]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[332]~147_combout\ = !mess(339)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(339),
	combout => \mess[332]~147_combout\);

-- Location: FF_X52_Y53_N23
\mess[332]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[332]~147_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(332));

-- Location: LCCOMB_X52_Y50_N4
\mess[325]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[325]~feeder_combout\ = mess(332)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(332),
	combout => \mess[325]~feeder_combout\);

-- Location: FF_X52_Y50_N5
\mess[325]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[325]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(325));

-- Location: LCCOMB_X51_Y50_N6
\mess[318]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[318]~feeder_combout\ = mess(325)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(325),
	combout => \mess[318]~feeder_combout\);

-- Location: FF_X51_Y50_N7
\mess[318]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[318]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(318));

-- Location: LCCOMB_X51_Y50_N4
\mess[311]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[311]~142_combout\ = !mess(318)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(318),
	combout => \mess[311]~142_combout\);

-- Location: FF_X51_Y50_N5
\mess[311]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[311]~142_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(311));

-- Location: LCCOMB_X50_Y50_N14
\mess[304]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[304]~feeder_combout\ = mess(311)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(311),
	combout => \mess[304]~feeder_combout\);

-- Location: FF_X50_Y50_N15
\mess[304]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[304]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(304));

-- Location: LCCOMB_X51_Y50_N30
\mess[297]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[297]~137_combout\ = !mess(304)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(304),
	combout => \mess[297]~137_combout\);

-- Location: FF_X51_Y50_N31
\mess[297]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[297]~137_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(297));

-- Location: LCCOMB_X51_Y50_N16
\mess[290]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[290]~133_combout\ = !mess(297)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(297),
	combout => \mess[290]~133_combout\);

-- Location: FF_X51_Y50_N17
\mess[290]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[290]~133_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(290));

-- Location: LCCOMB_X51_Y50_N10
\mess[283]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[283]~feeder_combout\ = mess(290)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(290),
	combout => \mess[283]~feeder_combout\);

-- Location: FF_X51_Y50_N11
\mess[283]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[283]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(283));

-- Location: LCCOMB_X51_Y50_N20
\mess[276]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[276]~feeder_combout\ = mess(283)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(283),
	combout => \mess[276]~feeder_combout\);

-- Location: FF_X51_Y50_N21
\mess[276]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[276]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(276));

-- Location: LCCOMB_X51_Y50_N18
\mess[269]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[269]~feeder_combout\ = mess(276)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(276),
	combout => \mess[269]~feeder_combout\);

-- Location: FF_X51_Y50_N19
\mess[269]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[269]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(269));

-- Location: LCCOMB_X51_Y50_N12
\mess[262]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[262]~122_combout\ = !mess(269)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(269),
	combout => \mess[262]~122_combout\);

-- Location: FF_X51_Y50_N13
\mess[262]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[262]~122_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(262));

-- Location: LCCOMB_X51_Y50_N26
\mess[255]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[255]~116_combout\ = !mess(262)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(262),
	combout => \mess[255]~116_combout\);

-- Location: FF_X51_Y50_N27
\mess[255]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[255]~116_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(255));

-- Location: LCCOMB_X50_Y50_N28
\mess[248]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[248]~feeder_combout\ = mess(255)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(255),
	combout => \mess[248]~feeder_combout\);

-- Location: FF_X50_Y50_N29
\mess[248]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[248]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(248));

-- Location: LCCOMB_X50_Y50_N10
\mess[241]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[241]~111_combout\ = !mess(248)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(248),
	combout => \mess[241]~111_combout\);

-- Location: FF_X50_Y50_N11
\mess[241]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[241]~111_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(241));

-- Location: LCCOMB_X50_Y50_N16
\mess[234]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[234]~feeder_combout\ = mess(241)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(241),
	combout => \mess[234]~feeder_combout\);

-- Location: FF_X50_Y50_N17
\mess[234]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[234]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(234));

-- Location: LCCOMB_X50_Y50_N6
\mess[227]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[227]~feeder_combout\ = mess(234)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(234),
	combout => \mess[227]~feeder_combout\);

-- Location: FF_X50_Y50_N7
\mess[227]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[227]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(227));

-- Location: LCCOMB_X50_Y50_N0
\mess[220]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[220]~feeder_combout\ = mess(227)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(227),
	combout => \mess[220]~feeder_combout\);

-- Location: FF_X50_Y50_N1
\mess[220]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[220]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(220));

-- Location: LCCOMB_X50_Y50_N18
\mess[213]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[213]~99_combout\ = !mess(220)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(220),
	combout => \mess[213]~99_combout\);

-- Location: FF_X50_Y50_N19
\mess[213]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[213]~99_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(213));

-- Location: LCCOMB_X50_Y50_N20
\mess[206]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[206]~94_combout\ = !mess(213)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(213),
	combout => \mess[206]~94_combout\);

-- Location: FF_X50_Y50_N21
\mess[206]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[206]~94_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(206));

-- Location: LCCOMB_X50_Y50_N22
\mess[199]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[199]~feeder_combout\ = mess(206)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(206),
	combout => \mess[199]~feeder_combout\);

-- Location: FF_X50_Y50_N23
\mess[199]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[199]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(199));

-- Location: LCCOMB_X50_Y50_N12
\mess[192]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[192]~feeder_combout\ = mess(199)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(199),
	combout => \mess[192]~feeder_combout\);

-- Location: FF_X50_Y50_N13
\mess[192]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[192]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(192));

-- Location: LCCOMB_X50_Y50_N30
\mess[185]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[185]~84_combout\ = !mess(192)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(192),
	combout => \mess[185]~84_combout\);

-- Location: FF_X50_Y50_N31
\mess[185]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[185]~84_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(185));

-- Location: LCCOMB_X50_Y50_N4
\mess[178]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[178]~80_combout\ = !mess(185)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(185),
	combout => \mess[178]~80_combout\);

-- Location: FF_X50_Y50_N5
\mess[178]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[178]~80_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(178));

-- Location: LCCOMB_X50_Y50_N2
\mess[171]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[171]~74_combout\ = !mess(178)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(178),
	combout => \mess[171]~74_combout\);

-- Location: FF_X50_Y50_N3
\mess[171]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[171]~74_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(171));

-- Location: LCCOMB_X50_Y50_N8
\mess[164]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[164]~feeder_combout\ = mess(171)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(171),
	combout => \mess[164]~feeder_combout\);

-- Location: FF_X50_Y50_N9
\mess[164]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[164]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(164));

-- Location: LCCOMB_X51_Y50_N8
\mess[157]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[157]~feeder_combout\ = mess(164)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(164),
	combout => \mess[157]~feeder_combout\);

-- Location: FF_X51_Y50_N9
\mess[157]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[157]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(157));

-- Location: LCCOMB_X52_Y50_N14
\mess[150]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[150]~66_combout\ = !mess(157)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(157),
	combout => \mess[150]~66_combout\);

-- Location: FF_X52_Y50_N15
\mess[150]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[150]~66_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(150));

-- Location: LCCOMB_X52_Y50_N0
\mess[143]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[143]~62_combout\ = !mess(150)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(150),
	combout => \mess[143]~62_combout\);

-- Location: FF_X52_Y50_N1
\mess[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[143]~62_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(143));

-- Location: LCCOMB_X52_Y50_N26
\mess[136]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[136]~59_combout\ = !mess(143)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(143),
	combout => \mess[136]~59_combout\);

-- Location: FF_X52_Y50_N27
\mess[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[136]~59_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(136));

-- Location: LCCOMB_X52_Y50_N24
\mess[129]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[129]~56_combout\ = !mess(136)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(136),
	combout => \mess[129]~56_combout\);

-- Location: FF_X52_Y50_N25
\mess[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[129]~56_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(129));

-- Location: LCCOMB_X51_Y50_N2
\mess[122]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[122]~feeder_combout\ = mess(129)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(129),
	combout => \mess[122]~feeder_combout\);

-- Location: FF_X51_Y50_N3
\mess[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[122]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(122));

-- Location: LCCOMB_X51_Y50_N28
\mess[115]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[115]~feeder_combout\ = mess(122)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(122),
	combout => \mess[115]~feeder_combout\);

-- Location: FF_X51_Y50_N29
\mess[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[115]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(115));

-- Location: LCCOMB_X51_Y50_N14
\mess[108]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[108]~44_combout\ = !mess(115)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(115),
	combout => \mess[108]~44_combout\);

-- Location: FF_X51_Y50_N15
\mess[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[108]~44_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(108));

-- Location: LCCOMB_X52_Y50_N10
\mess[101]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[101]~41_combout\ = !mess(108)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(108),
	combout => \mess[101]~41_combout\);

-- Location: FF_X52_Y50_N11
\mess[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[101]~41_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(101));

-- Location: LCCOMB_X52_Y50_N28
\mess[94]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[94]~feeder_combout\ = mess(101)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(101),
	combout => \mess[94]~feeder_combout\);

-- Location: FF_X52_Y50_N29
\mess[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[94]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(94));

-- Location: LCCOMB_X52_Y50_N6
\mess[87]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[87]~38_combout\ = !mess(94)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(94),
	combout => \mess[87]~38_combout\);

-- Location: FF_X52_Y50_N7
\mess[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[87]~38_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(87));

-- Location: LCCOMB_X52_Y50_N20
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

-- Location: FF_X52_Y50_N21
\mess[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[80]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(80));

-- Location: LCCOMB_X52_Y50_N18
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

-- Location: FF_X52_Y50_N19
\mess[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[73]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(73));

-- Location: LCCOMB_X52_Y50_N12
\mess[66]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[66]~30_combout\ = !mess(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(73),
	combout => \mess[66]~30_combout\);

-- Location: FF_X52_Y50_N13
\mess[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[66]~30_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(66));

-- Location: LCCOMB_X52_Y50_N2
\mess[59]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[59]~feeder_combout\ = mess(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(66),
	combout => \mess[59]~feeder_combout\);

-- Location: FF_X52_Y50_N3
\mess[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[59]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(59));

-- Location: LCCOMB_X52_Y50_N22
\mess[52]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[52]~feeder_combout\ = mess(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(59),
	combout => \mess[52]~feeder_combout\);

-- Location: FF_X52_Y50_N23
\mess[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[52]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(52));

-- Location: LCCOMB_X52_Y53_N18
\mess[45]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[45]~feeder_combout\ = mess(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(52),
	combout => \mess[45]~feeder_combout\);

-- Location: FF_X52_Y53_N19
\mess[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[45]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(45));

-- Location: LCCOMB_X52_Y53_N6
\mess[38]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[38]~16_combout\ = !mess(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(45),
	combout => \mess[38]~16_combout\);

-- Location: FF_X52_Y53_N7
\mess[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[38]~16_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(38));

-- Location: LCCOMB_X52_Y53_N12
\mess[31]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[31]~11_combout\ = !mess(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(38),
	combout => \mess[31]~11_combout\);

-- Location: FF_X52_Y53_N13
\mess[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[31]~11_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(31));

-- Location: LCCOMB_X52_Y53_N28
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

-- Location: FF_X52_Y53_N29
\mess[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[24]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(24));

-- Location: LCCOMB_X52_Y53_N16
\mess[17]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[17]~8_combout\ = !mess(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(24),
	combout => \mess[17]~8_combout\);

-- Location: FF_X52_Y53_N17
\mess[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[17]~8_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(17));

-- Location: LCCOMB_X52_Y53_N0
\mess[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[10]~5_combout\ = !mess(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(17),
	combout => \mess[10]~5_combout\);

-- Location: FF_X52_Y53_N1
\mess[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[10]~5_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(10));

-- Location: LCCOMB_X52_Y53_N26
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

-- Location: FF_X52_Y53_N27
\mess[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[3]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(3));

-- Location: FF_X52_Y53_N11
\HEX5[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	asdata => mess(3),
	clrn => \trigger0~input_o\,
	sload => VCC,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[3]~reg0_q\);

-- Location: LCCOMB_X52_Y52_N12
\mess[345]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[345]~feeder_combout\ = mess(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(2),
	combout => \mess[345]~feeder_combout\);

-- Location: FF_X52_Y52_N13
\mess[345]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[345]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(345));

-- Location: LCCOMB_X52_Y52_N30
\mess[338]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[338]~feeder_combout\ = mess(345)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(345),
	combout => \mess[338]~feeder_combout\);

-- Location: FF_X52_Y52_N31
\mess[338]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[338]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(338));

-- Location: LCCOMB_X52_Y52_N4
\mess[331]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[331]~feeder_combout\ = mess(338)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(338),
	combout => \mess[331]~feeder_combout\);

-- Location: FF_X52_Y52_N5
\mess[331]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[331]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(331));

-- Location: LCCOMB_X52_Y52_N6
\mess[324]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[324]~feeder_combout\ = mess(331)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(331),
	combout => \mess[324]~feeder_combout\);

-- Location: FF_X52_Y52_N7
\mess[324]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[324]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(324));

-- Location: LCCOMB_X51_Y53_N14
\mess[317]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[317]~feeder_combout\ = mess(324)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(324),
	combout => \mess[317]~feeder_combout\);

-- Location: FF_X51_Y53_N15
\mess[317]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[317]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(317));

-- Location: LCCOMB_X51_Y53_N0
\mess[310]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[310]~143_combout\ = !mess(317)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(317),
	combout => \mess[310]~143_combout\);

-- Location: FF_X51_Y53_N1
\mess[310]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[310]~143_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(310));

-- Location: LCCOMB_X51_Y53_N10
\mess[303]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[303]~138_combout\ = !mess(310)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(310),
	combout => \mess[303]~138_combout\);

-- Location: FF_X51_Y53_N11
\mess[303]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[303]~138_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(303));

-- Location: LCCOMB_X51_Y53_N24
\mess[296]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[296]~feeder_combout\ = mess(303)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(303),
	combout => \mess[296]~feeder_combout\);

-- Location: FF_X51_Y53_N25
\mess[296]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[296]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(296));

-- Location: LCCOMB_X51_Y53_N22
\mess[289]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[289]~feeder_combout\ = mess(296)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(296),
	combout => \mess[289]~feeder_combout\);

-- Location: FF_X51_Y53_N23
\mess[289]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[289]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(289));

-- Location: LCCOMB_X51_Y53_N8
\mess[282]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[282]~131_combout\ = !mess(289)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(289),
	combout => \mess[282]~131_combout\);

-- Location: FF_X51_Y53_N9
\mess[282]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[282]~131_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(282));

-- Location: LCCOMB_X51_Y52_N14
\mess[275]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[275]~feeder_combout\ = mess(282)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(282),
	combout => \mess[275]~feeder_combout\);

-- Location: FF_X51_Y52_N15
\mess[275]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[275]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(275));

-- Location: LCCOMB_X52_Y52_N0
\mess[268]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[268]~125_combout\ = !mess(275)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(275),
	combout => \mess[268]~125_combout\);

-- Location: FF_X52_Y52_N1
\mess[268]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[268]~125_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(268));

-- Location: LCCOMB_X52_Y52_N18
\mess[261]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[261]~feeder_combout\ = mess(268)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(268),
	combout => \mess[261]~feeder_combout\);

-- Location: FF_X52_Y52_N19
\mess[261]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[261]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(261));

-- Location: LCCOMB_X52_Y52_N24
\mess[254]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[254]~117_combout\ = !mess(261)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(261),
	combout => \mess[254]~117_combout\);

-- Location: FF_X52_Y52_N25
\mess[254]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[254]~117_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(254));

-- Location: LCCOMB_X52_Y52_N22
\mess[247]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[247]~112_combout\ = !mess(254)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(254),
	combout => \mess[247]~112_combout\);

-- Location: FF_X52_Y52_N23
\mess[247]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[247]~112_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(247));

-- Location: LCCOMB_X52_Y48_N22
\mess[240]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[240]~feeder_combout\ = mess(247)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(247),
	combout => \mess[240]~feeder_combout\);

-- Location: FF_X52_Y48_N23
\mess[240]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[240]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(240));

-- Location: LCCOMB_X52_Y48_N12
\mess[233]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[233]~108_combout\ = !mess(240)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(240),
	combout => \mess[233]~108_combout\);

-- Location: FF_X52_Y48_N13
\mess[233]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[233]~108_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(233));

-- Location: LCCOMB_X52_Y48_N6
\mess[226]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[226]~feeder_combout\ = mess(233)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(233),
	combout => \mess[226]~feeder_combout\);

-- Location: FF_X52_Y48_N7
\mess[226]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[226]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(226));

-- Location: LCCOMB_X52_Y48_N0
\mess[219]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[219]~feeder_combout\ = mess(226)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(226),
	combout => \mess[219]~feeder_combout\);

-- Location: FF_X52_Y48_N1
\mess[219]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[219]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(219));

-- Location: LCCOMB_X52_Y49_N2
\mess[212]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[212]~100_combout\ = !mess(219)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(219),
	combout => \mess[212]~100_combout\);

-- Location: FF_X52_Y49_N3
\mess[212]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[212]~100_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(212));

-- Location: LCCOMB_X51_Y49_N8
\mess[205]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[205]~95_combout\ = !mess(212)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(212),
	combout => \mess[205]~95_combout\);

-- Location: FF_X51_Y49_N9
\mess[205]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[205]~95_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(205));

-- Location: LCCOMB_X52_Y48_N30
\mess[198]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[198]~90_combout\ = !mess(205)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(205),
	combout => \mess[198]~90_combout\);

-- Location: FF_X52_Y48_N31
\mess[198]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[198]~90_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(198));

-- Location: LCCOMB_X52_Y48_N16
\mess[191]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[191]~88_combout\ = !mess(198)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(198),
	combout => \mess[191]~88_combout\);

-- Location: FF_X52_Y48_N17
\mess[191]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[191]~88_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(191));

-- Location: LCCOMB_X51_Y52_N24
\mess[184]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[184]~85_combout\ = !mess(191)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(191),
	combout => \mess[184]~85_combout\);

-- Location: FF_X51_Y52_N25
\mess[184]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[184]~85_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(184));

-- Location: LCCOMB_X51_Y52_N10
\mess[177]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[177]~feeder_combout\ = mess(184)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(184),
	combout => \mess[177]~feeder_combout\);

-- Location: FF_X51_Y52_N11
\mess[177]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[177]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(177));

-- Location: LCCOMB_X51_Y52_N28
\mess[170]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[170]~75_combout\ = !mess(177)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(177),
	combout => \mess[170]~75_combout\);

-- Location: FF_X51_Y52_N29
\mess[170]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[170]~75_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(170));

-- Location: LCCOMB_X51_Y52_N2
\mess[163]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[163]~70_combout\ = !mess(170)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(170),
	combout => \mess[163]~70_combout\);

-- Location: FF_X51_Y52_N3
\mess[163]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[163]~70_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(163));

-- Location: LCCOMB_X51_Y53_N26
\mess[156]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[156]~feeder_combout\ = mess(163)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(163),
	combout => \mess[156]~feeder_combout\);

-- Location: FF_X51_Y53_N27
\mess[156]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[156]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(156));

-- Location: LCCOMB_X51_Y51_N30
\mess[149]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[149]~feeder_combout\ = mess(156)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(156),
	combout => \mess[149]~feeder_combout\);

-- Location: FF_X51_Y51_N31
\mess[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[149]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(149));

-- Location: LCCOMB_X51_Y51_N6
\mess[142]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[142]~63_combout\ = !mess(149)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(149),
	combout => \mess[142]~63_combout\);

-- Location: FF_X51_Y51_N7
\mess[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[142]~63_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(142));

-- Location: LCCOMB_X51_Y51_N10
\mess[135]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[135]~60_combout\ = !mess(142)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(142),
	combout => \mess[135]~60_combout\);

-- Location: FF_X51_Y51_N11
\mess[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[135]~60_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(135));

-- Location: LCCOMB_X51_Y51_N20
\mess[128]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[128]~feeder_combout\ = mess(135)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(135),
	combout => \mess[128]~feeder_combout\);

-- Location: FF_X51_Y51_N21
\mess[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[128]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(128));

-- Location: LCCOMB_X51_Y51_N12
\mess[121]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[121]~51_combout\ = !mess(128)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(128),
	combout => \mess[121]~51_combout\);

-- Location: FF_X51_Y51_N13
\mess[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[121]~51_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(121));

-- Location: LCCOMB_X51_Y51_N22
\mess[114]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[114]~feeder_combout\ = mess(121)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(121),
	combout => \mess[114]~feeder_combout\);

-- Location: FF_X51_Y51_N23
\mess[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[114]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(114));

-- Location: LCCOMB_X51_Y51_N14
\mess[107]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[107]~45_combout\ = !mess(114)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(114),
	combout => \mess[107]~45_combout\);

-- Location: FF_X51_Y51_N15
\mess[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[107]~45_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(107));

-- Location: FF_X51_Y51_N27
\mess[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	asdata => mess(107),
	sload => VCC,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(100));

-- Location: LCCOMB_X51_Y51_N2
\mess[93]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[93]~feeder_combout\ = mess(100)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(100),
	combout => \mess[93]~feeder_combout\);

-- Location: FF_X51_Y51_N3
\mess[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[93]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(93));

-- Location: LCCOMB_X50_Y51_N20
\mess[86]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[86]~feeder_combout\ = mess(93)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(93),
	combout => \mess[86]~feeder_combout\);

-- Location: FF_X50_Y51_N21
\mess[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[86]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(86));

-- Location: LCCOMB_X50_Y49_N0
\mess[79]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[79]~feeder_combout\ = mess(86)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(86),
	combout => \mess[79]~feeder_combout\);

-- Location: FF_X50_Y49_N1
\mess[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[79]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(79));

-- Location: LCCOMB_X50_Y50_N26
\mess[72]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[72]~34_combout\ = !mess(79)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(79),
	combout => \mess[72]~34_combout\);

-- Location: FF_X50_Y50_N27
\mess[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[72]~34_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(72));

-- Location: LCCOMB_X49_Y50_N10
\mess[65]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[65]~31_combout\ = !mess(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(72),
	combout => \mess[65]~31_combout\);

-- Location: FF_X49_Y50_N11
\mess[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[65]~31_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(65));

-- Location: LCCOMB_X49_Y50_N28
\mess[58]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[58]~25_combout\ = !mess(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(65),
	combout => \mess[58]~25_combout\);

-- Location: FF_X49_Y50_N29
\mess[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[58]~25_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(58));

-- Location: LCCOMB_X49_Y50_N18
\mess[51]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[51]~feeder_combout\ = mess(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(58),
	combout => \mess[51]~feeder_combout\);

-- Location: FF_X49_Y50_N19
\mess[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[51]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(51));

-- Location: LCCOMB_X49_Y50_N12
\mess[44]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[44]~19_combout\ = !mess(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(51),
	combout => \mess[44]~19_combout\);

-- Location: FF_X49_Y50_N13
\mess[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[44]~19_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(44));

-- Location: LCCOMB_X49_Y50_N14
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

-- Location: FF_X49_Y50_N15
\mess[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[37]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(37));

-- Location: LCCOMB_X50_Y51_N30
\mess[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[30]~feeder_combout\ = mess(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(37),
	combout => \mess[30]~feeder_combout\);

-- Location: FF_X50_Y51_N31
\mess[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[30]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(30));

-- Location: LCCOMB_X51_Y48_N20
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

-- Location: FF_X51_Y48_N21
\mess[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[23]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(23));

-- Location: LCCOMB_X51_Y48_N22
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

-- Location: FF_X51_Y48_N23
\mess[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[16]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(16));

-- Location: LCCOMB_X52_Y52_N20
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

-- Location: FF_X52_Y52_N21
\mess[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[9]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(9));

-- Location: LCCOMB_X52_Y52_N10
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

-- Location: FF_X52_Y52_N11
\mess[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[2]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(2));

-- Location: LCCOMB_X52_Y52_N8
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

-- Location: FF_X52_Y52_N9
\HEX5[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[2]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[2]~reg0_q\);

-- Location: LCCOMB_X50_Y52_N10
\mess[344]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[344]~153_combout\ = !mess(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(1),
	combout => \mess[344]~153_combout\);

-- Location: FF_X50_Y52_N11
\mess[344]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[344]~153_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(344));

-- Location: LCCOMB_X50_Y52_N20
\mess[337]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[337]~feeder_combout\ = mess(344)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(344),
	combout => \mess[337]~feeder_combout\);

-- Location: FF_X50_Y52_N21
\mess[337]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[337]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(337));

-- Location: LCCOMB_X50_Y52_N2
\mess[330]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[330]~feeder_combout\ = mess(337)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(337),
	combout => \mess[330]~feeder_combout\);

-- Location: FF_X50_Y52_N3
\mess[330]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[330]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(330));

-- Location: LCCOMB_X50_Y52_N0
\mess[323]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[323]~feeder_combout\ = mess(330)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(330),
	combout => \mess[323]~feeder_combout\);

-- Location: FF_X50_Y52_N1
\mess[323]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[323]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(323));

-- Location: LCCOMB_X50_Y52_N22
\mess[316]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[316]~feeder_combout\ = mess(323)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(323),
	combout => \mess[316]~feeder_combout\);

-- Location: FF_X50_Y52_N23
\mess[316]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[316]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(316));

-- Location: LCCOMB_X50_Y52_N16
\mess[309]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[309]~144_combout\ = !mess(316)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(316),
	combout => \mess[309]~144_combout\);

-- Location: FF_X50_Y52_N17
\mess[309]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[309]~144_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(309));

-- Location: LCCOMB_X50_Y52_N6
\mess[302]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[302]~139_combout\ = !mess(309)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(309),
	combout => \mess[302]~139_combout\);

-- Location: FF_X50_Y52_N7
\mess[302]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[302]~139_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(302));

-- Location: LCCOMB_X50_Y52_N8
\mess[295]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[295]~feeder_combout\ = mess(302)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(302),
	combout => \mess[295]~feeder_combout\);

-- Location: FF_X50_Y52_N9
\mess[295]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[295]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(295));

-- Location: LCCOMB_X50_Y51_N2
\mess[288]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[288]~134_combout\ = !mess(295)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(295),
	combout => \mess[288]~134_combout\);

-- Location: FF_X50_Y51_N3
\mess[288]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[288]~134_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(288));

-- Location: LCCOMB_X50_Y51_N12
\mess[281]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[281]~feeder_combout\ = mess(288)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(288),
	combout => \mess[281]~feeder_combout\);

-- Location: FF_X50_Y51_N13
\mess[281]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[281]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(281));

-- Location: LCCOMB_X50_Y51_N22
\mess[274]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[274]~129_combout\ = !mess(281)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(281),
	combout => \mess[274]~129_combout\);

-- Location: FF_X50_Y51_N23
\mess[274]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[274]~129_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(274));

-- Location: LCCOMB_X51_Y51_N4
\mess[267]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[267]~feeder_combout\ = mess(274)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(274),
	combout => \mess[267]~feeder_combout\);

-- Location: FF_X51_Y51_N5
\mess[267]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[267]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(267));

-- Location: LCCOMB_X50_Y51_N16
\mess[260]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[260]~feeder_combout\ = mess(267)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(267),
	combout => \mess[260]~feeder_combout\);

-- Location: FF_X50_Y51_N17
\mess[260]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[260]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(260));

-- Location: LCCOMB_X50_Y51_N18
\mess[253]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[253]~118_combout\ = !mess(260)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(260),
	combout => \mess[253]~118_combout\);

-- Location: FF_X50_Y51_N19
\mess[253]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[253]~118_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(253));

-- Location: LCCOMB_X50_Y51_N24
\mess[246]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[246]~113_combout\ = !mess(253)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(253),
	combout => \mess[246]~113_combout\);

-- Location: FF_X50_Y51_N25
\mess[246]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[246]~113_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(246));

-- Location: LCCOMB_X50_Y51_N4
\mess[239]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[239]~feeder_combout\ = mess(246)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(246),
	combout => \mess[239]~feeder_combout\);

-- Location: FF_X50_Y51_N5
\mess[239]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[239]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(239));

-- Location: LCCOMB_X50_Y51_N8
\mess[232]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[232]~feeder_combout\ = mess(239)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(239),
	combout => \mess[232]~feeder_combout\);

-- Location: FF_X50_Y51_N9
\mess[232]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[232]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(232));

-- Location: LCCOMB_X50_Y51_N14
\mess[225]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[225]~105_combout\ = !mess(232)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(232),
	combout => \mess[225]~105_combout\);

-- Location: FF_X50_Y51_N15
\mess[225]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[225]~105_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(225));

-- Location: LCCOMB_X51_Y51_N18
\mess[218]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[218]~feeder_combout\ = mess(225)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(225),
	combout => \mess[218]~feeder_combout\);

-- Location: FF_X51_Y51_N19
\mess[218]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[218]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(218));

-- Location: LCCOMB_X50_Y51_N28
\mess[211]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[211]~101_combout\ = !mess(218)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(218),
	combout => \mess[211]~101_combout\);

-- Location: FF_X50_Y51_N29
\mess[211]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[211]~101_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(211));

-- Location: LCCOMB_X50_Y51_N10
\mess[204]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[204]~96_combout\ = !mess(211)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(211),
	combout => \mess[204]~96_combout\);

-- Location: FF_X50_Y51_N11
\mess[204]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[204]~96_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(204));

-- Location: LCCOMB_X50_Y49_N2
\mess[197]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[197]~91_combout\ = !mess(204)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(204),
	combout => \mess[197]~91_combout\);

-- Location: FF_X50_Y49_N3
\mess[197]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[197]~91_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(197));

-- Location: LCCOMB_X50_Y49_N24
\mess[190]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[190]~feeder_combout\ = mess(197)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(197),
	combout => \mess[190]~feeder_combout\);

-- Location: FF_X50_Y49_N25
\mess[190]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[190]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(190));

-- Location: LCCOMB_X50_Y49_N26
\mess[183]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[183]~feeder_combout\ = mess(190)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(190),
	combout => \mess[183]~feeder_combout\);

-- Location: FF_X50_Y49_N27
\mess[183]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[183]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(183));

-- Location: LCCOMB_X50_Y49_N8
\mess[176]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[176]~feeder_combout\ = mess(183)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(183),
	combout => \mess[176]~feeder_combout\);

-- Location: FF_X50_Y49_N9
\mess[176]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[176]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(176));

-- Location: LCCOMB_X51_Y49_N2
\mess[169]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[169]~76_combout\ = !mess(176)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(176),
	combout => \mess[169]~76_combout\);

-- Location: FF_X51_Y49_N3
\mess[169]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[169]~76_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(169));

-- Location: LCCOMB_X50_Y49_N14
\mess[162]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[162]~71_combout\ = !mess(169)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(169),
	combout => \mess[162]~71_combout\);

-- Location: FF_X50_Y49_N15
\mess[162]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[162]~71_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(162));

-- Location: LCCOMB_X51_Y49_N10
\mess[155]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[155]~68_combout\ = !mess(162)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(162),
	combout => \mess[155]~68_combout\);

-- Location: FF_X51_Y49_N11
\mess[155]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[155]~68_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(155));

-- Location: LCCOMB_X52_Y49_N22
\mess[148]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[148]~67_combout\ = !mess(155)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(155),
	combout => \mess[148]~67_combout\);

-- Location: FF_X52_Y49_N23
\mess[148]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[148]~67_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(148));

-- Location: LCCOMB_X51_Y49_N16
\mess[141]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[141]~feeder_combout\ = mess(148)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(148),
	combout => \mess[141]~feeder_combout\);

-- Location: FF_X51_Y49_N17
\mess[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[141]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(141));

-- Location: LCCOMB_X51_Y49_N4
\mess[134]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[134]~feeder_combout\ = mess(141)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(141),
	combout => \mess[134]~feeder_combout\);

-- Location: FF_X51_Y49_N5
\mess[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[134]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(134));

-- Location: LCCOMB_X50_Y49_N20
\mess[127]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[127]~feeder_combout\ = mess(134)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(134),
	combout => \mess[127]~feeder_combout\);

-- Location: FF_X50_Y49_N21
\mess[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[127]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(127));

-- Location: LCCOMB_X50_Y49_N6
\mess[120]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[120]~52_combout\ = !mess(127)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(127),
	combout => \mess[120]~52_combout\);

-- Location: FF_X50_Y49_N7
\mess[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[120]~52_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(120));

-- Location: LCCOMB_X50_Y49_N30
\mess[113]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[113]~feeder_combout\ = mess(120)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(120),
	combout => \mess[113]~feeder_combout\);

-- Location: FF_X50_Y49_N31
\mess[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[113]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(113));

-- Location: LCCOMB_X51_Y49_N14
\mess[106]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[106]~46_combout\ = !mess(113)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(113),
	combout => \mess[106]~46_combout\);

-- Location: FF_X51_Y49_N15
\mess[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[106]~46_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(106));

-- Location: LCCOMB_X52_Y49_N20
\mess[99]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[99]~42_combout\ = !mess(106)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(106),
	combout => \mess[99]~42_combout\);

-- Location: FF_X52_Y49_N21
\mess[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[99]~42_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(99));

-- Location: LCCOMB_X52_Y49_N18
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

-- Location: FF_X52_Y49_N19
\mess[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[92]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(92));

-- Location: LCCOMB_X52_Y49_N0
\mess[85]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[85]~39_combout\ = !mess(92)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(92),
	combout => \mess[85]~39_combout\);

-- Location: FF_X52_Y49_N1
\mess[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[85]~39_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(85));

-- Location: LCCOMB_X51_Y50_N0
\mess[78]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[78]~feeder_combout\ = mess(85)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(85),
	combout => \mess[78]~feeder_combout\);

-- Location: FF_X51_Y50_N1
\mess[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[78]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(78));

-- Location: LCCOMB_X51_Y50_N22
\mess[71]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[71]~feeder_combout\ = mess(78)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(78),
	combout => \mess[71]~feeder_combout\);

-- Location: FF_X51_Y50_N23
\mess[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[71]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(71));

-- Location: LCCOMB_X50_Y50_N24
\mess[64]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[64]~feeder_combout\ = mess(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(71),
	combout => \mess[64]~feeder_combout\);

-- Location: FF_X50_Y50_N25
\mess[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[64]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(64));

-- Location: LCCOMB_X51_Y50_N24
\mess[57]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[57]~26_combout\ = !mess(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(64),
	combout => \mess[57]~26_combout\);

-- Location: FF_X51_Y50_N25
\mess[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[57]~26_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(57));

-- Location: LCCOMB_X52_Y50_N16
\mess[50]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[50]~23_combout\ = !mess(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(57),
	combout => \mess[50]~23_combout\);

-- Location: FF_X52_Y50_N17
\mess[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[50]~23_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(50));

-- Location: LCCOMB_X52_Y50_N8
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

-- Location: FF_X52_Y50_N9
\mess[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[43]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(43));

-- Location: LCCOMB_X52_Y52_N2
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

-- Location: FF_X52_Y52_N3
\mess[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[36]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(36));

-- Location: LCCOMB_X51_Y52_N6
\mess[29]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[29]~12_combout\ = !mess(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(36),
	combout => \mess[29]~12_combout\);

-- Location: FF_X51_Y52_N7
\mess[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[29]~12_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(29));

-- Location: LCCOMB_X51_Y52_N26
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

-- Location: FF_X51_Y52_N27
\mess[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[22]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(22));

-- Location: LCCOMB_X50_Y52_N14
\mess[15]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[15]~9_combout\ = !mess(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(22),
	combout => \mess[15]~9_combout\);

-- Location: FF_X50_Y52_N15
\mess[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[15]~9_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(15));

-- Location: LCCOMB_X50_Y52_N4
\mess[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[8]~feeder_combout\ = mess(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(15),
	combout => \mess[8]~feeder_combout\);

-- Location: FF_X50_Y52_N5
\mess[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[8]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(8));

-- Location: LCCOMB_X50_Y52_N18
\mess[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[1]~2_combout\ = !mess(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(8),
	combout => \mess[1]~2_combout\);

-- Location: FF_X50_Y52_N19
\mess[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[1]~2_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(1));

-- Location: LCCOMB_X50_Y52_N12
\HEX5[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[1]~3_combout\ = !mess(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(1),
	combout => \HEX5[1]~3_combout\);

-- Location: FF_X50_Y52_N13
\HEX5[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[1]~3_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[1]~reg0_q\);

-- Location: LCCOMB_X55_Y51_N0
\mess[343]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[343]~154_combout\ = !mess(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(0),
	combout => \mess[343]~154_combout\);

-- Location: FF_X55_Y51_N1
\mess[343]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[343]~154_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(343));

-- Location: LCCOMB_X55_Y51_N30
\mess[336]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[336]~feeder_combout\ = mess(343)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(343),
	combout => \mess[336]~feeder_combout\);

-- Location: FF_X55_Y51_N31
\mess[336]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[336]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(336));

-- Location: LCCOMB_X55_Y51_N20
\mess[329]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[329]~feeder_combout\ = mess(336)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(336),
	combout => \mess[329]~feeder_combout\);

-- Location: FF_X55_Y51_N21
\mess[329]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[329]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(329));

-- Location: LCCOMB_X52_Y48_N14
\mess[322]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[322]~feeder_combout\ = mess(329)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(329),
	combout => \mess[322]~feeder_combout\);

-- Location: FF_X52_Y48_N15
\mess[322]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[322]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(322));

-- Location: LCCOMB_X52_Y48_N4
\mess[315]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[315]~146_combout\ = !mess(322)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(322),
	combout => \mess[315]~146_combout\);

-- Location: FF_X52_Y48_N5
\mess[315]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[315]~146_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(315));

-- Location: LCCOMB_X51_Y48_N28
\mess[308]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[308]~feeder_combout\ = mess(315)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(315),
	combout => \mess[308]~feeder_combout\);

-- Location: FF_X51_Y48_N29
\mess[308]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[308]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(308));

-- Location: LCCOMB_X52_Y48_N10
\mess[301]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[301]~140_combout\ = !mess(308)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(308),
	combout => \mess[301]~140_combout\);

-- Location: FF_X52_Y48_N11
\mess[301]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[301]~140_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(301));

-- Location: LCCOMB_X52_Y48_N28
\mess[294]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[294]~feeder_combout\ = mess(301)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(301),
	combout => \mess[294]~feeder_combout\);

-- Location: FF_X52_Y48_N29
\mess[294]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[294]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(294));

-- Location: LCCOMB_X52_Y48_N2
\mess[287]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[287]~135_combout\ = !mess(294)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(294),
	combout => \mess[287]~135_combout\);

-- Location: FF_X52_Y48_N3
\mess[287]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[287]~135_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(287));

-- Location: LCCOMB_X52_Y48_N24
\mess[280]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[280]~feeder_combout\ = mess(287)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(287),
	combout => \mess[280]~feeder_combout\);

-- Location: FF_X52_Y48_N25
\mess[280]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[280]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(280));

-- Location: LCCOMB_X54_Y51_N26
\mess[273]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[273]~feeder_combout\ = mess(280)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(280),
	combout => \mess[273]~feeder_combout\);

-- Location: FF_X54_Y51_N27
\mess[273]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[273]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(273));

-- Location: LCCOMB_X56_Y51_N14
\mess[266]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[266]~126_combout\ = !mess(273)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(273),
	combout => \mess[266]~126_combout\);

-- Location: FF_X56_Y51_N15
\mess[266]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[266]~126_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(266));

-- Location: LCCOMB_X56_Y51_N12
\mess[259]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[259]~123_combout\ = !mess(266)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(266),
	combout => \mess[259]~123_combout\);

-- Location: FF_X56_Y51_N13
\mess[259]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[259]~123_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(259));

-- Location: LCCOMB_X56_Y51_N22
\mess[252]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[252]~feeder_combout\ = mess(259)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(259),
	combout => \mess[252]~feeder_combout\);

-- Location: FF_X56_Y51_N23
\mess[252]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[252]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(252));

-- Location: LCCOMB_X56_Y51_N0
\mess[245]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[245]~114_combout\ = !mess(252)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(252),
	combout => \mess[245]~114_combout\);

-- Location: FF_X56_Y51_N1
\mess[245]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[245]~114_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(245));

-- Location: LCCOMB_X56_Y51_N26
\mess[238]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[238]~feeder_combout\ = mess(245)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(245),
	combout => \mess[238]~feeder_combout\);

-- Location: FF_X56_Y51_N27
\mess[238]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[238]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(238));

-- Location: LCCOMB_X56_Y51_N30
\mess[231]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[231]~109_combout\ = !mess(238)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(238),
	combout => \mess[231]~109_combout\);

-- Location: FF_X56_Y51_N31
\mess[231]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[231]~109_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(231));

-- Location: LCCOMB_X56_Y51_N2
\mess[224]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[224]~106_combout\ = !mess(231)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(231),
	combout => \mess[224]~106_combout\);

-- Location: FF_X56_Y51_N3
\mess[224]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[224]~106_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(224));

-- Location: LCCOMB_X56_Y51_N6
\mess[217]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[217]~feeder_combout\ = mess(224)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(224),
	combout => \mess[217]~feeder_combout\);

-- Location: FF_X56_Y51_N7
\mess[217]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[217]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(217));

-- Location: LCCOMB_X56_Y51_N18
\mess[210]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[210]~feeder_combout\ = mess(217)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(217),
	combout => \mess[210]~feeder_combout\);

-- Location: FF_X56_Y51_N19
\mess[210]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[210]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(210));

-- Location: LCCOMB_X56_Y51_N16
\mess[203]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[203]~97_combout\ = !mess(210)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(210),
	combout => \mess[203]~97_combout\);

-- Location: FF_X56_Y51_N17
\mess[203]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[203]~97_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(203));

-- Location: LCCOMB_X56_Y51_N4
\mess[196]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[196]~feeder_combout\ = mess(203)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(203),
	combout => \mess[196]~feeder_combout\);

-- Location: FF_X56_Y51_N5
\mess[196]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[196]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(196));

-- Location: FF_X56_Y51_N9
\mess[189]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	asdata => mess(196),
	sload => VCC,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(189));

-- Location: LCCOMB_X56_Y51_N8
\mess[182]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[182]~86_combout\ = !mess(189)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(189),
	combout => \mess[182]~86_combout\);

-- Location: FF_X56_Y51_N25
\mess[182]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	asdata => \mess[182]~86_combout\,
	sload => VCC,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(182));

-- Location: LCCOMB_X56_Y51_N24
\mess[175]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[175]~81_combout\ = !mess(182)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(182),
	combout => \mess[175]~81_combout\);

-- Location: FF_X54_Y51_N17
\mess[175]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	asdata => \mess[175]~81_combout\,
	sload => VCC,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(175));

-- Location: LCCOMB_X54_Y51_N30
\mess[168]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[168]~feeder_combout\ = mess(175)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(175),
	combout => \mess[168]~feeder_combout\);

-- Location: FF_X54_Y51_N31
\mess[168]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[168]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(168));

-- Location: LCCOMB_X51_Y48_N18
\mess[161]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[161]~72_combout\ = !mess(168)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(168),
	combout => \mess[161]~72_combout\);

-- Location: FF_X51_Y48_N19
\mess[161]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[161]~72_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(161));

-- Location: LCCOMB_X51_Y48_N16
\mess[154]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[154]~69_combout\ = !mess(161)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(161),
	combout => \mess[154]~69_combout\);

-- Location: FF_X51_Y48_N17
\mess[154]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[154]~69_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(154));

-- Location: LCCOMB_X51_Y48_N6
\mess[147]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[147]~feeder_combout\ = mess(154)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(154),
	combout => \mess[147]~feeder_combout\);

-- Location: FF_X51_Y48_N7
\mess[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[147]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(147));

-- Location: LCCOMB_X51_Y48_N12
\mess[140]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[140]~64_combout\ = !mess(147)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(147),
	combout => \mess[140]~64_combout\);

-- Location: FF_X51_Y48_N13
\mess[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[140]~64_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(140));

-- Location: LCCOMB_X51_Y48_N26
\mess[133]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[133]~61_combout\ = !mess(140)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(140),
	combout => \mess[133]~61_combout\);

-- Location: FF_X51_Y48_N27
\mess[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[133]~61_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(133));

-- Location: LCCOMB_X54_Y52_N18
\mess[126]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[126]~57_combout\ = !mess(133)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(133),
	combout => \mess[126]~57_combout\);

-- Location: FF_X54_Y52_N19
\mess[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[126]~57_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(126));

-- Location: LCCOMB_X54_Y52_N16
\mess[119]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[119]~53_combout\ = !mess(126)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(126),
	combout => \mess[119]~53_combout\);

-- Location: LCCOMB_X52_Y52_N16
\mess[119]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[119]~feeder_combout\ = \mess[119]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mess[119]~53_combout\,
	combout => \mess[119]~feeder_combout\);

-- Location: FF_X52_Y52_N17
\mess[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[119]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(119));

-- Location: LCCOMB_X52_Y48_N26
\mess[112]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[112]~feeder_combout\ = mess(119)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(119),
	combout => \mess[112]~feeder_combout\);

-- Location: FF_X52_Y48_N27
\mess[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[112]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(112));

-- Location: LCCOMB_X52_Y48_N8
\mess[105]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[105]~feeder_combout\ = mess(112)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(112),
	combout => \mess[105]~feeder_combout\);

-- Location: FF_X52_Y48_N9
\mess[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[105]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(105));

-- Location: LCCOMB_X51_Y48_N8
\mess[98]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[98]~feeder_combout\ = mess(105)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(105),
	combout => \mess[98]~feeder_combout\);

-- Location: FF_X51_Y48_N9
\mess[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[98]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(98));

-- Location: LCCOMB_X51_Y48_N10
\mess[91]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[91]~feeder_combout\ = mess(98)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(98),
	combout => \mess[91]~feeder_combout\);

-- Location: FF_X51_Y48_N11
\mess[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[91]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(91));

-- Location: LCCOMB_X51_Y52_N4
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

-- Location: FF_X51_Y52_N5
\mess[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[84]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(84));

-- Location: LCCOMB_X50_Y52_N28
\mess[77]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[77]~36_combout\ = !mess(84)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(84),
	combout => \mess[77]~36_combout\);

-- Location: FF_X50_Y52_N29
\mess[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[77]~36_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(77));

-- Location: LCCOMB_X51_Y52_N22
\mess[70]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[70]~35_combout\ = !mess(77)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(77),
	combout => \mess[70]~35_combout\);

-- Location: FF_X51_Y52_N23
\mess[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[70]~35_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(70));

-- Location: LCCOMB_X51_Y48_N24
\mess[63]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[63]~32_combout\ = !mess(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(70),
	combout => \mess[63]~32_combout\);

-- Location: FF_X51_Y48_N25
\mess[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[63]~32_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(63));

-- Location: LCCOMB_X51_Y48_N14
\mess[56]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[56]~27_combout\ = !mess(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(63),
	combout => \mess[56]~27_combout\);

-- Location: FF_X51_Y48_N15
\mess[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[56]~27_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(56));

-- Location: LCCOMB_X52_Y48_N18
\mess[49]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[49]~feeder_combout\ = mess(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(56),
	combout => \mess[49]~feeder_combout\);

-- Location: FF_X52_Y48_N19
\mess[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[49]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(49));

-- Location: LCCOMB_X52_Y48_N20
\mess[42]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[42]~20_combout\ = !mess(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(49),
	combout => \mess[42]~20_combout\);

-- Location: FF_X52_Y48_N21
\mess[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[42]~20_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(42));

-- Location: LCCOMB_X55_Y51_N28
\mess[35]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[35]~17_combout\ = !mess(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(42),
	combout => \mess[35]~17_combout\);

-- Location: FF_X55_Y51_N29
\mess[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[35]~17_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(35));

-- Location: LCCOMB_X55_Y51_N10
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

-- Location: FF_X55_Y51_N11
\mess[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[28]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(28));

-- Location: LCCOMB_X55_Y51_N8
\mess[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[21]~feeder_combout\ = mess(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(28),
	combout => \mess[21]~feeder_combout\);

-- Location: FF_X55_Y51_N9
\mess[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[21]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(21));

-- Location: LCCOMB_X54_Y51_N14
\mess[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[14]~feeder_combout\ = mess(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(21),
	combout => \mess[14]~feeder_combout\);

-- Location: FF_X54_Y51_N15
\mess[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[14]~feeder_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(14));

-- Location: LCCOMB_X55_Y51_N22
\mess[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[7]~6_combout\ = !mess(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(14),
	combout => \mess[7]~6_combout\);

-- Location: FF_X55_Y51_N23
\mess[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[7]~6_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(7));

-- Location: LCCOMB_X55_Y51_N24
\mess[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[0]~3_combout\ = !mess(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(7),
	combout => \mess[0]~3_combout\);

-- Location: FF_X55_Y51_N25
\mess[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess[0]~3_combout\,
	ena => \mess[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(0));

-- Location: LCCOMB_X54_Y51_N16
\HEX5[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[0]~4_combout\ = !mess(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(0),
	combout => \HEX5[0]~4_combout\);

-- Location: FF_X55_Y51_N5
\HEX5[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	asdata => \HEX5[0]~4_combout\,
	clrn => \trigger0~input_o\,
	sload => VCC,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[0]~reg0_q\);

-- Location: LCCOMB_X50_Y53_N26
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

-- Location: FF_X50_Y53_N27
\HEX4[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[6]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[6]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N30
\HEX4[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[5]~0_combout\ = !mess(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(12),
	combout => \HEX4[5]~0_combout\);

-- Location: FF_X52_Y51_N31
\HEX4[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[5]~0_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[5]~reg0_q\);

-- Location: LCCOMB_X51_Y48_N4
\HEX4[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[4]~1_combout\ = !mess(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(11),
	combout => \HEX4[4]~1_combout\);

-- Location: FF_X51_Y48_N5
\HEX4[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[4]~1_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[4]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N4
\HEX4[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[3]~reg0feeder_combout\ = mess(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(10),
	combout => \HEX4[3]~reg0feeder_combout\);

-- Location: FF_X52_Y53_N5
\HEX4[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[3]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[3]~reg0_q\);

-- Location: LCCOMB_X52_Y52_N26
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

-- Location: FF_X52_Y52_N27
\HEX4[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[2]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[2]~reg0_q\);

-- Location: LCCOMB_X49_Y52_N0
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

-- Location: FF_X49_Y52_N1
\HEX4[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[1]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[1]~reg0_q\);

-- Location: LCCOMB_X55_Y51_N26
\HEX4[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[0]~reg0feeder_combout\ = mess(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(7),
	combout => \HEX4[0]~reg0feeder_combout\);

-- Location: FF_X55_Y51_N27
\HEX4[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[0]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[0]~reg0_q\);

-- Location: LCCOMB_X50_Y53_N8
\HEX3[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[6]~0_combout\ = !mess(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(20),
	combout => \HEX3[6]~0_combout\);

-- Location: FF_X50_Y53_N9
\HEX3[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[6]~0_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[6]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N4
\HEX3[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[5]~1_combout\ = !mess(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(19),
	combout => \HEX3[5]~1_combout\);

-- Location: FF_X52_Y51_N5
\HEX3[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[5]~1_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[5]~reg0_q\);

-- Location: LCCOMB_X51_Y52_N16
\HEX3[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[4]~2_combout\ = !mess(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(18),
	combout => \HEX3[4]~2_combout\);

-- Location: FF_X51_Y52_N17
\HEX3[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[4]~2_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[4]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N24
\HEX3[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[3]~3_combout\ = !mess(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(17),
	combout => \HEX3[3]~3_combout\);

-- Location: FF_X52_Y53_N25
\HEX3[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[3]~3_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[3]~reg0_q\);

-- Location: LCCOMB_X51_Y48_N30
\HEX3[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[2]~reg0feeder_combout\ = mess(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(16),
	combout => \HEX3[2]~reg0feeder_combout\);

-- Location: FF_X51_Y48_N31
\HEX3[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[2]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[2]~reg0_q\);

-- Location: LCCOMB_X50_Y52_N26
\HEX3[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[1]~reg0feeder_combout\ = mess(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(15),
	combout => \HEX3[1]~reg0feeder_combout\);

-- Location: FF_X50_Y52_N27
\HEX3[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[1]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[1]~reg0_q\);

-- Location: LCCOMB_X55_Y51_N16
\HEX3[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[0]~4_combout\ = !mess(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(14),
	combout => \HEX3[0]~4_combout\);

-- Location: FF_X55_Y51_N17
\HEX3[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[0]~4_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[0]~reg0_q\);

-- Location: LCCOMB_X50_Y53_N14
\HEX2[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[6]~reg0feeder_combout\ = mess(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(27),
	combout => \HEX2[6]~reg0feeder_combout\);

-- Location: FF_X50_Y53_N15
\HEX2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[6]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[6]~reg0_q\);

-- Location: LCCOMB_X54_Y51_N28
\HEX2[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[5]~0_combout\ = !mess(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(26),
	combout => \HEX2[5]~0_combout\);

-- Location: FF_X54_Y51_N29
\HEX2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[5]~0_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[5]~reg0_q\);

-- Location: LCCOMB_X50_Y51_N0
\HEX2[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[4]~1_combout\ = !mess(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(25),
	combout => \HEX2[4]~1_combout\);

-- Location: FF_X50_Y51_N1
\HEX2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[4]~1_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[4]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N30
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

-- Location: FF_X52_Y53_N31
\HEX2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[3]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[3]~reg0_q\);

-- Location: LCCOMB_X51_Y52_N18
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

-- Location: FF_X51_Y52_N19
\HEX2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[2]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[2]~reg0_q\);

-- Location: LCCOMB_X51_Y52_N20
\HEX2[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[1]~2_combout\ = !mess(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(22),
	combout => \HEX2[1]~2_combout\);

-- Location: FF_X51_Y52_N21
\HEX2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[1]~2_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[1]~reg0_q\);

-- Location: LCCOMB_X55_Y51_N6
\HEX2[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[0]~3_combout\ = !mess(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(21),
	combout => \HEX2[0]~3_combout\);

-- Location: FF_X55_Y51_N7
\HEX2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[0]~3_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[0]~reg0_q\);

-- Location: LCCOMB_X50_Y53_N24
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

-- Location: FF_X50_Y53_N25
\HEX1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[6]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[6]~reg0_q\);

-- Location: LCCOMB_X54_Y53_N24
\HEX1[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[5]~0_combout\ = !mess(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(33),
	combout => \HEX1[5]~0_combout\);

-- Location: FF_X54_Y53_N25
\HEX1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[5]~0_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[5]~reg0_q\);

-- Location: LCCOMB_X52_Y52_N28
\HEX1[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[4]~1_combout\ = !mess(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(32),
	combout => \HEX1[4]~1_combout\);

-- Location: FF_X52_Y52_N29
\HEX1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[4]~1_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[4]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N14
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

-- Location: FF_X52_Y53_N15
\HEX1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[3]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[3]~reg0_q\);

-- Location: LCCOMB_X51_Y52_N30
\HEX1[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[2]~reg0feeder_combout\ = mess(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(30),
	combout => \HEX1[2]~reg0feeder_combout\);

-- Location: FF_X51_Y52_N31
\HEX1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[2]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[2]~reg0_q\);

-- Location: LCCOMB_X50_Y52_N24
\HEX1[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[1]~2_combout\ = !mess(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(29),
	combout => \HEX1[1]~2_combout\);

-- Location: FF_X50_Y52_N25
\HEX1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[1]~2_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[1]~reg0_q\);

-- Location: LCCOMB_X55_Y51_N2
\HEX1[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[0]~3_combout\ = !mess(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(28),
	combout => \HEX1[0]~3_combout\);

-- Location: LCCOMB_X54_Y52_N24
\HEX1[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1[0]~reg0feeder_combout\ = \HEX1[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HEX1[0]~3_combout\,
	combout => \HEX1[0]~reg0feeder_combout\);

-- Location: FF_X54_Y52_N25
\HEX1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[0]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[0]~reg0_q\);

-- Location: LCCOMB_X50_Y53_N30
\HEX0[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[6]~0_combout\ = !mess(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(41),
	combout => \HEX0[6]~0_combout\);

-- Location: FF_X50_Y53_N31
\HEX0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[6]~0_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[6]~reg0_q\);

-- Location: LCCOMB_X54_Y53_N26
\HEX0[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[5]~1_combout\ = !mess(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(40),
	combout => \HEX0[5]~1_combout\);

-- Location: FF_X54_Y53_N27
\HEX0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[5]~1_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[5]~reg0_q\);

-- Location: LCCOMB_X54_Y51_N22
\HEX0[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[4]~2_combout\ = !mess(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(39),
	combout => \HEX0[4]~2_combout\);

-- Location: FF_X54_Y51_N23
\HEX0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[4]~2_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[4]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N8
\HEX0[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[3]~3_combout\ = !mess(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(38),
	combout => \HEX0[3]~3_combout\);

-- Location: FF_X52_Y53_N9
\HEX0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[3]~3_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[3]~reg0_q\);

-- Location: LCCOMB_X49_Y50_N24
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

-- Location: FF_X49_Y50_N25
\HEX0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[2]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[2]~reg0_q\);

-- Location: LCCOMB_X51_Y52_N8
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

-- Location: FF_X51_Y52_N9
\HEX0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[1]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[1]~reg0_q\);

-- Location: LCCOMB_X55_Y51_N4
\HEX0[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[0]~4_combout\ = !mess(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(35),
	combout => \HEX0[0]~4_combout\);

-- Location: LCCOMB_X54_Y51_N4
\HEX0[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[0]~reg0feeder_combout\ = \HEX0[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HEX0[0]~4_combout\,
	combout => \HEX0[0]~reg0feeder_combout\);

-- Location: FF_X54_Y51_N5
\HEX0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[0]~reg0feeder_combout\,
	clrn => \trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[0]~reg0_q\);

-- Location: IOIBUF_X51_Y54_N1
\trigger2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trigger2,
	o => \trigger2~input_o\);

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

ww_led0 <= \led0~output_o\;

ww_led1 <= \led1~output_o\;

ww_led2 <= \led2~output_o\;

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


