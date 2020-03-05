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

-- DATE "03/05/2020 15:29:40"

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
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \HEX5[6]~2_combout\ : std_logic;
SIGNAL \HEX5[6]~3_combout\ : std_logic;
SIGNAL \HEX5[6]~reg0_q\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \HEX5[4]~reg0_q\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \HEX5[3]~reg0_q\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \HEX5[2]~reg0_q\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \HEX5[1]~0_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \HEX5[1]~reg0_q\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \HEX5[0]~1_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \HEX5[0]~reg0_q\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \HEX4[6]~reg0_q\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \HEX4[4]~reg0_q\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \HEX4[3]~reg0_q\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \HEX4[2]~reg0_q\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \HEX4[1]~reg0_q\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \HEX4[0]~reg0_q\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \HEX3[6]~reg0_q\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \HEX3[4]~reg0_q\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \HEX3[3]~reg0_q\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \HEX3[2]~reg0_q\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \HEX3[1]~reg0_q\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \HEX3[0]~reg0_q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \HEX2[6]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \HEX2[4]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \HEX2[3]~reg0_q\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \HEX2[2]~reg0_q\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \HEX2[1]~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \HEX2[1]~reg0_q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \HEX2[0]~1_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \HEX2[0]~reg0_q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \HEX1[6]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \HEX1[4]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \HEX1[3]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \HEX1[2]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \HEX1[1]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \count[0]~_wirecell_combout\ : std_logic;
SIGNAL \HEX1[0]~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \HEX0[6]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \HEX0[4]~reg0_q\ : std_logic;
SIGNAL \HEX0[3]~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \HEX0[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \HEX0[2]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \HEX0[1]~reg0_q\ : std_logic;
SIGNAL \Mux35~0_wirecell_combout\ : std_logic;
SIGNAL \HEX0[0]~reg0_q\ : std_logic;
SIGNAL s_clk_compte : std_logic_vector(25 DOWNTO 0);
SIGNAL count : std_logic_vector(5 DOWNTO 0);
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
SIGNAL ALT_INV_count : std_logic_vector(3 DOWNTO 2);

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

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

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
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(3) <= NOT count(3);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

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
	i => \HEX5[4]~reg0_q\,
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
	i => \HEX4[4]~reg0_q\,
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
	i => \HEX3[4]~reg0_q\,
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
	i => \HEX2[4]~reg0_q\,
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
	i => \HEX1[4]~reg0_q\,
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
	i => \HEX0[4]~reg0_q\,
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

-- Location: LCCOMB_X50_Y50_N6
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

-- Location: LCCOMB_X50_Y49_N22
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

-- Location: LCCOMB_X50_Y49_N24
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

-- Location: FF_X50_Y49_N25
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

-- Location: LCCOMB_X50_Y49_N26
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (s_clk_compte(19) & (s_clk_compte(22) & (s_clk_compte(20) & s_clk_compte(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(19),
	datab => s_clk_compte(22),
	datac => s_clk_compte(20),
	datad => s_clk_compte(21),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y50_N14
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

-- Location: LCCOMB_X49_Y50_N12
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (s_clk_compte(10)) # ((s_clk_compte(8)) # ((s_clk_compte(11)) # (s_clk_compte(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(10),
	datab => s_clk_compte(8),
	datac => s_clk_compte(11),
	datad => s_clk_compte(9),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y50_N4
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (s_clk_compte(14) & (s_clk_compte(12) & s_clk_compte(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(14),
	datac => s_clk_compte(12),
	datad => s_clk_compte(13),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X50_Y50_N4
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

-- Location: LCCOMB_X50_Y50_N2
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

-- Location: LCCOMB_X50_Y50_N0
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

-- Location: LCCOMB_X49_Y50_N24
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan1~1_combout\ & (s_clk_compte(15) & ((\LessThan0~1_combout\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan1~1_combout\,
	datac => \LessThan0~4_combout\,
	datad => s_clk_compte(15),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X49_Y50_N28
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (s_clk_compte(18)) # ((s_clk_compte(17) & ((s_clk_compte(16)) # (\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(18),
	datab => s_clk_compte(16),
	datac => s_clk_compte(17),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X49_Y50_N30
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

-- Location: FF_X50_Y50_N7
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

-- Location: LCCOMB_X50_Y50_N8
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

-- Location: FF_X50_Y50_N9
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

-- Location: LCCOMB_X50_Y50_N10
\s_clk_compte[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[2]~30_combout\ = (s_clk_compte(2) & (\s_clk_compte[1]~29\ $ (GND))) # (!s_clk_compte(2) & (!\s_clk_compte[1]~29\ & VCC))
-- \s_clk_compte[2]~31\ = CARRY((s_clk_compte(2) & !\s_clk_compte[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(2),
	datad => VCC,
	cin => \s_clk_compte[1]~29\,
	combout => \s_clk_compte[2]~30_combout\,
	cout => \s_clk_compte[2]~31\);

-- Location: FF_X50_Y50_N11
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

-- Location: LCCOMB_X50_Y50_N12
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

-- Location: FF_X50_Y50_N13
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

-- Location: LCCOMB_X50_Y50_N14
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

-- Location: FF_X50_Y50_N15
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

-- Location: LCCOMB_X50_Y50_N16
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

-- Location: FF_X50_Y50_N17
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

-- Location: LCCOMB_X50_Y50_N18
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

-- Location: FF_X50_Y50_N19
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

-- Location: LCCOMB_X50_Y50_N20
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

-- Location: FF_X50_Y50_N21
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

-- Location: LCCOMB_X50_Y50_N22
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

-- Location: FF_X50_Y50_N23
\s_clk_compte[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[8]~42_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(8));

-- Location: LCCOMB_X50_Y50_N24
\s_clk_compte[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[9]~44_combout\ = (s_clk_compte(9) & (!\s_clk_compte[8]~43\)) # (!s_clk_compte(9) & ((\s_clk_compte[8]~43\) # (GND)))
-- \s_clk_compte[9]~45\ = CARRY((!\s_clk_compte[8]~43\) # (!s_clk_compte(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(9),
	datad => VCC,
	cin => \s_clk_compte[8]~43\,
	combout => \s_clk_compte[9]~44_combout\,
	cout => \s_clk_compte[9]~45\);

-- Location: FF_X50_Y50_N25
\s_clk_compte[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[9]~44_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(9));

-- Location: LCCOMB_X50_Y50_N26
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

-- Location: FF_X50_Y50_N27
\s_clk_compte[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[10]~46_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(10));

-- Location: LCCOMB_X50_Y50_N28
\s_clk_compte[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[11]~48_combout\ = (s_clk_compte(11) & (!\s_clk_compte[10]~47\)) # (!s_clk_compte(11) & ((\s_clk_compte[10]~47\) # (GND)))
-- \s_clk_compte[11]~49\ = CARRY((!\s_clk_compte[10]~47\) # (!s_clk_compte(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(11),
	datad => VCC,
	cin => \s_clk_compte[10]~47\,
	combout => \s_clk_compte[11]~48_combout\,
	cout => \s_clk_compte[11]~49\);

-- Location: FF_X50_Y50_N29
\s_clk_compte[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[11]~48_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(11));

-- Location: LCCOMB_X50_Y50_N30
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

-- Location: FF_X50_Y50_N31
\s_clk_compte[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte[12]~50_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(12));

-- Location: LCCOMB_X50_Y49_N0
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

-- Location: FF_X50_Y49_N1
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

-- Location: LCCOMB_X50_Y49_N2
\s_clk_compte[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[14]~54_combout\ = (s_clk_compte(14) & (\s_clk_compte[13]~53\ $ (GND))) # (!s_clk_compte(14) & (!\s_clk_compte[13]~53\ & VCC))
-- \s_clk_compte[14]~55\ = CARRY((s_clk_compte(14) & !\s_clk_compte[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(14),
	datad => VCC,
	cin => \s_clk_compte[13]~53\,
	combout => \s_clk_compte[14]~54_combout\,
	cout => \s_clk_compte[14]~55\);

-- Location: FF_X49_Y50_N9
\s_clk_compte[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_clk_compte[14]~54_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(14));

-- Location: LCCOMB_X50_Y49_N4
\s_clk_compte[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[15]~56_combout\ = (s_clk_compte(15) & (!\s_clk_compte[14]~55\)) # (!s_clk_compte(15) & ((\s_clk_compte[14]~55\) # (GND)))
-- \s_clk_compte[15]~57\ = CARRY((!\s_clk_compte[14]~55\) # (!s_clk_compte(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(15),
	datad => VCC,
	cin => \s_clk_compte[14]~55\,
	combout => \s_clk_compte[15]~56_combout\,
	cout => \s_clk_compte[15]~57\);

-- Location: FF_X49_Y50_N19
\s_clk_compte[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_clk_compte[15]~56_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(15));

-- Location: LCCOMB_X50_Y49_N6
\s_clk_compte[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[16]~58_combout\ = (s_clk_compte(16) & (\s_clk_compte[15]~57\ $ (GND))) # (!s_clk_compte(16) & (!\s_clk_compte[15]~57\ & VCC))
-- \s_clk_compte[16]~59\ = CARRY((s_clk_compte(16) & !\s_clk_compte[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(16),
	datad => VCC,
	cin => \s_clk_compte[15]~57\,
	combout => \s_clk_compte[16]~58_combout\,
	cout => \s_clk_compte[16]~59\);

-- Location: FF_X50_Y49_N7
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

-- Location: LCCOMB_X50_Y49_N8
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

-- Location: FF_X50_Y49_N9
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

-- Location: LCCOMB_X50_Y49_N10
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

-- Location: FF_X50_Y49_N11
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

-- Location: LCCOMB_X50_Y49_N12
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

-- Location: FF_X50_Y49_N13
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

-- Location: LCCOMB_X50_Y49_N14
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

-- Location: FF_X50_Y49_N15
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

-- Location: LCCOMB_X50_Y49_N16
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

-- Location: FF_X50_Y49_N17
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

-- Location: LCCOMB_X50_Y49_N18
\s_clk_compte[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte[22]~70_combout\ = (s_clk_compte(22) & (\s_clk_compte[21]~69\ $ (GND))) # (!s_clk_compte(22) & (!\s_clk_compte[21]~69\ & VCC))
-- \s_clk_compte[22]~71\ = CARRY((s_clk_compte(22) & !\s_clk_compte[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(22),
	datad => VCC,
	cin => \s_clk_compte[21]~69\,
	combout => \s_clk_compte[22]~70_combout\,
	cout => \s_clk_compte[22]~71\);

-- Location: FF_X50_Y49_N19
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

-- Location: LCCOMB_X50_Y49_N20
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

-- Location: FF_X50_Y49_N21
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

-- Location: FF_X50_Y49_N23
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

-- Location: LCCOMB_X49_Y50_N10
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!s_clk_compte(10) & (!s_clk_compte(8) & (!s_clk_compte(6) & !s_clk_compte(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(10),
	datab => s_clk_compte(8),
	datac => s_clk_compte(6),
	datad => s_clk_compte(9),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y50_N26
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!s_clk_compte(7) & \LessThan1~0_combout\)) # (!\LessThan1~1_combout\)) # (!s_clk_compte(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(11),
	datab => s_clk_compte(7),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X49_Y50_N22
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (s_clk_compte(16) & ((s_clk_compte(15)) # (!\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(15),
	datac => \LessThan1~2_combout\,
	datad => s_clk_compte(16),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X49_Y50_N20
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (s_clk_compte(18) & (\LessThan0~0_combout\ & ((s_clk_compte(17)) # (\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(18),
	datab => s_clk_compte(17),
	datac => \LessThan1~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X49_Y50_N16
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (s_clk_compte(25)) # ((s_clk_compte(24) & ((s_clk_compte(23)) # (\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => s_clk_compte(23),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: FF_X49_Y50_N17
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

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X76_Y50_N12
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count(0) $ (VCC)
-- \Add1~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X76_Y50_N13
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X76_Y50_N14
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (count(1) & (!\Add1~1\)) # (!count(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X76_Y50_N24
\count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~1_combout\ = \Add1~2_combout\ $ (((!count(5) & (!count(4) & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(4),
	datac => \Add1~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \count~1_combout\);

-- Location: FF_X76_Y50_N25
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X74_Y50_N10
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(3) & (count(0) & (count(2) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(0),
	datac => count(2),
	datad => count(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X76_Y50_N16
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (count(2) & (\Add1~3\ $ (GND))) # (!count(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((count(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X76_Y50_N30
\count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~2_combout\ = \Add1~4_combout\ $ (((!count(5) & (!count(4) & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(4),
	datac => \Equal0~0_combout\,
	datad => \Add1~4_combout\,
	combout => \count~2_combout\);

-- Location: FF_X76_Y50_N31
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X76_Y50_N18
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (count(3) & (!\Add1~5\)) # (!count(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X76_Y50_N20
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (count(4) & (\Add1~7\ $ (GND))) # (!count(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((count(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X76_Y50_N21
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X76_Y50_N22
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = count(5) $ (\Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: FF_X76_Y50_N23
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X76_Y50_N26
\count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~0_combout\ = \Add1~6_combout\ $ (((!count(5) & (!count(4) & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(4),
	datac => \Equal0~0_combout\,
	datad => \Add1~6_combout\,
	combout => \count~0_combout\);

-- Location: FF_X76_Y50_N27
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X77_Y50_N22
\Mux41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (count(3) & (((count(0))) # (!count(2)))) # (!count(3) & ((count(2) & (!count(1))) # (!count(2) & ((count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X76_Y50_N28
\HEX5[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[6]~2_combout\ = (count(2) & (count(3) & count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datac => count(3),
	datad => count(1),
	combout => \HEX5[6]~2_combout\);

-- Location: LCCOMB_X76_Y50_N2
\HEX5[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[6]~3_combout\ = (!count(4) & (!count(5) & !\HEX5[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datac => count(5),
	datad => \HEX5[6]~2_combout\,
	combout => \HEX5[6]~3_combout\);

-- Location: FF_X77_Y50_N23
\HEX5[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux41~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[6]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N20
\Mux39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (!count(2) & (!count(1) & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux39~0_combout\);

-- Location: FF_X77_Y50_N21
\HEX5[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux39~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[4]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N18
\Mux38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (!count(0) & ((count(3) & ((count(2)) # (!count(1)))) # (!count(3) & ((count(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux38~0_combout\);

-- Location: FF_X77_Y50_N19
\HEX5[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux38~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[3]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N12
\Mux37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (!count(3) & (count(1) & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datac => count(1),
	datad => count(0),
	combout => \Mux37~0_combout\);

-- Location: FF_X77_Y50_N13
\HEX5[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux37~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[2]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N6
\Mux36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = count(2) $ (count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(2),
	datad => count(1),
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X74_Y50_N20
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (!count(2) & !count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(2),
	datad => count(0),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X75_Y50_N4
\HEX5[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[1]~0_combout\ = (\Mux36~0_combout\ & (!count(0))) # (!\Mux36~0_combout\ & ((!\Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~0_combout\,
	datab => count(0),
	datad => \Mux28~0_combout\,
	combout => \HEX5[1]~0_combout\);

-- Location: LCCOMB_X74_Y50_N6
\Mux38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (count(2)) # (!count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(2),
	datad => count(1),
	combout => \Mux38~1_combout\);

-- Location: FF_X75_Y50_N5
\HEX5[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[1]~0_combout\,
	asdata => \Mux38~1_combout\,
	sload => count(3),
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[1]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N20
\Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (count(0)) # (!count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datac => count(0),
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X75_Y50_N30
\HEX5[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[0]~1_combout\ = (\Mux36~0_combout\ & ((!\Mux35~0_combout\))) # (!\Mux36~0_combout\ & (count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~0_combout\,
	datab => count(0),
	datad => \Mux35~0_combout\,
	combout => \HEX5[0]~1_combout\);

-- Location: LCCOMB_X75_Y50_N22
\Mux35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (count(0) & ((count(2)) # (!count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datac => count(0),
	datad => count(1),
	combout => \Mux35~1_combout\);

-- Location: FF_X75_Y50_N31
\HEX5[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[0]~1_combout\,
	asdata => \Mux35~1_combout\,
	sload => count(3),
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[0]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N26
\Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (count(3) & (count(2) $ (((!count(0)))))) # (!count(3) & (count(0) & ((count(1)) # (!count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux34~0_combout\);

-- Location: FF_X77_Y50_N27
\HEX4[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux34~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[6]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N8
\Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (count(1) & !count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => count(0),
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X50_Y41_N0
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X77_Y50_N9
\HEX4[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux32~0_combout\,
	asdata => \~GND~combout\,
	sclr => count(3),
	sload => count(2),
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[4]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N28
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (count(3) & (count(0) $ (((!count(2) & count(1)))))) # (!count(3) & (((count(1) & count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux31~0_combout\);

-- Location: FF_X77_Y50_N29
\HEX4[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux31~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[3]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N8
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!count(1) & (!count(0) & (count(2) $ (count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Mux30~0_combout\);

-- Location: FF_X75_Y50_N9
\HEX4[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux30~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[2]~reg0_q\);

-- Location: LCCOMB_X76_Y50_N8
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (count(2) & (((!count(0))))) # (!count(2) & (count(0) & (count(1) $ (!count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(2),
	datac => count(3),
	datad => count(0),
	combout => \Mux29~0_combout\);

-- Location: FF_X76_Y50_N9
\HEX4[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux29~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[1]~reg0_q\);

-- Location: LCCOMB_X76_Y50_N10
\Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (count(2) & ((count(1)) # ((count(3)) # (!count(0))))) # (!count(2) & ((count(0)) # ((count(1) & count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(2),
	datac => count(3),
	datad => count(0),
	combout => \Mux28~1_combout\);

-- Location: FF_X76_Y50_N11
\HEX4[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux28~1_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[0]~reg0_q\);

-- Location: LCCOMB_X74_Y50_N14
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (count(1) & ((count(2)) # (count(3) $ (count(0))))) # (!count(1) & ((count(3) & (count(2))) # (!count(3) & ((count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(3),
	datad => count(0),
	combout => \Mux27~0_combout\);

-- Location: FF_X74_Y50_N15
\HEX3[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux27~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[6]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N30
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (!count(2) & (count(1) & (count(3) $ (count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux25~0_combout\);

-- Location: FF_X77_Y50_N31
\HEX3[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux25~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[4]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N10
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (count(3) & ((count(2)) # (count(1) $ (count(0))))) # (!count(3) & (((count(1)) # (count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Mux24~0_combout\);

-- Location: FF_X75_Y50_N11
\HEX3[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux24~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[3]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N24
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!count(1) & (count(0) & (count(3) $ (count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux23~0_combout\);

-- Location: FF_X77_Y50_N25
\HEX3[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux23~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[2]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N6
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (count(3) & (count(2))) # (!count(3) & ((count(2) & ((count(0)))) # (!count(2) & (count(1) & !count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux22~0_combout\);

-- Location: FF_X77_Y50_N7
\HEX3[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux22~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[1]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N0
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (count(2) & (!count(3) & (count(1) & !count(0)))) # (!count(2) & (count(0) $ (((count(3) & count(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux21~0_combout\);

-- Location: FF_X77_Y50_N1
\HEX3[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux21~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[0]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N2
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (count(3) & ((count(2) & ((!count(0)))) # (!count(2) & (!count(1) & count(0))))) # (!count(3) & (count(0) & ((!count(1)) # (!count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux20~0_combout\);

-- Location: FF_X77_Y50_N3
\HEX2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux20~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[6]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N16
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (count(3) & (!count(2) & (count(1) & count(0)))) # (!count(3) & (count(2) & (!count(1) & !count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux18~0_combout\);

-- Location: FF_X77_Y50_N17
\HEX2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux18~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[4]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N14
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (count(3) & (count(0) $ (((count(2)) # (count(1)))))) # (!count(3) & (((!count(1) & count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux17~0_combout\);

-- Location: FF_X77_Y50_N15
\HEX2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux17~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[3]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N28
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (count(2) & (count(1) & (!count(0) & !count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Mux21~1_combout\);

-- Location: FF_X75_Y50_N29
\HEX2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux21~1_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[2]~reg0_q\);

-- Location: LCCOMB_X74_Y50_N28
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (count(1)) # (count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(1),
	datad => count(0),
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X74_Y50_N8
\HEX2[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[1]~0_combout\ = (count(2) & (!count(0))) # (!count(2) & ((\Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datad => \Mux30~1_combout\,
	combout => \HEX2[1]~0_combout\);

-- Location: LCCOMB_X74_Y50_N22
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (count(0) & ((count(2)) # (!count(1)))) # (!count(0) & (count(2) $ (count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(2),
	datad => count(1),
	combout => \Mux15~0_combout\);

-- Location: FF_X74_Y50_N9
\HEX2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[1]~0_combout\,
	asdata => \Mux15~0_combout\,
	sload => ALT_INV_count(3),
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[1]~reg0_q\);

-- Location: LCCOMB_X74_Y50_N12
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (count(2) & count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(2),
	datad => count(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X75_Y50_N16
\HEX2[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[0]~1_combout\ = (\Mux36~0_combout\ & (!count(0))) # (!\Mux36~0_combout\ & ((\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~0_combout\,
	datab => count(0),
	datad => \Mux14~0_combout\,
	combout => \HEX2[0]~1_combout\);

-- Location: LCCOMB_X74_Y50_N26
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (count(0) & (!count(2) & count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(2),
	datad => count(1),
	combout => \Mux14~1_combout\);

-- Location: FF_X75_Y50_N17
\HEX2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[0]~1_combout\,
	asdata => \Mux14~1_combout\,
	sload => count(3),
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[0]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N18
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (count(2) & ((count(0) $ (!count(3))))) # (!count(2) & (count(1) & (!count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Mux13~0_combout\);

-- Location: FF_X75_Y50_N19
\HEX1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux13~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[6]~reg0_q\);

-- Location: LCCOMB_X76_Y50_N0
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (count(3) & ((!count(0)))) # (!count(3) & (!count(1) & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datac => count(1),
	datad => count(0),
	combout => \Mux11~0_combout\);

-- Location: FF_X76_Y50_N1
\HEX1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux11~0_combout\,
	sclr => ALT_INV_count(2),
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[4]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N12
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (count(1) & ((count(0) $ (!count(3))))) # (!count(1) & (count(2) & (count(0) & count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Mux10~0_combout\);

-- Location: FF_X75_Y50_N13
\HEX1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux10~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[3]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N4
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (count(1) & ((count(3) & (!count(2) & !count(0))) # (!count(3) & (count(2) & count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux9~0_combout\);

-- Location: FF_X77_Y50_N5
\HEX1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[2]~reg0_q\);

-- Location: LCCOMB_X77_Y50_N10
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (count(3) & ((count(2)) # ((count(1)) # (!count(0))))) # (!count(3) & (count(1) $ (((count(2) & count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => count(0),
	combout => \Mux8~0_combout\);

-- Location: FF_X77_Y50_N11
\HEX1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[1]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N14
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (count(0) & (count(2) $ (count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datad => count(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X74_Y50_N4
\count[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[0]~_wirecell_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(0),
	combout => \count[0]~_wirecell_combout\);

-- Location: FF_X75_Y50_N15
\HEX1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux7~0_combout\,
	asdata => \count[0]~_wirecell_combout\,
	sload => count(3),
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[0]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N26
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (count(2) & (((count(3)) # (!count(0))))) # (!count(2) & (count(1) $ (((count(0)) # (count(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Mux6~0_combout\);

-- Location: FF_X75_Y50_N27
\HEX0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[6]~reg0_q\);

-- Location: LCCOMB_X76_Y50_N6
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (count(3) & ((count(0)))) # (!count(3) & (count(1) & !count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datac => count(1),
	datad => count(0),
	combout => \Mux4~0_combout\);

-- Location: FF_X76_Y50_N7
\HEX0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux4~0_combout\,
	sclr => ALT_INV_count(2),
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[4]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N0
\HEX0[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[3]~0_combout\ = (count(0) & ((!count(1)))) # (!count(0) & ((count(2)) # (count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datad => count(1),
	combout => \HEX0[3]~0_combout\);

-- Location: LCCOMB_X74_Y50_N16
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (count(0)) # ((!count(2) & !count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(2),
	datad => count(1),
	combout => \Mux3~0_combout\);

-- Location: FF_X75_Y50_N1
\HEX0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[3]~0_combout\,
	asdata => \Mux3~0_combout\,
	sload => count(3),
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[3]~reg0_q\);

-- Location: LCCOMB_X76_Y50_N4
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!count(2) & (count(3) & (count(1) $ (!count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(2),
	datac => count(3),
	datad => count(0),
	combout => \Mux2~0_combout\);

-- Location: FF_X76_Y50_N5
\HEX0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[2]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N24
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (count(0) & (((!count(1) & !count(3))))) # (!count(0) & (!count(2) & (count(1) $ (count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Mux1~0_combout\);

-- Location: FF_X75_Y50_N25
\HEX0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \HEX5[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[1]~reg0_q\);

-- Location: LCCOMB_X75_Y50_N2
\Mux35~0_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~0_wirecell_combout\ = !\Mux35~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~0_combout\,
	combout => \Mux35~0_wirecell_combout\);

-- Location: FF_X75_Y50_N3
\HEX0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \Mux35~0_wirecell_combout\,
	asdata => count(0),
	sload => count(3),
	ena => \HEX5[6]~3_combout\,
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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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


