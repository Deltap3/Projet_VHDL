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

-- DATE "03/06/2020 18:26:15"

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
	trigger3 : IN std_logic;
	trigger4 : IN std_logic;
	bouton0 : IN std_logic;
	bouton1 : IN std_logic;
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	led4 : OUT std_logic;
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END septseg;

-- Design Ports Information
-- bouton0	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bouton1	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- trigger2	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trigger3	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trigger4	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_trigger3 : std_logic;
SIGNAL ww_trigger4 : std_logic;
SIGNAL ww_bouton0 : std_logic;
SIGNAL ww_bouton1 : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_led4 : std_logic;
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
SIGNAL \bouton0~input_o\ : std_logic;
SIGNAL \bouton1~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led0~output_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
SIGNAL \led3~output_o\ : std_logic;
SIGNAL \led4~output_o\ : std_logic;
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
SIGNAL \trigger3~input_o\ : std_logic;
SIGNAL \trigger4~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \s_clk_compte~77_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \s_clk_compte~78_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \s_clk_compte~75_combout\ : std_logic;
SIGNAL \s_clk_compte~76_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \s_clk_compte~73_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \s_clk_compte~72_combout\ : std_logic;
SIGNAL \s_clk_compte~74_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \s_clk_compte~69_combout\ : std_logic;
SIGNAL \s_clk_compte~70_combout\ : std_logic;
SIGNAL \s_clk_compte~71_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \s_clk_compte~66_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s_clk_compte~67_combout\ : std_logic;
SIGNAL \s_clk_compte~68_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \s_clk_compte~63_combout\ : std_logic;
SIGNAL \s_clk_compte~64_combout\ : std_logic;
SIGNAL \s_clk_compte~65_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \s_clk_compte~30_combout\ : std_logic;
SIGNAL \s_clk_compte~31_combout\ : std_logic;
SIGNAL \s_clk_compte~32_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \s_clk_compte~42_combout\ : std_logic;
SIGNAL \s_clk_compte~43_combout\ : std_logic;
SIGNAL \s_clk_compte~44_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \s_clk_compte~33_combout\ : std_logic;
SIGNAL \s_clk_compte~34_combout\ : std_logic;
SIGNAL \s_clk_compte~35_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \s_clk_compte~36_combout\ : std_logic;
SIGNAL \s_clk_compte~37_combout\ : std_logic;
SIGNAL \s_clk_compte~38_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \s_clk_compte~39_combout\ : std_logic;
SIGNAL \s_clk_compte~40_combout\ : std_logic;
SIGNAL \s_clk_compte~41_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \s_clk_compte~18_combout\ : std_logic;
SIGNAL \s_clk_compte~19_combout\ : std_logic;
SIGNAL \s_clk_compte~20_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \s_clk_compte~21_combout\ : std_logic;
SIGNAL \s_clk_compte~22_combout\ : std_logic;
SIGNAL \s_clk_compte~23_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \s_clk_compte~24_combout\ : std_logic;
SIGNAL \s_clk_compte~25_combout\ : std_logic;
SIGNAL \s_clk_compte~26_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \s_clk_compte~27_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \s_clk_compte~28_combout\ : std_logic;
SIGNAL \s_clk_compte~29_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \s_clk_compte~45_combout\ : std_logic;
SIGNAL \s_clk_compte~46_combout\ : std_logic;
SIGNAL \s_clk_compte~47_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \s_clk_compte~48_combout\ : std_logic;
SIGNAL \s_clk_compte~49_combout\ : std_logic;
SIGNAL \s_clk_compte~50_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \s_clk_compte~51_combout\ : std_logic;
SIGNAL \s_clk_compte~52_combout\ : std_logic;
SIGNAL \s_clk_compte~53_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \s_clk_compte~9_combout\ : std_logic;
SIGNAL \s_clk_compte~10_combout\ : std_logic;
SIGNAL \s_clk_compte~11_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \s_clk_compte~12_combout\ : std_logic;
SIGNAL \s_clk_compte~13_combout\ : std_logic;
SIGNAL \s_clk_compte~79_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \s_clk_compte~14_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \s_clk_compte~15_combout\ : std_logic;
SIGNAL \s_clk_compte~80_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \s_clk_compte~16_combout\ : std_logic;
SIGNAL \s_clk_compte~17_combout\ : std_logic;
SIGNAL \s_clk_compte~81_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \s_clk_compte~54_combout\ : std_logic;
SIGNAL \s_clk_compte~55_combout\ : std_logic;
SIGNAL \s_clk_compte~56_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \s_clk_compte~60_combout\ : std_logic;
SIGNAL \s_clk_compte~61_combout\ : std_logic;
SIGNAL \s_clk_compte~62_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \s_clk_compte~6_combout\ : std_logic;
SIGNAL \s_clk_compte~7_combout\ : std_logic;
SIGNAL \s_clk_compte~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \s_clk_compte~57_combout\ : std_logic;
SIGNAL \s_clk_compte~58_combout\ : std_logic;
SIGNAL \s_clk_compte~59_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \s_clk_lent~q\ : std_logic;
SIGNAL \s_clk_lent~clkctrl_outclk\ : std_logic;
SIGNAL \trigger2~input_o\ : std_logic;
SIGNAL \mess[349]~0_combout\ : std_logic;
SIGNAL \led2~reg0_q\ : std_logic;
SIGNAL \led3$latch~combout\ : std_logic;
SIGNAL \led4$latch~combout\ : std_logic;
SIGNAL \mess~43_combout\ : std_logic;
SIGNAL \mess~57_combout\ : std_logic;
SIGNAL \mess~71_combout\ : std_logic;
SIGNAL \mess~85_combout\ : std_logic;
SIGNAL \mess~99_combout\ : std_logic;
SIGNAL \mess~113_combout\ : std_logic;
SIGNAL \mess~127_combout\ : std_logic;
SIGNAL \mess~141_combout\ : std_logic;
SIGNAL \mess~155_combout\ : std_logic;
SIGNAL \mess~169_combout\ : std_logic;
SIGNAL \mess~183_combout\ : std_logic;
SIGNAL \mess~197_combout\ : std_logic;
SIGNAL \mess~211_combout\ : std_logic;
SIGNAL \mess~225_combout\ : std_logic;
SIGNAL \mess~239_combout\ : std_logic;
SIGNAL \mess~253_combout\ : std_logic;
SIGNAL \mess~267_combout\ : std_logic;
SIGNAL \mess~281_combout\ : std_logic;
SIGNAL \mess~295_combout\ : std_logic;
SIGNAL \mess~309_combout\ : std_logic;
SIGNAL \mess~323_combout\ : std_logic;
SIGNAL \mess~337_combout\ : std_logic;
SIGNAL \mess~344_combout\ : std_logic;
SIGNAL \mess~330_combout\ : std_logic;
SIGNAL \mess~316_combout\ : std_logic;
SIGNAL \mess~302_combout\ : std_logic;
SIGNAL \mess~288_combout\ : std_logic;
SIGNAL \mess~274_combout\ : std_logic;
SIGNAL \mess~260_combout\ : std_logic;
SIGNAL \mess~246_combout\ : std_logic;
SIGNAL \mess~232_combout\ : std_logic;
SIGNAL \mess~218_combout\ : std_logic;
SIGNAL \mess~204_combout\ : std_logic;
SIGNAL \mess~190_combout\ : std_logic;
SIGNAL \mess~176_combout\ : std_logic;
SIGNAL \mess~162_combout\ : std_logic;
SIGNAL \mess~148_combout\ : std_logic;
SIGNAL \mess~134_combout\ : std_logic;
SIGNAL \mess~120_combout\ : std_logic;
SIGNAL \mess~106_combout\ : std_logic;
SIGNAL \mess~92_combout\ : std_logic;
SIGNAL \mess~78_combout\ : std_logic;
SIGNAL \mess~64_combout\ : std_logic;
SIGNAL \mess~50_combout\ : std_logic;
SIGNAL \mess~36_combout\ : std_logic;
SIGNAL \mess~29_combout\ : std_logic;
SIGNAL \mess~22_combout\ : std_logic;
SIGNAL \mess~15_combout\ : std_logic;
SIGNAL \mess~8_combout\ : std_logic;
SIGNAL \mess~1_combout\ : std_logic;
SIGNAL \HEX5[6]~0_combout\ : std_logic;
SIGNAL \HEX5[6]~reg0_q\ : std_logic;
SIGNAL \mess~44_combout\ : std_logic;
SIGNAL \mess~58_combout\ : std_logic;
SIGNAL \mess~72_combout\ : std_logic;
SIGNAL \mess~86_combout\ : std_logic;
SIGNAL \mess~100_combout\ : std_logic;
SIGNAL \mess~114_combout\ : std_logic;
SIGNAL \mess~128_combout\ : std_logic;
SIGNAL \mess~142_combout\ : std_logic;
SIGNAL \mess~156_combout\ : std_logic;
SIGNAL \mess~170_combout\ : std_logic;
SIGNAL \mess~184_combout\ : std_logic;
SIGNAL \mess~198_combout\ : std_logic;
SIGNAL \mess~212_combout\ : std_logic;
SIGNAL \mess~226_combout\ : std_logic;
SIGNAL \mess~240_combout\ : std_logic;
SIGNAL \mess~254_combout\ : std_logic;
SIGNAL \mess~268_combout\ : std_logic;
SIGNAL \mess~282_combout\ : std_logic;
SIGNAL \mess~296_combout\ : std_logic;
SIGNAL \mess~310_combout\ : std_logic;
SIGNAL \mess~324_combout\ : std_logic;
SIGNAL \mess~338_combout\ : std_logic;
SIGNAL \mess~345_combout\ : std_logic;
SIGNAL \mess~331_combout\ : std_logic;
SIGNAL \mess~317_combout\ : std_logic;
SIGNAL \mess~303_combout\ : std_logic;
SIGNAL \mess~289_combout\ : std_logic;
SIGNAL \mess~275_combout\ : std_logic;
SIGNAL \mess~261_combout\ : std_logic;
SIGNAL \mess~247_combout\ : std_logic;
SIGNAL \mess~233_combout\ : std_logic;
SIGNAL \mess~219_combout\ : std_logic;
SIGNAL \mess~205_combout\ : std_logic;
SIGNAL \mess~191_combout\ : std_logic;
SIGNAL \mess~177_combout\ : std_logic;
SIGNAL \mess~163_combout\ : std_logic;
SIGNAL \mess~149_combout\ : std_logic;
SIGNAL \mess~135_combout\ : std_logic;
SIGNAL \mess~121_combout\ : std_logic;
SIGNAL \mess~107_combout\ : std_logic;
SIGNAL \mess~93_combout\ : std_logic;
SIGNAL \mess~79_combout\ : std_logic;
SIGNAL \mess~65_combout\ : std_logic;
SIGNAL \mess~51_combout\ : std_logic;
SIGNAL \mess~37_combout\ : std_logic;
SIGNAL \mess~30_combout\ : std_logic;
SIGNAL \mess~23_combout\ : std_logic;
SIGNAL \mess~16_combout\ : std_logic;
SIGNAL \mess~9_combout\ : std_logic;
SIGNAL \mess~2_combout\ : std_logic;
SIGNAL \HEX5[5]~1_combout\ : std_logic;
SIGNAL \HEX5[5]~reg0_q\ : std_logic;
SIGNAL \mess~45_combout\ : std_logic;
SIGNAL \mess~59_combout\ : std_logic;
SIGNAL \mess~73_combout\ : std_logic;
SIGNAL \mess~87_combout\ : std_logic;
SIGNAL \mess~101_combout\ : std_logic;
SIGNAL \mess~115_combout\ : std_logic;
SIGNAL \mess~129_combout\ : std_logic;
SIGNAL \mess~143_combout\ : std_logic;
SIGNAL \mess~157_combout\ : std_logic;
SIGNAL \mess~171_combout\ : std_logic;
SIGNAL \mess~185_combout\ : std_logic;
SIGNAL \mess~199_combout\ : std_logic;
SIGNAL \mess~213_combout\ : std_logic;
SIGNAL \mess~227_combout\ : std_logic;
SIGNAL \mess~241_combout\ : std_logic;
SIGNAL \mess~255_combout\ : std_logic;
SIGNAL \mess~269_combout\ : std_logic;
SIGNAL \mess~283_combout\ : std_logic;
SIGNAL \mess~297_combout\ : std_logic;
SIGNAL \mess~311_combout\ : std_logic;
SIGNAL \mess~325_combout\ : std_logic;
SIGNAL \mess~339_combout\ : std_logic;
SIGNAL \mess~346_combout\ : std_logic;
SIGNAL \mess~332_combout\ : std_logic;
SIGNAL \mess~318_combout\ : std_logic;
SIGNAL \mess~304_combout\ : std_logic;
SIGNAL \mess~290_combout\ : std_logic;
SIGNAL \mess~276_combout\ : std_logic;
SIGNAL \mess~262_combout\ : std_logic;
SIGNAL \mess~248_combout\ : std_logic;
SIGNAL \mess~234_combout\ : std_logic;
SIGNAL \mess~220_combout\ : std_logic;
SIGNAL \mess~206_combout\ : std_logic;
SIGNAL \mess~192_combout\ : std_logic;
SIGNAL \mess~178_combout\ : std_logic;
SIGNAL \mess~164_combout\ : std_logic;
SIGNAL \mess~150_combout\ : std_logic;
SIGNAL \mess~136_combout\ : std_logic;
SIGNAL \mess~122_combout\ : std_logic;
SIGNAL \mess~108_combout\ : std_logic;
SIGNAL \mess~94_combout\ : std_logic;
SIGNAL \mess~80_combout\ : std_logic;
SIGNAL \mess~66_combout\ : std_logic;
SIGNAL \mess~52_combout\ : std_logic;
SIGNAL \mess~38_combout\ : std_logic;
SIGNAL \mess~31_combout\ : std_logic;
SIGNAL \mess~24_combout\ : std_logic;
SIGNAL \mess~17_combout\ : std_logic;
SIGNAL \mess~10_combout\ : std_logic;
SIGNAL \mess~3_combout\ : std_logic;
SIGNAL \HEX5[4]~2_combout\ : std_logic;
SIGNAL \HEX5[4]~reg0_q\ : std_logic;
SIGNAL \mess~46_combout\ : std_logic;
SIGNAL \mess~60_combout\ : std_logic;
SIGNAL \mess~74_combout\ : std_logic;
SIGNAL \mess~88_combout\ : std_logic;
SIGNAL \mess~102_combout\ : std_logic;
SIGNAL \mess~116_combout\ : std_logic;
SIGNAL \mess~130_combout\ : std_logic;
SIGNAL \mess~144_combout\ : std_logic;
SIGNAL \mess~158_combout\ : std_logic;
SIGNAL \mess~172_combout\ : std_logic;
SIGNAL \mess~186_combout\ : std_logic;
SIGNAL \mess~200_combout\ : std_logic;
SIGNAL \mess~214_combout\ : std_logic;
SIGNAL \mess~228_combout\ : std_logic;
SIGNAL \mess~242_combout\ : std_logic;
SIGNAL \mess~256_combout\ : std_logic;
SIGNAL \mess~270_combout\ : std_logic;
SIGNAL \mess~284_combout\ : std_logic;
SIGNAL \mess~298_combout\ : std_logic;
SIGNAL \mess~312_combout\ : std_logic;
SIGNAL \mess~326_combout\ : std_logic;
SIGNAL \mess~340_combout\ : std_logic;
SIGNAL \mess~347_combout\ : std_logic;
SIGNAL \mess~333_combout\ : std_logic;
SIGNAL \mess~319_combout\ : std_logic;
SIGNAL \mess~305_combout\ : std_logic;
SIGNAL \mess~291_combout\ : std_logic;
SIGNAL \mess~277_combout\ : std_logic;
SIGNAL \mess~263_combout\ : std_logic;
SIGNAL \mess~249_combout\ : std_logic;
SIGNAL \mess~235_combout\ : std_logic;
SIGNAL \mess~221_combout\ : std_logic;
SIGNAL \mess~207_combout\ : std_logic;
SIGNAL \mess~193_combout\ : std_logic;
SIGNAL \mess~179_combout\ : std_logic;
SIGNAL \mess~165_combout\ : std_logic;
SIGNAL \mess~151_combout\ : std_logic;
SIGNAL \mess~137_combout\ : std_logic;
SIGNAL \mess~123_combout\ : std_logic;
SIGNAL \mess~109_combout\ : std_logic;
SIGNAL \mess~95_combout\ : std_logic;
SIGNAL \mess~81_combout\ : std_logic;
SIGNAL \mess~67_combout\ : std_logic;
SIGNAL \mess~53_combout\ : std_logic;
SIGNAL \mess~39_combout\ : std_logic;
SIGNAL \mess~32_combout\ : std_logic;
SIGNAL \mess~25_combout\ : std_logic;
SIGNAL \mess~18_combout\ : std_logic;
SIGNAL \mess~11_combout\ : std_logic;
SIGNAL \mess~4_combout\ : std_logic;
SIGNAL \HEX5[3]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX5[3]~reg0_q\ : std_logic;
SIGNAL \mess~12_combout\ : std_logic;
SIGNAL \mess~19_combout\ : std_logic;
SIGNAL \mess~26_combout\ : std_logic;
SIGNAL \mess~33_combout\ : std_logic;
SIGNAL \mess~40_combout\ : std_logic;
SIGNAL \mess~54_combout\ : std_logic;
SIGNAL \mess~68_combout\ : std_logic;
SIGNAL \mess~82_combout\ : std_logic;
SIGNAL \mess~96_combout\ : std_logic;
SIGNAL \mess~110_combout\ : std_logic;
SIGNAL \mess~124_combout\ : std_logic;
SIGNAL \mess~138_combout\ : std_logic;
SIGNAL \mess~152_combout\ : std_logic;
SIGNAL \mess~166_combout\ : std_logic;
SIGNAL \mess~180_combout\ : std_logic;
SIGNAL \mess~194_combout\ : std_logic;
SIGNAL \mess~208_combout\ : std_logic;
SIGNAL \mess~222_combout\ : std_logic;
SIGNAL \mess~236_combout\ : std_logic;
SIGNAL \mess~250_combout\ : std_logic;
SIGNAL \mess~264_combout\ : std_logic;
SIGNAL \mess~278_combout\ : std_logic;
SIGNAL \mess~292_combout\ : std_logic;
SIGNAL \mess~306_combout\ : std_logic;
SIGNAL \mess~320_combout\ : std_logic;
SIGNAL \mess~334_combout\ : std_logic;
SIGNAL \mess~348_combout\ : std_logic;
SIGNAL \mess~341_combout\ : std_logic;
SIGNAL \mess~327_combout\ : std_logic;
SIGNAL \mess~313_combout\ : std_logic;
SIGNAL \mess~299_combout\ : std_logic;
SIGNAL \mess~285_combout\ : std_logic;
SIGNAL \mess~271_combout\ : std_logic;
SIGNAL \mess~257_combout\ : std_logic;
SIGNAL \mess~243_combout\ : std_logic;
SIGNAL \mess~229_combout\ : std_logic;
SIGNAL \mess~215_combout\ : std_logic;
SIGNAL \mess~201_combout\ : std_logic;
SIGNAL \mess~187_combout\ : std_logic;
SIGNAL \mess~173_combout\ : std_logic;
SIGNAL \mess~159_combout\ : std_logic;
SIGNAL \mess~145_combout\ : std_logic;
SIGNAL \mess~131_combout\ : std_logic;
SIGNAL \mess~117_combout\ : std_logic;
SIGNAL \mess~103_combout\ : std_logic;
SIGNAL \mess~89_combout\ : std_logic;
SIGNAL \mess~75_combout\ : std_logic;
SIGNAL \mess~61_combout\ : std_logic;
SIGNAL \mess~47_combout\ : std_logic;
SIGNAL \mess~5_combout\ : std_logic;
SIGNAL \HEX5[2]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX5[2]~reg0_q\ : std_logic;
SIGNAL \mess~48_combout\ : std_logic;
SIGNAL \mess~62_combout\ : std_logic;
SIGNAL \mess~76_combout\ : std_logic;
SIGNAL \mess~90_combout\ : std_logic;
SIGNAL \mess~104_combout\ : std_logic;
SIGNAL \mess~118_combout\ : std_logic;
SIGNAL \mess~132_combout\ : std_logic;
SIGNAL \mess~146_combout\ : std_logic;
SIGNAL \mess~160_combout\ : std_logic;
SIGNAL \mess~174_combout\ : std_logic;
SIGNAL \mess~188_combout\ : std_logic;
SIGNAL \mess~202_combout\ : std_logic;
SIGNAL \mess~216_combout\ : std_logic;
SIGNAL \mess~230_combout\ : std_logic;
SIGNAL \mess~244_combout\ : std_logic;
SIGNAL \mess~258_combout\ : std_logic;
SIGNAL \mess~272_combout\ : std_logic;
SIGNAL \mess~286_combout\ : std_logic;
SIGNAL \mess~300_combout\ : std_logic;
SIGNAL \mess~314_combout\ : std_logic;
SIGNAL \mess~328_combout\ : std_logic;
SIGNAL \mess~342_combout\ : std_logic;
SIGNAL \mess~349_combout\ : std_logic;
SIGNAL \mess~335_combout\ : std_logic;
SIGNAL \mess~321_combout\ : std_logic;
SIGNAL \mess~307_combout\ : std_logic;
SIGNAL \mess~293_combout\ : std_logic;
SIGNAL \mess~279_combout\ : std_logic;
SIGNAL \mess~265_combout\ : std_logic;
SIGNAL \mess~251_combout\ : std_logic;
SIGNAL \mess~237_combout\ : std_logic;
SIGNAL \mess~223_combout\ : std_logic;
SIGNAL \mess~209_combout\ : std_logic;
SIGNAL \mess~195_combout\ : std_logic;
SIGNAL \mess~181_combout\ : std_logic;
SIGNAL \mess~167_combout\ : std_logic;
SIGNAL \mess~153_combout\ : std_logic;
SIGNAL \mess~139_combout\ : std_logic;
SIGNAL \mess~125_combout\ : std_logic;
SIGNAL \mess~111_combout\ : std_logic;
SIGNAL \mess~97_combout\ : std_logic;
SIGNAL \mess~83_combout\ : std_logic;
SIGNAL \mess~69_combout\ : std_logic;
SIGNAL \mess~55_combout\ : std_logic;
SIGNAL \mess~41_combout\ : std_logic;
SIGNAL \mess~34_combout\ : std_logic;
SIGNAL \mess~27_combout\ : std_logic;
SIGNAL \mess~20_combout\ : std_logic;
SIGNAL \mess~13_combout\ : std_logic;
SIGNAL \mess~6_combout\ : std_logic;
SIGNAL \HEX5[1]~3_combout\ : std_logic;
SIGNAL \HEX5[1]~reg0_q\ : std_logic;
SIGNAL \mess~49_combout\ : std_logic;
SIGNAL \mess~63_combout\ : std_logic;
SIGNAL \mess~77_combout\ : std_logic;
SIGNAL \mess~91_combout\ : std_logic;
SIGNAL \mess~105_combout\ : std_logic;
SIGNAL \mess~119_combout\ : std_logic;
SIGNAL \mess~133_combout\ : std_logic;
SIGNAL \mess~147_combout\ : std_logic;
SIGNAL \mess~161_combout\ : std_logic;
SIGNAL \mess~175_combout\ : std_logic;
SIGNAL \mess~189_combout\ : std_logic;
SIGNAL \mess~203_combout\ : std_logic;
SIGNAL \mess~217_combout\ : std_logic;
SIGNAL \mess~231_combout\ : std_logic;
SIGNAL \mess~245_combout\ : std_logic;
SIGNAL \mess~259_combout\ : std_logic;
SIGNAL \mess~273_combout\ : std_logic;
SIGNAL \mess~287_combout\ : std_logic;
SIGNAL \mess~301_combout\ : std_logic;
SIGNAL \mess~315_combout\ : std_logic;
SIGNAL \mess~329_combout\ : std_logic;
SIGNAL \mess~343_combout\ : std_logic;
SIGNAL \mess~350_combout\ : std_logic;
SIGNAL \mess~336_combout\ : std_logic;
SIGNAL \mess~322_combout\ : std_logic;
SIGNAL \mess~308_combout\ : std_logic;
SIGNAL \mess~294_combout\ : std_logic;
SIGNAL \mess~280_combout\ : std_logic;
SIGNAL \mess~266_combout\ : std_logic;
SIGNAL \mess~252_combout\ : std_logic;
SIGNAL \mess~238_combout\ : std_logic;
SIGNAL \mess~224_combout\ : std_logic;
SIGNAL \mess~210_combout\ : std_logic;
SIGNAL \mess~196_combout\ : std_logic;
SIGNAL \mess~182_combout\ : std_logic;
SIGNAL \mess~168_combout\ : std_logic;
SIGNAL \mess~154_combout\ : std_logic;
SIGNAL \mess~140_combout\ : std_logic;
SIGNAL \mess~126_combout\ : std_logic;
SIGNAL \mess~112_combout\ : std_logic;
SIGNAL \mess~98_combout\ : std_logic;
SIGNAL \mess~84_combout\ : std_logic;
SIGNAL \mess~70_combout\ : std_logic;
SIGNAL \mess~56_combout\ : std_logic;
SIGNAL \mess~42_combout\ : std_logic;
SIGNAL \mess~35_combout\ : std_logic;
SIGNAL \mess~28_combout\ : std_logic;
SIGNAL \mess~21_combout\ : std_logic;
SIGNAL \mess~14_combout\ : std_logic;
SIGNAL \mess~7_combout\ : std_logic;
SIGNAL \HEX5[0]~4_combout\ : std_logic;
SIGNAL \HEX5[0]~reg0_q\ : std_logic;
SIGNAL \HEX4[6]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX4[6]~reg0_q\ : std_logic;
SIGNAL \HEX4[5]~0_combout\ : std_logic;
SIGNAL \HEX4[5]~reg0_q\ : std_logic;
SIGNAL \HEX4[4]~1_combout\ : std_logic;
SIGNAL \HEX4[4]~reg0_q\ : std_logic;
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
SIGNAL \HEX0[0]~reg0_q\ : std_logic;
SIGNAL mess : std_logic_vector(0 TO 349);
SIGNAL s_clk_compte : std_logic_vector(25 DOWNTO 0);
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
ww_trigger3 <= trigger3;
ww_trigger4 <= trigger4;
ww_bouton0 <= bouton0;
ww_bouton1 <= bouton1;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
led4 <= ww_led4;
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

-- Location: LCCOMB_X44_Y42_N12
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
	i => \trigger0~input_o\,
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
	i => \led2~reg0_q\,
	devoe => ww_devoe,
	o => \led2~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\led3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led3$latch~combout\,
	devoe => ww_devoe,
	o => \led3~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\led4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led4$latch~combout\,
	devoe => ww_devoe,
	o => \led4~output_o\);

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

-- Location: LCCOMB_X52_Y50_N4
\led1$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led1$latch~combout\ = (\trigger0~input_o\ & ((\led1$latch~combout\))) # (!\trigger0~input_o\ & (\trigger1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger1~input_o\,
	datab => \led1$latch~combout\,
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

-- Location: IOIBUF_X54_Y54_N29
\trigger3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trigger3,
	o => \trigger3~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\trigger4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trigger4,
	o => \trigger4~input_o\);

-- Location: LCCOMB_X59_Y51_N8
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = s_clk_compte(1) $ (VCC)
-- \Add2~1\ = CARRY(s_clk_compte(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X56_Y51_N6
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = s_clk_compte(0) $ (VCC)
-- \Add3~1\ = CARRY(s_clk_compte(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X55_Y50_N22
\s_clk_compte~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~77_combout\ = (!\trigger4~input_o\ & !\trigger3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger4~input_o\,
	datad => \trigger3~input_o\,
	combout => \s_clk_compte~77_combout\);

-- Location: LCCOMB_X60_Y51_N4
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (s_clk_compte(25) & ((s_clk_compte(24)) # (\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(25),
	datac => s_clk_compte(24),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X56_Y51_N2
\s_clk_compte~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~78_combout\ = (!\LessThan0~8_combout\ & ((\s_clk_compte~77_combout\ & (\Add3~0_combout\)) # (!\s_clk_compte~77_combout\ & ((s_clk_compte(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \s_clk_compte~77_combout\,
	datac => s_clk_compte(0),
	datad => \LessThan0~8_combout\,
	combout => \s_clk_compte~78_combout\);

-- Location: FF_X56_Y51_N3
\s_clk_compte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(0));

-- Location: LCCOMB_X56_Y51_N8
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (s_clk_compte(1) & (!\Add3~1\)) # (!s_clk_compte(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!s_clk_compte(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X56_Y52_N8
\s_clk_compte~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~75_combout\ = (!\trigger4~input_o\ & ((\trigger3~input_o\ & (\Add2~0_combout\)) # (!\trigger3~input_o\ & ((\Add3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \trigger3~input_o\,
	datac => \Add2~0_combout\,
	datad => \Add3~2_combout\,
	combout => \s_clk_compte~75_combout\);

-- Location: LCCOMB_X56_Y51_N0
\s_clk_compte~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~76_combout\ = (!\LessThan0~8_combout\ & ((\s_clk_compte~75_combout\) # ((\trigger4~input_o\ & s_clk_compte(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \s_clk_compte~75_combout\,
	datac => s_clk_compte(1),
	datad => \LessThan0~8_combout\,
	combout => \s_clk_compte~76_combout\);

-- Location: FF_X56_Y51_N1
\s_clk_compte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(1));

-- Location: LCCOMB_X59_Y51_N10
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (s_clk_compte(2) & (!\Add2~1\)) # (!s_clk_compte(2) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!s_clk_compte(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X59_Y52_N30
\s_clk_compte~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~73_combout\ = (\trigger3~input_o\ & ((\trigger4~input_o\ & (s_clk_compte(2))) # (!\trigger4~input_o\ & ((\Add2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \trigger3~input_o\,
	datac => s_clk_compte(2),
	datad => \Add2~2_combout\,
	combout => \s_clk_compte~73_combout\);

-- Location: LCCOMB_X56_Y51_N10
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (s_clk_compte(2) & (\Add3~3\ $ (GND))) # (!s_clk_compte(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((s_clk_compte(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X58_Y51_N8
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = s_clk_compte(2) $ (VCC)
-- \Add1~1\ = CARRY(s_clk_compte(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(2),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X59_Y52_N8
\s_clk_compte~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~72_combout\ = (!\trigger3~input_o\ & ((\trigger4~input_o\ & ((\Add1~0_combout\))) # (!\trigger4~input_o\ & (\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \trigger3~input_o\,
	datac => \Add3~4_combout\,
	datad => \Add1~0_combout\,
	combout => \s_clk_compte~72_combout\);

-- Location: LCCOMB_X59_Y51_N6
\s_clk_compte~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~74_combout\ = (!\LessThan0~8_combout\ & ((\s_clk_compte~73_combout\) # (\s_clk_compte~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_clk_compte~73_combout\,
	datab => \s_clk_compte~72_combout\,
	datad => \LessThan0~8_combout\,
	combout => \s_clk_compte~74_combout\);

-- Location: FF_X59_Y51_N7
\s_clk_compte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(2));

-- Location: LCCOMB_X58_Y51_N10
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (s_clk_compte(3) & (!\Add1~1\)) # (!s_clk_compte(3) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!s_clk_compte(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(3),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X60_Y51_N10
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_clk_compte(3) $ (VCC)
-- \Add0~1\ = CARRY(s_clk_compte(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(3),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X56_Y51_N12
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (s_clk_compte(3) & (!\Add3~5\)) # (!s_clk_compte(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!s_clk_compte(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X59_Y51_N12
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (s_clk_compte(3) & (\Add2~3\ $ (GND))) # (!s_clk_compte(3) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((s_clk_compte(3) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X59_Y52_N28
\s_clk_compte~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~69_combout\ = (\trigger4~input_o\ & (\trigger3~input_o\)) # (!\trigger4~input_o\ & ((\trigger3~input_o\ & ((\Add2~4_combout\))) # (!\trigger3~input_o\ & (\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \trigger3~input_o\,
	datac => \Add3~6_combout\,
	datad => \Add2~4_combout\,
	combout => \s_clk_compte~69_combout\);

-- Location: LCCOMB_X59_Y52_N10
\s_clk_compte~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~70_combout\ = (\trigger4~input_o\ & ((\s_clk_compte~69_combout\ & ((\Add0~0_combout\))) # (!\s_clk_compte~69_combout\ & (\Add1~2_combout\)))) # (!\trigger4~input_o\ & (((\s_clk_compte~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \Add1~2_combout\,
	datac => \Add0~0_combout\,
	datad => \s_clk_compte~69_combout\,
	combout => \s_clk_compte~70_combout\);

-- Location: LCCOMB_X58_Y51_N4
\s_clk_compte~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~71_combout\ = (\s_clk_compte~70_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan0~7_combout\,
	datad => \s_clk_compte~70_combout\,
	combout => \s_clk_compte~71_combout\);

-- Location: FF_X58_Y51_N5
\s_clk_compte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(3));

-- Location: LCCOMB_X59_Y51_N14
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (s_clk_compte(4) & (!\Add2~5\)) # (!s_clk_compte(4) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!s_clk_compte(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X58_Y51_N12
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (s_clk_compte(4) & (\Add1~3\ $ (GND))) # (!s_clk_compte(4) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((s_clk_compte(4) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(4),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X56_Y51_N14
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (s_clk_compte(4) & (\Add3~7\ $ (GND))) # (!s_clk_compte(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((s_clk_compte(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X57_Y51_N8
\s_clk_compte~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~66_combout\ = (\trigger4~input_o\ & ((\trigger3~input_o\) # ((\Add1~4_combout\)))) # (!\trigger4~input_o\ & (!\trigger3~input_o\ & ((\Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \trigger3~input_o\,
	datac => \Add1~4_combout\,
	datad => \Add3~8_combout\,
	combout => \s_clk_compte~66_combout\);

-- Location: LCCOMB_X60_Y51_N12
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (s_clk_compte(4) & (!\Add0~1\)) # (!s_clk_compte(4) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!s_clk_compte(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(4),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X57_Y51_N2
\s_clk_compte~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~67_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~66_combout\ & ((\Add0~2_combout\))) # (!\s_clk_compte~66_combout\ & (\Add2~6_combout\)))) # (!\trigger3~input_o\ & (((\s_clk_compte~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \trigger3~input_o\,
	datac => \s_clk_compte~66_combout\,
	datad => \Add0~2_combout\,
	combout => \s_clk_compte~67_combout\);

-- Location: LCCOMB_X57_Y51_N24
\s_clk_compte~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~68_combout\ = (\s_clk_compte~67_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \s_clk_compte~67_combout\,
	datad => \LessThan0~7_combout\,
	combout => \s_clk_compte~68_combout\);

-- Location: FF_X57_Y51_N25
\s_clk_compte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(4));

-- Location: LCCOMB_X58_Y51_N14
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (s_clk_compte(5) & (!\Add1~5\)) # (!s_clk_compte(5) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!s_clk_compte(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(5),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X60_Y51_N14
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (s_clk_compte(5) & (\Add0~3\ $ (GND))) # (!s_clk_compte(5) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((s_clk_compte(5) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(5),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X59_Y51_N16
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (s_clk_compte(5) & (\Add2~7\ $ (GND))) # (!s_clk_compte(5) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((s_clk_compte(5) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X56_Y51_N16
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (s_clk_compte(5) & (!\Add3~9\)) # (!s_clk_compte(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!s_clk_compte(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X55_Y51_N24
\s_clk_compte~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~63_combout\ = (\trigger3~input_o\ & ((\trigger4~input_o\) # ((\Add2~8_combout\)))) # (!\trigger3~input_o\ & (!\trigger4~input_o\ & ((\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger3~input_o\,
	datab => \trigger4~input_o\,
	datac => \Add2~8_combout\,
	datad => \Add3~10_combout\,
	combout => \s_clk_compte~63_combout\);

-- Location: LCCOMB_X55_Y51_N6
\s_clk_compte~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~64_combout\ = (\trigger4~input_o\ & ((\s_clk_compte~63_combout\ & ((\Add0~4_combout\))) # (!\s_clk_compte~63_combout\ & (\Add1~6_combout\)))) # (!\trigger4~input_o\ & (((\s_clk_compte~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \trigger4~input_o\,
	datac => \Add0~4_combout\,
	datad => \s_clk_compte~63_combout\,
	combout => \s_clk_compte~64_combout\);

-- Location: LCCOMB_X58_Y51_N6
\s_clk_compte~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~65_combout\ = (\s_clk_compte~64_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan0~7_combout\,
	datad => \s_clk_compte~64_combout\,
	combout => \s_clk_compte~65_combout\);

-- Location: FF_X58_Y51_N7
\s_clk_compte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(5));

-- Location: LCCOMB_X60_Y51_N16
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (s_clk_compte(6) & (!\Add0~5\)) # (!s_clk_compte(6) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!s_clk_compte(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(6),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X58_Y51_N16
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (s_clk_compte(6) & (\Add1~7\ $ (GND))) # (!s_clk_compte(6) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((s_clk_compte(6) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(6),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X56_Y51_N18
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (s_clk_compte(6) & (\Add3~11\ $ (GND))) # (!s_clk_compte(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((s_clk_compte(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X59_Y51_N18
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (s_clk_compte(6) & (!\Add2~9\)) # (!s_clk_compte(6) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!s_clk_compte(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X61_Y51_N12
\s_clk_compte~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~30_combout\ = (\trigger3~input_o\ & (((\trigger4~input_o\) # (\Add2~10_combout\)))) # (!\trigger3~input_o\ & (\Add3~12_combout\ & (!\trigger4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \trigger3~input_o\,
	datac => \trigger4~input_o\,
	datad => \Add2~10_combout\,
	combout => \s_clk_compte~30_combout\);

-- Location: LCCOMB_X61_Y51_N22
\s_clk_compte~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~31_combout\ = (\trigger4~input_o\ & ((\s_clk_compte~30_combout\ & (\Add0~6_combout\)) # (!\s_clk_compte~30_combout\ & ((\Add1~8_combout\))))) # (!\trigger4~input_o\ & (((\s_clk_compte~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \trigger4~input_o\,
	datac => \Add1~8_combout\,
	datad => \s_clk_compte~30_combout\,
	combout => \s_clk_compte~31_combout\);

-- Location: LCCOMB_X58_Y51_N0
\s_clk_compte~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~32_combout\ = (\s_clk_compte~31_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan0~7_combout\,
	datad => \s_clk_compte~31_combout\,
	combout => \s_clk_compte~32_combout\);

-- Location: FF_X58_Y51_N1
\s_clk_compte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(6));

-- Location: LCCOMB_X59_Y51_N20
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (s_clk_compte(7) & (\Add2~11\ $ (GND))) # (!s_clk_compte(7) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((s_clk_compte(7) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X60_Y51_N18
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (s_clk_compte(7) & (\Add0~7\ $ (GND))) # (!s_clk_compte(7) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((s_clk_compte(7) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(7),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X58_Y51_N18
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (s_clk_compte(7) & (!\Add1~9\)) # (!s_clk_compte(7) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!s_clk_compte(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(7),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X56_Y51_N20
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (s_clk_compte(7) & (!\Add3~13\)) # (!s_clk_compte(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!s_clk_compte(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X61_Y51_N24
\s_clk_compte~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~42_combout\ = (\trigger4~input_o\ & ((\Add1~10_combout\) # ((\trigger3~input_o\)))) # (!\trigger4~input_o\ & (((!\trigger3~input_o\ & \Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \Add1~10_combout\,
	datac => \trigger3~input_o\,
	datad => \Add3~14_combout\,
	combout => \s_clk_compte~42_combout\);

-- Location: LCCOMB_X61_Y51_N2
\s_clk_compte~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~43_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~42_combout\ & ((\Add0~8_combout\))) # (!\s_clk_compte~42_combout\ & (\Add2~12_combout\)))) # (!\trigger3~input_o\ & (((\s_clk_compte~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add0~8_combout\,
	datac => \trigger3~input_o\,
	datad => \s_clk_compte~42_combout\,
	combout => \s_clk_compte~43_combout\);

-- Location: LCCOMB_X61_Y51_N6
\s_clk_compte~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~44_combout\ = (\s_clk_compte~43_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \s_clk_compte~43_combout\,
	datad => \LessThan0~7_combout\,
	combout => \s_clk_compte~44_combout\);

-- Location: FF_X61_Y51_N7
\s_clk_compte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(7));

-- Location: LCCOMB_X60_Y51_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_clk_compte(8) & (!\Add0~9\)) # (!s_clk_compte(8) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!s_clk_compte(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(8),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X59_Y51_N22
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (s_clk_compte(8) & (!\Add2~13\)) # (!s_clk_compte(8) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!s_clk_compte(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(8),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X58_Y51_N20
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (s_clk_compte(8) & (\Add1~11\ $ (GND))) # (!s_clk_compte(8) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((s_clk_compte(8) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(8),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X56_Y51_N22
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (s_clk_compte(8) & (\Add3~15\ $ (GND))) # (!s_clk_compte(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((s_clk_compte(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X61_Y51_N28
\s_clk_compte~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~33_combout\ = (\trigger3~input_o\ & (((\trigger4~input_o\)))) # (!\trigger3~input_o\ & ((\trigger4~input_o\ & (\Add1~12_combout\)) # (!\trigger4~input_o\ & ((\Add3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \trigger3~input_o\,
	datac => \trigger4~input_o\,
	datad => \Add3~16_combout\,
	combout => \s_clk_compte~33_combout\);

-- Location: LCCOMB_X61_Y51_N14
\s_clk_compte~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~34_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~33_combout\ & (\Add0~10_combout\)) # (!\s_clk_compte~33_combout\ & ((\Add2~14_combout\))))) # (!\trigger3~input_o\ & (((\s_clk_compte~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \trigger3~input_o\,
	datac => \Add2~14_combout\,
	datad => \s_clk_compte~33_combout\,
	combout => \s_clk_compte~34_combout\);

-- Location: LCCOMB_X61_Y51_N16
\s_clk_compte~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~35_combout\ = (\s_clk_compte~34_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \s_clk_compte~34_combout\,
	datad => \LessThan0~7_combout\,
	combout => \s_clk_compte~35_combout\);

-- Location: FF_X61_Y51_N17
\s_clk_compte[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(8));

-- Location: LCCOMB_X58_Y51_N22
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (s_clk_compte(9) & (!\Add1~13\)) # (!s_clk_compte(9) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!s_clk_compte(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(9),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X60_Y51_N22
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (s_clk_compte(9) & (\Add0~11\ $ (GND))) # (!s_clk_compte(9) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((s_clk_compte(9) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(9),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X56_Y51_N24
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (s_clk_compte(9) & (!\Add3~17\)) # (!s_clk_compte(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!s_clk_compte(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X59_Y51_N24
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (s_clk_compte(9) & (\Add2~15\ $ (GND))) # (!s_clk_compte(9) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((s_clk_compte(9) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(9),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X61_Y51_N8
\s_clk_compte~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~36_combout\ = (\trigger4~input_o\ & (((\trigger3~input_o\)))) # (!\trigger4~input_o\ & ((\trigger3~input_o\ & ((\Add2~16_combout\))) # (!\trigger3~input_o\ & (\Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \Add3~18_combout\,
	datac => \trigger3~input_o\,
	datad => \Add2~16_combout\,
	combout => \s_clk_compte~36_combout\);

-- Location: LCCOMB_X61_Y51_N26
\s_clk_compte~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~37_combout\ = (\s_clk_compte~36_combout\ & (((\Add0~12_combout\) # (!\trigger4~input_o\)))) # (!\s_clk_compte~36_combout\ & (\Add1~14_combout\ & ((\trigger4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add0~12_combout\,
	datac => \s_clk_compte~36_combout\,
	datad => \trigger4~input_o\,
	combout => \s_clk_compte~37_combout\);

-- Location: LCCOMB_X61_Y51_N10
\s_clk_compte~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~38_combout\ = (\s_clk_compte~37_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \s_clk_compte~37_combout\,
	datad => \LessThan0~7_combout\,
	combout => \s_clk_compte~38_combout\);

-- Location: FF_X61_Y51_N11
\s_clk_compte[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(9));

-- Location: LCCOMB_X59_Y51_N26
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (s_clk_compte(10) & (!\Add2~17\)) # (!s_clk_compte(10) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!s_clk_compte(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(10),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X60_Y51_N24
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (s_clk_compte(10) & (!\Add0~13\)) # (!s_clk_compte(10) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!s_clk_compte(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(10),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X58_Y51_N24
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (s_clk_compte(10) & (\Add1~15\ $ (GND))) # (!s_clk_compte(10) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((s_clk_compte(10) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(10),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X56_Y51_N26
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (s_clk_compte(10) & (\Add3~19\ $ (GND))) # (!s_clk_compte(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((s_clk_compte(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X61_Y51_N20
\s_clk_compte~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~39_combout\ = (\trigger3~input_o\ & (((\trigger4~input_o\)))) # (!\trigger3~input_o\ & ((\trigger4~input_o\ & (\Add1~16_combout\)) # (!\trigger4~input_o\ & ((\Add3~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \trigger3~input_o\,
	datac => \trigger4~input_o\,
	datad => \Add3~20_combout\,
	combout => \s_clk_compte~39_combout\);

-- Location: LCCOMB_X61_Y51_N30
\s_clk_compte~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~40_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~39_combout\ & ((\Add0~14_combout\))) # (!\s_clk_compte~39_combout\ & (\Add2~18_combout\)))) # (!\trigger3~input_o\ & (((\s_clk_compte~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add0~14_combout\,
	datac => \trigger3~input_o\,
	datad => \s_clk_compte~39_combout\,
	combout => \s_clk_compte~40_combout\);

-- Location: LCCOMB_X61_Y51_N4
\s_clk_compte~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~41_combout\ = (\s_clk_compte~40_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \s_clk_compte~40_combout\,
	datad => \LessThan0~7_combout\,
	combout => \s_clk_compte~41_combout\);

-- Location: FF_X61_Y51_N5
\s_clk_compte[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(10));

-- Location: LCCOMB_X60_Y51_N26
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (s_clk_compte(11) & (\Add0~15\ $ (GND))) # (!s_clk_compte(11) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((s_clk_compte(11) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(11),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X58_Y51_N26
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (s_clk_compte(11) & (!\Add1~17\)) # (!s_clk_compte(11) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!s_clk_compte(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(11),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X59_Y51_N28
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (s_clk_compte(11) & (\Add2~19\ $ (GND))) # (!s_clk_compte(11) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((s_clk_compte(11) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(11),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X56_Y51_N28
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (s_clk_compte(11) & (!\Add3~21\)) # (!s_clk_compte(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!s_clk_compte(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X59_Y51_N0
\s_clk_compte~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~18_combout\ = (\trigger4~input_o\ & (((\trigger3~input_o\)))) # (!\trigger4~input_o\ & ((\trigger3~input_o\ & (\Add2~20_combout\)) # (!\trigger3~input_o\ & ((\Add3~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \Add2~20_combout\,
	datac => \trigger3~input_o\,
	datad => \Add3~22_combout\,
	combout => \s_clk_compte~18_combout\);

-- Location: LCCOMB_X59_Y51_N2
\s_clk_compte~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~19_combout\ = (\trigger4~input_o\ & ((\s_clk_compte~18_combout\ & (\Add0~16_combout\)) # (!\s_clk_compte~18_combout\ & ((\Add1~18_combout\))))) # (!\trigger4~input_o\ & (((\s_clk_compte~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \Add0~16_combout\,
	datac => \Add1~18_combout\,
	datad => \s_clk_compte~18_combout\,
	combout => \s_clk_compte~19_combout\);

-- Location: LCCOMB_X59_Y51_N4
\s_clk_compte~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~20_combout\ = (\s_clk_compte~19_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(25),
	datab => s_clk_compte(24),
	datac => \LessThan0~7_combout\,
	datad => \s_clk_compte~19_combout\,
	combout => \s_clk_compte~20_combout\);

-- Location: FF_X59_Y51_N5
\s_clk_compte[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(11));

-- Location: LCCOMB_X60_Y51_N28
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (s_clk_compte(12) & (!\Add0~17\)) # (!s_clk_compte(12) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!s_clk_compte(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(12),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X59_Y51_N30
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (s_clk_compte(12) & (!\Add2~21\)) # (!s_clk_compte(12) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!s_clk_compte(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(12),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X58_Y51_N28
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (s_clk_compte(12) & (\Add1~19\ $ (GND))) # (!s_clk_compte(12) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((s_clk_compte(12) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(12),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X56_Y51_N30
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (s_clk_compte(12) & (\Add3~23\ $ (GND))) # (!s_clk_compte(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((s_clk_compte(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X57_Y51_N16
\s_clk_compte~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~21_combout\ = (\trigger4~input_o\ & ((\Add1~20_combout\) # ((\trigger3~input_o\)))) # (!\trigger4~input_o\ & (((!\trigger3~input_o\ & \Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \Add1~20_combout\,
	datac => \trigger3~input_o\,
	datad => \Add3~24_combout\,
	combout => \s_clk_compte~21_combout\);

-- Location: LCCOMB_X57_Y51_N22
\s_clk_compte~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~22_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~21_combout\ & (\Add0~18_combout\)) # (!\s_clk_compte~21_combout\ & ((\Add2~22_combout\))))) # (!\trigger3~input_o\ & (((\s_clk_compte~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \trigger3~input_o\,
	datac => \Add2~22_combout\,
	datad => \s_clk_compte~21_combout\,
	combout => \s_clk_compte~22_combout\);

-- Location: LCCOMB_X57_Y51_N20
\s_clk_compte~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~23_combout\ = (\s_clk_compte~22_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \s_clk_compte~22_combout\,
	datad => \LessThan0~7_combout\,
	combout => \s_clk_compte~23_combout\);

-- Location: FF_X57_Y51_N21
\s_clk_compte[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(12));

-- Location: LCCOMB_X58_Y51_N30
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (s_clk_compte(13) & (!\Add1~21\)) # (!s_clk_compte(13) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!s_clk_compte(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(13),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X60_Y51_N30
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (s_clk_compte(13) & (\Add0~19\ $ (GND))) # (!s_clk_compte(13) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((s_clk_compte(13) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(13),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X56_Y50_N0
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (s_clk_compte(13) & (!\Add3~25\)) # (!s_clk_compte(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!s_clk_compte(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X59_Y50_N0
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (s_clk_compte(13) & (\Add2~23\ $ (GND))) # (!s_clk_compte(13) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((s_clk_compte(13) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(13),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X57_Y51_N12
\s_clk_compte~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~24_combout\ = (\trigger4~input_o\ & (\trigger3~input_o\)) # (!\trigger4~input_o\ & ((\trigger3~input_o\ & ((\Add2~24_combout\))) # (!\trigger3~input_o\ & (\Add3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \trigger3~input_o\,
	datac => \Add3~26_combout\,
	datad => \Add2~24_combout\,
	combout => \s_clk_compte~24_combout\);

-- Location: LCCOMB_X57_Y51_N14
\s_clk_compte~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~25_combout\ = (\trigger4~input_o\ & ((\s_clk_compte~24_combout\ & ((\Add0~20_combout\))) # (!\s_clk_compte~24_combout\ & (\Add1~22_combout\)))) # (!\trigger4~input_o\ & (((\s_clk_compte~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \trigger4~input_o\,
	datac => \Add0~20_combout\,
	datad => \s_clk_compte~24_combout\,
	combout => \s_clk_compte~25_combout\);

-- Location: LCCOMB_X57_Y51_N26
\s_clk_compte~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~26_combout\ = (\s_clk_compte~25_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \s_clk_compte~25_combout\,
	datad => \LessThan0~7_combout\,
	combout => \s_clk_compte~26_combout\);

-- Location: FF_X57_Y51_N27
\s_clk_compte[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(13));

-- Location: LCCOMB_X60_Y50_N0
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (s_clk_compte(14) & (!\Add0~21\)) # (!s_clk_compte(14) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!s_clk_compte(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(14),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X58_Y50_N0
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (s_clk_compte(14) & (\Add1~23\ $ (GND))) # (!s_clk_compte(14) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((s_clk_compte(14) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(14),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X56_Y50_N2
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (s_clk_compte(14) & (\Add3~27\ $ (GND))) # (!s_clk_compte(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((s_clk_compte(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X57_Y51_N4
\s_clk_compte~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~27_combout\ = (\trigger4~input_o\ & ((\Add1~24_combout\) # ((\trigger3~input_o\)))) # (!\trigger4~input_o\ & (((!\trigger3~input_o\ & \Add3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \Add1~24_combout\,
	datac => \trigger3~input_o\,
	datad => \Add3~28_combout\,
	combout => \s_clk_compte~27_combout\);

-- Location: LCCOMB_X59_Y50_N2
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (s_clk_compte(14) & (!\Add2~25\)) # (!s_clk_compte(14) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!s_clk_compte(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(14),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X57_Y51_N10
\s_clk_compte~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~28_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~27_combout\ & (\Add0~22_combout\)) # (!\s_clk_compte~27_combout\ & ((\Add2~26_combout\))))) # (!\trigger3~input_o\ & (((\s_clk_compte~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \trigger3~input_o\,
	datac => \s_clk_compte~27_combout\,
	datad => \Add2~26_combout\,
	combout => \s_clk_compte~28_combout\);

-- Location: LCCOMB_X57_Y51_N28
\s_clk_compte~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~29_combout\ = (\s_clk_compte~28_combout\ & (((!\LessThan0~7_combout\ & !s_clk_compte(24))) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => s_clk_compte(25),
	datac => s_clk_compte(24),
	datad => \s_clk_compte~28_combout\,
	combout => \s_clk_compte~29_combout\);

-- Location: FF_X57_Y51_N29
\s_clk_compte[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(14));

-- Location: LCCOMB_X58_Y50_N2
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (s_clk_compte(15) & (!\Add1~25\)) # (!s_clk_compte(15) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!s_clk_compte(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(15),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X60_Y50_N2
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (s_clk_compte(15) & (\Add0~23\ $ (GND))) # (!s_clk_compte(15) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((s_clk_compte(15) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(15),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X56_Y50_N4
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (s_clk_compte(15) & (!\Add3~29\)) # (!s_clk_compte(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!s_clk_compte(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X59_Y50_N4
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (s_clk_compte(15) & (\Add2~27\ $ (GND))) # (!s_clk_compte(15) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((s_clk_compte(15) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(15),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X57_Y51_N0
\s_clk_compte~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~45_combout\ = (\trigger4~input_o\ & (\trigger3~input_o\)) # (!\trigger4~input_o\ & ((\trigger3~input_o\ & ((\Add2~28_combout\))) # (!\trigger3~input_o\ & (\Add3~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \trigger3~input_o\,
	datac => \Add3~30_combout\,
	datad => \Add2~28_combout\,
	combout => \s_clk_compte~45_combout\);

-- Location: LCCOMB_X57_Y51_N18
\s_clk_compte~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~46_combout\ = (\trigger4~input_o\ & ((\s_clk_compte~45_combout\ & ((\Add0~24_combout\))) # (!\s_clk_compte~45_combout\ & (\Add1~26_combout\)))) # (!\trigger4~input_o\ & (((\s_clk_compte~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \Add1~26_combout\,
	datac => \Add0~24_combout\,
	datad => \s_clk_compte~45_combout\,
	combout => \s_clk_compte~46_combout\);

-- Location: LCCOMB_X57_Y51_N30
\s_clk_compte~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~47_combout\ = (\s_clk_compte~46_combout\ & (((!\LessThan0~7_combout\ & !s_clk_compte(24))) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => s_clk_compte(25),
	datac => s_clk_compte(24),
	datad => \s_clk_compte~46_combout\,
	combout => \s_clk_compte~47_combout\);

-- Location: FF_X57_Y51_N31
\s_clk_compte[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(15));

-- Location: LCCOMB_X59_Y50_N6
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (s_clk_compte(16) & (!\Add2~29\)) # (!s_clk_compte(16) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!s_clk_compte(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(16),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X60_Y50_N4
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (s_clk_compte(16) & (!\Add0~25\)) # (!s_clk_compte(16) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!s_clk_compte(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(16),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X58_Y50_N4
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (s_clk_compte(16) & (\Add1~27\ $ (GND))) # (!s_clk_compte(16) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((s_clk_compte(16) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(16),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X56_Y50_N6
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (s_clk_compte(16) & (\Add3~31\ $ (GND))) # (!s_clk_compte(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((s_clk_compte(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X58_Y50_N28
\s_clk_compte~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~48_combout\ = (\trigger4~input_o\ & ((\trigger3~input_o\) # ((\Add1~28_combout\)))) # (!\trigger4~input_o\ & (!\trigger3~input_o\ & ((\Add3~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \trigger3~input_o\,
	datac => \Add1~28_combout\,
	datad => \Add3~32_combout\,
	combout => \s_clk_compte~48_combout\);

-- Location: LCCOMB_X58_Y50_N26
\s_clk_compte~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~49_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~48_combout\ & ((\Add0~26_combout\))) # (!\s_clk_compte~48_combout\ & (\Add2~30_combout\)))) # (!\trigger3~input_o\ & (((\s_clk_compte~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \trigger3~input_o\,
	datac => \Add0~26_combout\,
	datad => \s_clk_compte~48_combout\,
	combout => \s_clk_compte~49_combout\);

-- Location: LCCOMB_X57_Y50_N8
\s_clk_compte~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~50_combout\ = (\s_clk_compte~49_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan0~7_combout\,
	datad => \s_clk_compte~49_combout\,
	combout => \s_clk_compte~50_combout\);

-- Location: FF_X57_Y50_N9
\s_clk_compte[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(16));

-- Location: LCCOMB_X58_Y50_N6
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (s_clk_compte(17) & (!\Add1~29\)) # (!s_clk_compte(17) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!s_clk_compte(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(17),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X60_Y50_N6
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (s_clk_compte(17) & (\Add0~27\ $ (GND))) # (!s_clk_compte(17) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((s_clk_compte(17) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(17),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X59_Y50_N8
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (s_clk_compte(17) & (\Add2~31\ $ (GND))) # (!s_clk_compte(17) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((s_clk_compte(17) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(17),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X56_Y50_N8
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (s_clk_compte(17) & (!\Add3~33\)) # (!s_clk_compte(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!s_clk_compte(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X57_Y50_N12
\s_clk_compte~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~51_combout\ = (\trigger4~input_o\ & (\trigger3~input_o\)) # (!\trigger4~input_o\ & ((\trigger3~input_o\ & (\Add2~32_combout\)) # (!\trigger3~input_o\ & ((\Add3~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \trigger3~input_o\,
	datac => \Add2~32_combout\,
	datad => \Add3~34_combout\,
	combout => \s_clk_compte~51_combout\);

-- Location: LCCOMB_X57_Y50_N24
\s_clk_compte~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~52_combout\ = (\trigger4~input_o\ & ((\s_clk_compte~51_combout\ & ((\Add0~28_combout\))) # (!\s_clk_compte~51_combout\ & (\Add1~30_combout\)))) # (!\trigger4~input_o\ & (((\s_clk_compte~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Add0~28_combout\,
	datac => \trigger4~input_o\,
	datad => \s_clk_compte~51_combout\,
	combout => \s_clk_compte~52_combout\);

-- Location: LCCOMB_X57_Y50_N26
\s_clk_compte~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~53_combout\ = (\s_clk_compte~52_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan0~7_combout\,
	datad => \s_clk_compte~52_combout\,
	combout => \s_clk_compte~53_combout\);

-- Location: FF_X57_Y50_N27
\s_clk_compte[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(17));

-- Location: LCCOMB_X60_Y50_N8
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (s_clk_compte(18) & (!\Add0~29\)) # (!s_clk_compte(18) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!s_clk_compte(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(18),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X60_Y50_N10
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (s_clk_compte(19) & (\Add0~31\ $ (GND))) # (!s_clk_compte(19) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((s_clk_compte(19) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(19),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X58_Y50_N8
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (s_clk_compte(18) & (\Add1~31\ $ (GND))) # (!s_clk_compte(18) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((s_clk_compte(18) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(18),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X58_Y50_N10
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (s_clk_compte(19) & (!\Add1~33\)) # (!s_clk_compte(19) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!s_clk_compte(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(19),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X56_Y50_N10
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (s_clk_compte(18) & (\Add3~35\ $ (GND))) # (!s_clk_compte(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((s_clk_compte(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X56_Y50_N12
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (s_clk_compte(19) & (!\Add3~37\)) # (!s_clk_compte(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!s_clk_compte(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X59_Y50_N10
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (s_clk_compte(18) & (!\Add2~33\)) # (!s_clk_compte(18) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!s_clk_compte(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(18),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X59_Y50_N12
\Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (s_clk_compte(19) & (\Add2~35\ $ (GND))) # (!s_clk_compte(19) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((s_clk_compte(19) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(19),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X56_Y50_N28
\s_clk_compte~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~9_combout\ = (\trigger3~input_o\ & (((\trigger4~input_o\) # (\Add2~36_combout\)))) # (!\trigger3~input_o\ & (\Add3~38_combout\ & (!\trigger4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \trigger3~input_o\,
	datac => \trigger4~input_o\,
	datad => \Add2~36_combout\,
	combout => \s_clk_compte~9_combout\);

-- Location: LCCOMB_X56_Y50_N30
\s_clk_compte~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~10_combout\ = (\trigger4~input_o\ & ((\s_clk_compte~9_combout\ & (\Add0~32_combout\)) # (!\s_clk_compte~9_combout\ & ((\Add1~34_combout\))))) # (!\trigger4~input_o\ & (((\s_clk_compte~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \Add0~32_combout\,
	datac => \Add1~34_combout\,
	datad => \s_clk_compte~9_combout\,
	combout => \s_clk_compte~10_combout\);

-- Location: LCCOMB_X56_Y50_N26
\s_clk_compte~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~11_combout\ = (\s_clk_compte~10_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \s_clk_compte~10_combout\,
	datad => \LessThan0~7_combout\,
	combout => \s_clk_compte~11_combout\);

-- Location: FF_X56_Y50_N27
\s_clk_compte[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(19));

-- Location: LCCOMB_X59_Y50_N14
\Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (s_clk_compte(20) & (!\Add2~37\)) # (!s_clk_compte(20) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!s_clk_compte(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(20),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X60_Y50_N12
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (s_clk_compte(20) & (!\Add0~33\)) # (!s_clk_compte(20) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!s_clk_compte(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(20),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X56_Y50_N14
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (s_clk_compte(20) & (\Add3~39\ $ (GND))) # (!s_clk_compte(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((s_clk_compte(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X58_Y50_N12
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (s_clk_compte(20) & (\Add1~35\ $ (GND))) # (!s_clk_compte(20) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((s_clk_compte(20) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(20),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X55_Y50_N18
\s_clk_compte~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~12_combout\ = (\trigger3~input_o\ & (\trigger4~input_o\)) # (!\trigger3~input_o\ & ((\trigger4~input_o\ & ((\Add1~36_combout\))) # (!\trigger4~input_o\ & (\Add3~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger3~input_o\,
	datab => \trigger4~input_o\,
	datac => \Add3~40_combout\,
	datad => \Add1~36_combout\,
	combout => \s_clk_compte~12_combout\);

-- Location: LCCOMB_X55_Y50_N28
\s_clk_compte~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~13_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~12_combout\ & ((\Add0~34_combout\))) # (!\s_clk_compte~12_combout\ & (\Add2~38_combout\)))) # (!\trigger3~input_o\ & (((\s_clk_compte~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \trigger3~input_o\,
	datac => \Add0~34_combout\,
	datad => \s_clk_compte~12_combout\,
	combout => \s_clk_compte~13_combout\);

-- Location: LCCOMB_X55_Y50_N20
\s_clk_compte~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~79_combout\ = (\s_clk_compte~13_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan0~7_combout\,
	datad => \s_clk_compte~13_combout\,
	combout => \s_clk_compte~79_combout\);

-- Location: FF_X55_Y50_N21
\s_clk_compte[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(20));

-- Location: LCCOMB_X59_Y50_N16
\Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (s_clk_compte(21) & (\Add2~39\ $ (GND))) # (!s_clk_compte(21) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((s_clk_compte(21) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(21),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X58_Y50_N14
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (s_clk_compte(21) & (!\Add1~37\)) # (!s_clk_compte(21) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!s_clk_compte(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(21),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X56_Y50_N16
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (s_clk_compte(21) & (!\Add3~41\)) # (!s_clk_compte(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!s_clk_compte(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X55_Y50_N30
\s_clk_compte~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~14_combout\ = (\trigger3~input_o\ & (\trigger4~input_o\)) # (!\trigger3~input_o\ & ((\trigger4~input_o\ & (\Add1~38_combout\)) # (!\trigger4~input_o\ & ((\Add3~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger3~input_o\,
	datab => \trigger4~input_o\,
	datac => \Add1~38_combout\,
	datad => \Add3~42_combout\,
	combout => \s_clk_compte~14_combout\);

-- Location: LCCOMB_X60_Y50_N14
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (s_clk_compte(21) & (\Add0~35\ $ (GND))) # (!s_clk_compte(21) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((s_clk_compte(21) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(21),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X55_Y50_N12
\s_clk_compte~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~15_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~14_combout\ & ((\Add0~36_combout\))) # (!\s_clk_compte~14_combout\ & (\Add2~40_combout\)))) # (!\trigger3~input_o\ & (((\s_clk_compte~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \trigger3~input_o\,
	datac => \s_clk_compte~14_combout\,
	datad => \Add0~36_combout\,
	combout => \s_clk_compte~15_combout\);

-- Location: LCCOMB_X55_Y50_N26
\s_clk_compte~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~80_combout\ = (\s_clk_compte~15_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan0~7_combout\,
	datad => \s_clk_compte~15_combout\,
	combout => \s_clk_compte~80_combout\);

-- Location: FF_X55_Y50_N27
\s_clk_compte[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(21));

-- Location: LCCOMB_X59_Y50_N18
\Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (s_clk_compte(22) & (!\Add2~41\)) # (!s_clk_compte(22) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!s_clk_compte(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(22),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X60_Y50_N16
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (s_clk_compte(22) & (!\Add0~37\)) # (!s_clk_compte(22) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!s_clk_compte(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(22),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X58_Y50_N16
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (s_clk_compte(22) & (\Add1~39\ $ (GND))) # (!s_clk_compte(22) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((s_clk_compte(22) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(22),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X56_Y50_N18
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (s_clk_compte(22) & (\Add3~43\ $ (GND))) # (!s_clk_compte(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((s_clk_compte(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X55_Y50_N10
\s_clk_compte~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~16_combout\ = (\trigger3~input_o\ & (\trigger4~input_o\)) # (!\trigger3~input_o\ & ((\trigger4~input_o\ & (\Add1~40_combout\)) # (!\trigger4~input_o\ & ((\Add3~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger3~input_o\,
	datab => \trigger4~input_o\,
	datac => \Add1~40_combout\,
	datad => \Add3~44_combout\,
	combout => \s_clk_compte~16_combout\);

-- Location: LCCOMB_X55_Y50_N24
\s_clk_compte~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~17_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~16_combout\ & ((\Add0~38_combout\))) # (!\s_clk_compte~16_combout\ & (\Add2~42_combout\)))) # (!\trigger3~input_o\ & (((\s_clk_compte~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~42_combout\,
	datab => \trigger3~input_o\,
	datac => \Add0~38_combout\,
	datad => \s_clk_compte~16_combout\,
	combout => \s_clk_compte~17_combout\);

-- Location: LCCOMB_X55_Y50_N16
\s_clk_compte~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~81_combout\ = (\s_clk_compte~17_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan0~7_combout\,
	datad => \s_clk_compte~17_combout\,
	combout => \s_clk_compte~81_combout\);

-- Location: FF_X55_Y50_N17
\s_clk_compte[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(22));

-- Location: LCCOMB_X60_Y50_N18
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (s_clk_compte(23) & (\Add0~39\ $ (GND))) # (!s_clk_compte(23) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((s_clk_compte(23) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(23),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X59_Y50_N20
\Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (s_clk_compte(23) & (\Add2~43\ $ (GND))) # (!s_clk_compte(23) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((s_clk_compte(23) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(23),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X58_Y50_N18
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (s_clk_compte(23) & (!\Add1~41\)) # (!s_clk_compte(23) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!s_clk_compte(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(23),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X56_Y50_N20
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (s_clk_compte(23) & (!\Add3~45\)) # (!s_clk_compte(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!s_clk_compte(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X57_Y50_N16
\s_clk_compte~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~54_combout\ = (\trigger4~input_o\ & ((\Add1~42_combout\) # ((\trigger3~input_o\)))) # (!\trigger4~input_o\ & (((!\trigger3~input_o\ & \Add3~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \Add1~42_combout\,
	datac => \trigger3~input_o\,
	datad => \Add3~46_combout\,
	combout => \s_clk_compte~54_combout\);

-- Location: LCCOMB_X57_Y50_N18
\s_clk_compte~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~55_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~54_combout\ & (\Add0~40_combout\)) # (!\s_clk_compte~54_combout\ & ((\Add2~44_combout\))))) # (!\trigger3~input_o\ & (((\s_clk_compte~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \trigger3~input_o\,
	datac => \Add2~44_combout\,
	datad => \s_clk_compte~54_combout\,
	combout => \s_clk_compte~55_combout\);

-- Location: LCCOMB_X57_Y50_N14
\s_clk_compte~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~56_combout\ = (\s_clk_compte~55_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan0~7_combout\,
	datad => \s_clk_compte~55_combout\,
	combout => \s_clk_compte~56_combout\);

-- Location: FF_X57_Y50_N15
\s_clk_compte[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(23));

-- Location: LCCOMB_X60_Y50_N20
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (s_clk_compte(24) & (!\Add0~41\)) # (!s_clk_compte(24) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!s_clk_compte(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X60_Y50_N22
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = s_clk_compte(25) $ (!\Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(25),
	cin => \Add0~43\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X59_Y50_N22
\Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (s_clk_compte(24) & (!\Add2~45\)) # (!s_clk_compte(24) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!s_clk_compte(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(24),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X59_Y50_N24
\Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = s_clk_compte(25) $ (!\Add2~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(25),
	cin => \Add2~47\,
	combout => \Add2~48_combout\);

-- Location: LCCOMB_X58_Y50_N20
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (s_clk_compte(24) & (\Add1~43\ $ (GND))) # (!s_clk_compte(24) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((s_clk_compte(24) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_clk_compte(24),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X58_Y50_N22
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = \Add1~45\ $ (s_clk_compte(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => s_clk_compte(25),
	cin => \Add1~45\,
	combout => \Add1~46_combout\);

-- Location: LCCOMB_X56_Y50_N22
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (s_clk_compte(24) & (\Add3~47\ $ (GND))) # (!s_clk_compte(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((s_clk_compte(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X56_Y50_N24
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = \Add3~49\ $ (s_clk_compte(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => s_clk_compte(25),
	cin => \Add3~49\,
	combout => \Add3~50_combout\);

-- Location: LCCOMB_X59_Y50_N28
\s_clk_compte~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~60_combout\ = (\trigger3~input_o\ & (((\trigger4~input_o\)))) # (!\trigger3~input_o\ & ((\trigger4~input_o\ & (\Add1~46_combout\)) # (!\trigger4~input_o\ & ((\Add3~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger3~input_o\,
	datab => \Add1~46_combout\,
	datac => \trigger4~input_o\,
	datad => \Add3~50_combout\,
	combout => \s_clk_compte~60_combout\);

-- Location: LCCOMB_X59_Y50_N30
\s_clk_compte~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~61_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~60_combout\ & (\Add0~44_combout\)) # (!\s_clk_compte~60_combout\ & ((\Add2~48_combout\))))) # (!\trigger3~input_o\ & (((\s_clk_compte~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger3~input_o\,
	datab => \Add0~44_combout\,
	datac => \Add2~48_combout\,
	datad => \s_clk_compte~60_combout\,
	combout => \s_clk_compte~61_combout\);

-- Location: LCCOMB_X59_Y50_N26
\s_clk_compte~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~62_combout\ = (\s_clk_compte~61_combout\ & (((!\LessThan0~7_combout\ & !s_clk_compte(24))) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => s_clk_compte(24),
	datac => s_clk_compte(25),
	datad => \s_clk_compte~61_combout\,
	combout => \s_clk_compte~62_combout\);

-- Location: FF_X59_Y50_N27
\s_clk_compte[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(25));

-- Location: LCCOMB_X57_Y50_N6
\s_clk_compte~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~6_combout\ = (\trigger4~input_o\ & ((\trigger3~input_o\) # ((\Add1~32_combout\)))) # (!\trigger4~input_o\ & (!\trigger3~input_o\ & ((\Add3~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \trigger3~input_o\,
	datac => \Add1~32_combout\,
	datad => \Add3~36_combout\,
	combout => \s_clk_compte~6_combout\);

-- Location: LCCOMB_X57_Y50_N10
\s_clk_compte~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~7_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~6_combout\ & (\Add0~30_combout\)) # (!\s_clk_compte~6_combout\ & ((\Add2~34_combout\))))) # (!\trigger3~input_o\ & (((\s_clk_compte~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \trigger3~input_o\,
	datac => \Add2~34_combout\,
	datad => \s_clk_compte~6_combout\,
	combout => \s_clk_compte~7_combout\);

-- Location: LCCOMB_X57_Y50_N20
\s_clk_compte~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~8_combout\ = (\s_clk_compte~7_combout\ & (((!s_clk_compte(24) & !\LessThan0~7_combout\)) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(25),
	datac => \LessThan0~7_combout\,
	datad => \s_clk_compte~7_combout\,
	combout => \s_clk_compte~8_combout\);

-- Location: FF_X57_Y50_N21
\s_clk_compte[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(18));

-- Location: LCCOMB_X60_Y50_N24
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (s_clk_compte(21) & (s_clk_compte(20) & (s_clk_compte(22) & s_clk_compte(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(21),
	datab => s_clk_compte(20),
	datac => s_clk_compte(22),
	datad => s_clk_compte(19),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y51_N6
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (s_clk_compte(10)) # ((s_clk_compte(9)) # ((s_clk_compte(11)) # (s_clk_compte(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(10),
	datab => s_clk_compte(9),
	datac => s_clk_compte(11),
	datad => s_clk_compte(8),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X58_Y51_N2
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (s_clk_compte(5)) # ((s_clk_compte(6)) # (s_clk_compte(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(5),
	datab => s_clk_compte(6),
	datad => s_clk_compte(4),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X56_Y51_N4
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (s_clk_compte(1)) # ((s_clk_compte(0)) # ((s_clk_compte(3)) # (s_clk_compte(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(1),
	datab => s_clk_compte(0),
	datac => s_clk_compte(3),
	datad => s_clk_compte(2),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X60_Y50_N26
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\) # ((s_clk_compte(7) & ((\LessThan0~3_combout\) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(7),
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X57_Y51_N6
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (s_clk_compte(15) & (s_clk_compte(12) & (s_clk_compte(13) & s_clk_compte(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(15),
	datab => s_clk_compte(12),
	datac => s_clk_compte(13),
	datad => s_clk_compte(14),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X60_Y50_N28
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (s_clk_compte(17) & ((s_clk_compte(16)) # ((\LessThan0~4_combout\ & \LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(17),
	datab => s_clk_compte(16),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X60_Y50_N30
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~0_combout\ & (s_clk_compte(23) & ((s_clk_compte(18)) # (\LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(18),
	datab => \LessThan0~0_combout\,
	datac => s_clk_compte(23),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X57_Y50_N0
\s_clk_compte~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~57_combout\ = (\trigger4~input_o\ & ((\trigger3~input_o\) # ((\Add1~44_combout\)))) # (!\trigger4~input_o\ & (!\trigger3~input_o\ & ((\Add3~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger4~input_o\,
	datab => \trigger3~input_o\,
	datac => \Add1~44_combout\,
	datad => \Add3~48_combout\,
	combout => \s_clk_compte~57_combout\);

-- Location: LCCOMB_X57_Y50_N2
\s_clk_compte~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~58_combout\ = (\trigger3~input_o\ & ((\s_clk_compte~57_combout\ & (\Add0~42_combout\)) # (!\s_clk_compte~57_combout\ & ((\Add2~46_combout\))))) # (!\trigger3~input_o\ & (((\s_clk_compte~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \trigger3~input_o\,
	datac => \Add2~46_combout\,
	datad => \s_clk_compte~57_combout\,
	combout => \s_clk_compte~58_combout\);

-- Location: LCCOMB_X57_Y50_N4
\s_clk_compte~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_clk_compte~59_combout\ = (\s_clk_compte~58_combout\ & (((!\LessThan0~7_combout\ & !s_clk_compte(24))) # (!s_clk_compte(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => s_clk_compte(25),
	datac => s_clk_compte(24),
	datad => \s_clk_compte~58_combout\,
	combout => \s_clk_compte~59_combout\);

-- Location: FF_X57_Y50_N5
\s_clk_compte[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_clk_compte~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clk_compte(24));

-- Location: LCCOMB_X57_Y50_N22
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!s_clk_compte(18)) # (!\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~0_combout\,
	datad => s_clk_compte(18),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X60_Y51_N8
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!s_clk_compte(13)) # (!s_clk_compte(12))) # (!s_clk_compte(11))) # (!s_clk_compte(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(14),
	datab => s_clk_compte(11),
	datac => s_clk_compte(12),
	datad => s_clk_compte(13),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X60_Y51_N2
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!s_clk_compte(6) & (!s_clk_compte(8) & (!s_clk_compte(9) & !s_clk_compte(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(6),
	datab => s_clk_compte(8),
	datac => s_clk_compte(9),
	datad => s_clk_compte(10),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X60_Y51_N0
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!s_clk_compte(15) & ((\LessThan1~1_combout\) # ((!s_clk_compte(7) & \LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(7),
	datab => \LessThan1~1_combout\,
	datac => s_clk_compte(15),
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X57_Y50_N30
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~0_combout\) # ((!s_clk_compte(17) & ((\LessThan1~3_combout\) # (!s_clk_compte(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(17),
	datab => s_clk_compte(16),
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X57_Y50_N28
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (s_clk_compte(25)) # ((s_clk_compte(24) & ((s_clk_compte(23)) # (!\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clk_compte(24),
	datab => s_clk_compte(23),
	datac => \LessThan1~4_combout\,
	datad => s_clk_compte(25),
	combout => \LessThan1~5_combout\);

-- Location: FF_X57_Y50_N29
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

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X51_Y53_N16
\mess[349]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess[349]~0_combout\ = (!\trigger0~input_o\ & !\trigger1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger0~input_o\,
	datab => \trigger1~input_o\,
	combout => \mess[349]~0_combout\);

-- Location: FF_X51_Y53_N17
\led2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	asdata => \trigger2~input_o\,
	sload => VCC,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led2~reg0_q\);

-- Location: LCCOMB_X55_Y50_N8
\led3$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led3$latch~combout\ = (\trigger0~input_o\ & ((\led3$latch~combout\))) # (!\trigger0~input_o\ & (\trigger3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger3~input_o\,
	datac => \led3$latch~combout\,
	datad => \trigger0~input_o\,
	combout => \led3$latch~combout\);

-- Location: LCCOMB_X55_Y50_N14
\led4$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led4$latch~combout\ = (\trigger0~input_o\ & ((\led4$latch~combout\))) # (!\trigger0~input_o\ & (\trigger4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger4~input_o\,
	datac => \led4$latch~combout\,
	datad => \trigger0~input_o\,
	combout => \led4$latch~combout\);

-- Location: LCCOMB_X56_Y53_N8
\mess~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~43_combout\ = (\trigger2~input_o\ & (mess(342))) # (!\trigger2~input_o\ & ((!mess(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(342),
	datac => \trigger2~input_o\,
	datad => mess(6),
	combout => \mess~43_combout\);

-- Location: FF_X56_Y53_N9
\mess[349]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~43_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(349));

-- Location: LCCOMB_X56_Y53_N14
\mess~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~57_combout\ = (\trigger2~input_o\ & ((mess(335)))) # (!\trigger2~input_o\ & (mess(349)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(349),
	datad => mess(335),
	combout => \mess~57_combout\);

-- Location: FF_X56_Y53_N15
\mess[342]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~57_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(342));

-- Location: LCCOMB_X56_Y53_N20
\mess~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~71_combout\ = (\trigger2~input_o\ & (mess(328))) # (!\trigger2~input_o\ & ((mess(342))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(328),
	datab => mess(342),
	datac => \trigger2~input_o\,
	combout => \mess~71_combout\);

-- Location: FF_X56_Y53_N21
\mess[335]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~71_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(335));

-- Location: LCCOMB_X56_Y53_N22
\mess~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~85_combout\ = (\trigger2~input_o\ & ((!mess(321)))) # (!\trigger2~input_o\ & (mess(335)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(335),
	datac => \trigger2~input_o\,
	datad => mess(321),
	combout => \mess~85_combout\);

-- Location: FF_X56_Y53_N23
\mess[328]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~85_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(328));

-- Location: LCCOMB_X56_Y53_N28
\mess~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~99_combout\ = (\trigger2~input_o\ & ((!mess(314)))) # (!\trigger2~input_o\ & (!mess(328)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(328),
	datac => \trigger2~input_o\,
	datad => mess(314),
	combout => \mess~99_combout\);

-- Location: FF_X56_Y53_N29
\mess[321]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~99_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(321));

-- Location: LCCOMB_X56_Y53_N10
\mess~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~113_combout\ = (\trigger2~input_o\ & (mess(307))) # (!\trigger2~input_o\ & ((!mess(321))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(307),
	datac => \trigger2~input_o\,
	datad => mess(321),
	combout => \mess~113_combout\);

-- Location: FF_X56_Y53_N11
\mess[314]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~113_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(314));

-- Location: LCCOMB_X56_Y53_N12
\mess~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~127_combout\ = (\trigger2~input_o\ & ((!mess(300)))) # (!\trigger2~input_o\ & (mess(314)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(314),
	datac => \trigger2~input_o\,
	datad => mess(300),
	combout => \mess~127_combout\);

-- Location: FF_X56_Y53_N13
\mess[307]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~127_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(307));

-- Location: LCCOMB_X56_Y53_N18
\mess~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~141_combout\ = (\trigger2~input_o\ & (!mess(293))) # (!\trigger2~input_o\ & ((!mess(307))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(293),
	datac => \trigger2~input_o\,
	datad => mess(307),
	combout => \mess~141_combout\);

-- Location: FF_X56_Y53_N19
\mess[300]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~141_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(300));

-- Location: LCCOMB_X56_Y53_N0
\mess~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~155_combout\ = (\trigger2~input_o\ & (!mess(286))) # (!\trigger2~input_o\ & ((!mess(300))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(286),
	datac => \trigger2~input_o\,
	datad => mess(300),
	combout => \mess~155_combout\);

-- Location: FF_X56_Y53_N1
\mess[293]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~155_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(293));

-- Location: LCCOMB_X56_Y53_N26
\mess~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~169_combout\ = (\trigger2~input_o\ & (!mess(279))) # (!\trigger2~input_o\ & ((!mess(293))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(279),
	datac => \trigger2~input_o\,
	datad => mess(293),
	combout => \mess~169_combout\);

-- Location: FF_X56_Y53_N27
\mess[286]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~169_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(286));

-- Location: LCCOMB_X56_Y53_N16
\mess~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~183_combout\ = (\trigger2~input_o\ & ((mess(272)))) # (!\trigger2~input_o\ & (!mess(286)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(286),
	datac => \trigger2~input_o\,
	datad => mess(272),
	combout => \mess~183_combout\);

-- Location: FF_X56_Y53_N17
\mess[279]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~183_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(279));

-- Location: LCCOMB_X56_Y53_N2
\mess~197\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~197_combout\ = (\trigger2~input_o\ & (!mess(265))) # (!\trigger2~input_o\ & ((mess(279))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(265),
	datac => \trigger2~input_o\,
	datad => mess(279),
	combout => \mess~197_combout\);

-- Location: FF_X56_Y53_N3
\mess[272]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~197_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(272));

-- Location: LCCOMB_X56_Y53_N4
\mess~211\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~211_combout\ = (\trigger2~input_o\ & (!mess(258))) # (!\trigger2~input_o\ & ((!mess(272))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(258),
	datac => \trigger2~input_o\,
	datad => mess(272),
	combout => \mess~211_combout\);

-- Location: FF_X56_Y53_N5
\mess[265]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~211_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(265));

-- Location: LCCOMB_X56_Y53_N6
\mess~225\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~225_combout\ = (\trigger2~input_o\ & ((mess(251)))) # (!\trigger2~input_o\ & (!mess(265)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(265),
	datac => \trigger2~input_o\,
	datad => mess(251),
	combout => \mess~225_combout\);

-- Location: FF_X56_Y53_N7
\mess[258]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~225_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(258));

-- Location: LCCOMB_X56_Y53_N24
\mess~239\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~239_combout\ = (\trigger2~input_o\ & (!mess(244))) # (!\trigger2~input_o\ & ((mess(258))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(244),
	datad => mess(258),
	combout => \mess~239_combout\);

-- Location: FF_X56_Y53_N25
\mess[251]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~239_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(251));

-- Location: LCCOMB_X56_Y53_N30
\mess~253\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~253_combout\ = (\trigger2~input_o\ & ((mess(237)))) # (!\trigger2~input_o\ & (!mess(251)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(251),
	datac => \trigger2~input_o\,
	datad => mess(237),
	combout => \mess~253_combout\);

-- Location: FF_X56_Y53_N31
\mess[244]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~253_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(244));

-- Location: LCCOMB_X50_Y53_N0
\mess~267\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~267_combout\ = (\trigger2~input_o\ & (!mess(230))) # (!\trigger2~input_o\ & ((mess(244))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(230),
	datad => mess(244),
	combout => \mess~267_combout\);

-- Location: FF_X50_Y53_N1
\mess[237]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~267_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(237));

-- Location: LCCOMB_X50_Y53_N8
\mess~281\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~281_combout\ = (\trigger2~input_o\ & ((mess(223)))) # (!\trigger2~input_o\ & (!mess(237)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(237),
	datac => \trigger2~input_o\,
	datad => mess(223),
	combout => \mess~281_combout\);

-- Location: FF_X50_Y53_N9
\mess[230]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~281_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(230));

-- Location: LCCOMB_X50_Y49_N16
\mess~295\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~295_combout\ = (\trigger2~input_o\ & (mess(216))) # (!\trigger2~input_o\ & ((mess(230))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(216),
	datac => \trigger2~input_o\,
	datad => mess(230),
	combout => \mess~295_combout\);

-- Location: FF_X50_Y49_N17
\mess[223]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~295_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(223));

-- Location: LCCOMB_X50_Y49_N4
\mess~309\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~309_combout\ = (\trigger2~input_o\ & (mess(209))) # (!\trigger2~input_o\ & ((mess(223))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(209),
	datac => \trigger2~input_o\,
	datad => mess(223),
	combout => \mess~309_combout\);

-- Location: FF_X50_Y49_N5
\mess[216]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~309_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(216));

-- Location: LCCOMB_X50_Y49_N24
\mess~323\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~323_combout\ = (\trigger2~input_o\ & ((!mess(202)))) # (!\trigger2~input_o\ & (mess(216)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(216),
	datac => \trigger2~input_o\,
	datad => mess(202),
	combout => \mess~323_combout\);

-- Location: FF_X50_Y49_N25
\mess[209]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~323_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(209));

-- Location: LCCOMB_X51_Y49_N24
\mess~337\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~337_combout\ = (\trigger2~input_o\ & (mess(195))) # (!\trigger2~input_o\ & ((!mess(209))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(195),
	datac => \trigger2~input_o\,
	datad => mess(209),
	combout => \mess~337_combout\);

-- Location: FF_X51_Y49_N25
\mess[202]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~337_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(202));

-- Location: LCCOMB_X51_Y49_N18
\mess~344\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~344_combout\ = (\trigger2~input_o\ & (!mess(188))) # (!\trigger2~input_o\ & ((mess(202))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(188),
	datac => \trigger2~input_o\,
	datad => mess(202),
	combout => \mess~344_combout\);

-- Location: FF_X51_Y49_N19
\mess[195]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~344_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(195));

-- Location: LCCOMB_X51_Y49_N14
\mess~330\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~330_combout\ = (\trigger2~input_o\ & (!mess(181))) # (!\trigger2~input_o\ & ((!mess(195))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(181),
	datac => \trigger2~input_o\,
	datad => mess(195),
	combout => \mess~330_combout\);

-- Location: FF_X51_Y49_N15
\mess[188]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~330_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(188));

-- Location: LCCOMB_X51_Y49_N20
\mess~316\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~316_combout\ = (\trigger2~input_o\ & (!mess(174))) # (!\trigger2~input_o\ & ((!mess(188))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(174),
	datab => mess(188),
	datac => \trigger2~input_o\,
	combout => \mess~316_combout\);

-- Location: FF_X51_Y49_N21
\mess[181]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~316_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(181));

-- Location: LCCOMB_X51_Y49_N26
\mess~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~302_combout\ = (\trigger2~input_o\ & (mess(167))) # (!\trigger2~input_o\ & ((!mess(181))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(167),
	datac => \trigger2~input_o\,
	datad => mess(181),
	combout => \mess~302_combout\);

-- Location: FF_X51_Y49_N27
\mess[174]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~302_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(174));

-- Location: LCCOMB_X51_Y49_N16
\mess~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~288_combout\ = (\trigger2~input_o\ & ((mess(160)))) # (!\trigger2~input_o\ & (mess(174)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(174),
	datac => \trigger2~input_o\,
	datad => mess(160),
	combout => \mess~288_combout\);

-- Location: FF_X51_Y49_N17
\mess[167]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~288_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(167));

-- Location: LCCOMB_X51_Y49_N2
\mess~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~274_combout\ = (\trigger2~input_o\ & (!mess(153))) # (!\trigger2~input_o\ & ((mess(167))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(153),
	datac => \trigger2~input_o\,
	datad => mess(167),
	combout => \mess~274_combout\);

-- Location: FF_X51_Y49_N3
\mess[160]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~274_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(160));

-- Location: LCCOMB_X51_Y49_N4
\mess~260\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~260_combout\ = (\trigger2~input_o\ & (mess(146))) # (!\trigger2~input_o\ & ((!mess(160))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(146),
	datac => \trigger2~input_o\,
	datad => mess(160),
	combout => \mess~260_combout\);

-- Location: FF_X51_Y49_N5
\mess[153]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~260_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(153));

-- Location: LCCOMB_X51_Y49_N22
\mess~246\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~246_combout\ = (\trigger2~input_o\ & ((!mess(139)))) # (!\trigger2~input_o\ & (mess(153)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(153),
	datac => \trigger2~input_o\,
	datad => mess(139),
	combout => \mess~246_combout\);

-- Location: FF_X51_Y49_N23
\mess[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~246_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(146));

-- Location: LCCOMB_X51_Y49_N28
\mess~232\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~232_combout\ = (\trigger2~input_o\ & ((mess(132)))) # (!\trigger2~input_o\ & (!mess(146)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(146),
	datac => \trigger2~input_o\,
	datad => mess(132),
	combout => \mess~232_combout\);

-- Location: FF_X51_Y49_N29
\mess[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~232_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(139));

-- Location: LCCOMB_X51_Y49_N6
\mess~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~218_combout\ = (\trigger2~input_o\ & ((!mess(125)))) # (!\trigger2~input_o\ & (mess(139)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(139),
	datac => \trigger2~input_o\,
	datad => mess(125),
	combout => \mess~218_combout\);

-- Location: FF_X51_Y49_N7
\mess[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~218_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(132));

-- Location: LCCOMB_X52_Y49_N26
\mess~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~204_combout\ = (\trigger2~input_o\ & ((!mess(118)))) # (!\trigger2~input_o\ & (!mess(132)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(132),
	datad => mess(118),
	combout => \mess~204_combout\);

-- Location: FF_X52_Y49_N27
\mess[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~204_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(125));

-- Location: LCCOMB_X51_Y49_N8
\mess~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~190_combout\ = (\trigger2~input_o\ & (!mess(111))) # (!\trigger2~input_o\ & ((!mess(125))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(111),
	datac => \trigger2~input_o\,
	datad => mess(125),
	combout => \mess~190_combout\);

-- Location: FF_X51_Y49_N9
\mess[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~190_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(118));

-- Location: LCCOMB_X51_Y49_N30
\mess~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~176_combout\ = (\trigger2~input_o\ & ((!mess(104)))) # (!\trigger2~input_o\ & (!mess(118)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(118),
	datac => \trigger2~input_o\,
	datad => mess(104),
	combout => \mess~176_combout\);

-- Location: FF_X51_Y49_N31
\mess[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~176_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(111));

-- Location: LCCOMB_X51_Y49_N12
\mess~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~162_combout\ = (\trigger2~input_o\ & ((mess(97)))) # (!\trigger2~input_o\ & (!mess(111)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(111),
	datac => \trigger2~input_o\,
	datad => mess(97),
	combout => \mess~162_combout\);

-- Location: FF_X51_Y49_N13
\mess[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~162_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(104));

-- Location: LCCOMB_X51_Y49_N10
\mess~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~148_combout\ = (\trigger2~input_o\ & ((!mess(90)))) # (!\trigger2~input_o\ & (mess(104)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(104),
	datac => \trigger2~input_o\,
	datad => mess(90),
	combout => \mess~148_combout\);

-- Location: FF_X51_Y49_N11
\mess[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~148_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(97));

-- Location: LCCOMB_X52_Y52_N30
\mess~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~134_combout\ = (\trigger2~input_o\ & (mess(83))) # (!\trigger2~input_o\ & ((!mess(97))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(83),
	datac => mess(97),
	combout => \mess~134_combout\);

-- Location: FF_X52_Y52_N31
\mess[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~134_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(90));

-- Location: LCCOMB_X52_Y52_N0
\mess~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~120_combout\ = (\trigger2~input_o\ & ((mess(76)))) # (!\trigger2~input_o\ & (mess(90)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(90),
	datac => \trigger2~input_o\,
	datad => mess(76),
	combout => \mess~120_combout\);

-- Location: FF_X52_Y52_N1
\mess[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~120_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(83));

-- Location: LCCOMB_X52_Y52_N20
\mess~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~106_combout\ = (\trigger2~input_o\ & ((!mess(69)))) # (!\trigger2~input_o\ & (mess(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(83),
	datac => \trigger2~input_o\,
	datad => mess(69),
	combout => \mess~106_combout\);

-- Location: FF_X52_Y52_N21
\mess[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~106_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(76));

-- Location: LCCOMB_X52_Y52_N12
\mess~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~92_combout\ = (\trigger2~input_o\ & (!mess(62))) # (!\trigger2~input_o\ & ((!mess(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(62),
	datac => \trigger2~input_o\,
	datad => mess(76),
	combout => \mess~92_combout\);

-- Location: FF_X52_Y52_N13
\mess[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~92_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(69));

-- Location: LCCOMB_X52_Y52_N4
\mess~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~78_combout\ = (\trigger2~input_o\ & ((!mess(55)))) # (!\trigger2~input_o\ & (!mess(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(69),
	datac => \trigger2~input_o\,
	datad => mess(55),
	combout => \mess~78_combout\);

-- Location: FF_X52_Y52_N5
\mess[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~78_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(62));

-- Location: LCCOMB_X52_Y52_N28
\mess~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~64_combout\ = (\trigger2~input_o\ & ((mess(48)))) # (!\trigger2~input_o\ & (!mess(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(62),
	datac => \trigger2~input_o\,
	datad => mess(48),
	combout => \mess~64_combout\);

-- Location: FF_X52_Y52_N29
\mess[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~64_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(55));

-- Location: LCCOMB_X52_Y52_N24
\mess~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~50_combout\ = (\trigger2~input_o\ & ((!mess(41)))) # (!\trigger2~input_o\ & (mess(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(55),
	datac => \trigger2~input_o\,
	datad => mess(41),
	combout => \mess~50_combout\);

-- Location: FF_X52_Y52_N25
\mess[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~50_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(48));

-- Location: LCCOMB_X52_Y51_N22
\mess~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~36_combout\ = (\trigger2~input_o\ & (!mess(34))) # (!\trigger2~input_o\ & ((!mess(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(34),
	datac => \trigger2~input_o\,
	datad => mess(48),
	combout => \mess~36_combout\);

-- Location: FF_X52_Y51_N23
\mess[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~36_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(41));

-- Location: LCCOMB_X52_Y51_N0
\mess~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~29_combout\ = (\trigger2~input_o\ & ((mess(27)))) # (!\trigger2~input_o\ & (!mess(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(41),
	datac => \trigger2~input_o\,
	datad => mess(27),
	combout => \mess~29_combout\);

-- Location: FF_X52_Y51_N1
\mess[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~29_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(34));

-- Location: LCCOMB_X52_Y51_N18
\mess~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~22_combout\ = (\trigger2~input_o\ & ((!mess(20)))) # (!\trigger2~input_o\ & (mess(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(34),
	datac => \trigger2~input_o\,
	datad => mess(20),
	combout => \mess~22_combout\);

-- Location: FF_X52_Y51_N19
\mess[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~22_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(27));

-- Location: LCCOMB_X52_Y51_N28
\mess~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~15_combout\ = (\trigger2~input_o\ & (!mess(13))) # (!\trigger2~input_o\ & ((!mess(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(13),
	datac => \trigger2~input_o\,
	datad => mess(27),
	combout => \mess~15_combout\);

-- Location: FF_X52_Y51_N29
\mess[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~15_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(20));

-- Location: LCCOMB_X52_Y51_N10
\mess~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~8_combout\ = (\trigger2~input_o\ & (!mess(6))) # (!\trigger2~input_o\ & ((!mess(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(6),
	datac => \trigger2~input_o\,
	datad => mess(20),
	combout => \mess~8_combout\);

-- Location: FF_X52_Y51_N11
\mess[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~8_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(13));

-- Location: LCCOMB_X52_Y51_N24
\mess~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~1_combout\ = (\trigger2~input_o\ & ((!mess(349)))) # (!\trigger2~input_o\ & (!mess(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(13),
	datac => \trigger2~input_o\,
	datad => mess(349),
	combout => \mess~1_combout\);

-- Location: FF_X52_Y51_N25
\mess[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~1_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(6));

-- Location: LCCOMB_X52_Y51_N8
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

-- Location: FF_X52_Y51_N9
\HEX5[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[6]~0_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[6]~reg0_q\);

-- Location: LCCOMB_X51_Y52_N6
\mess~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~44_combout\ = (\trigger2~input_o\ & ((!mess(341)))) # (!\trigger2~input_o\ & (!mess(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(5),
	datac => \trigger2~input_o\,
	datad => mess(341),
	combout => \mess~44_combout\);

-- Location: FF_X51_Y52_N7
\mess[348]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~44_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(348));

-- Location: LCCOMB_X50_Y52_N24
\mess~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~58_combout\ = (\trigger2~input_o\ & (mess(334))) # (!\trigger2~input_o\ & ((!mess(348))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(334),
	datad => mess(348),
	combout => \mess~58_combout\);

-- Location: FF_X50_Y52_N25
\mess[341]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~58_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(341));

-- Location: LCCOMB_X50_Y52_N22
\mess~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~72_combout\ = (\trigger2~input_o\ & (mess(327))) # (!\trigger2~input_o\ & ((mess(341))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(327),
	datad => mess(341),
	combout => \mess~72_combout\);

-- Location: FF_X50_Y52_N23
\mess[334]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~72_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(334));

-- Location: LCCOMB_X50_Y52_N20
\mess~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~86_combout\ = (\trigger2~input_o\ & ((mess(320)))) # (!\trigger2~input_o\ & (mess(334)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(334),
	datad => mess(320),
	combout => \mess~86_combout\);

-- Location: FF_X50_Y52_N21
\mess[327]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~86_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(327));

-- Location: LCCOMB_X50_Y52_N16
\mess~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~100_combout\ = (\trigger2~input_o\ & (mess(313))) # (!\trigger2~input_o\ & ((mess(327))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(313),
	datad => mess(327),
	combout => \mess~100_combout\);

-- Location: FF_X50_Y52_N17
\mess[320]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~100_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(320));

-- Location: LCCOMB_X50_Y52_N26
\mess~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~114_combout\ = (\trigger2~input_o\ & ((mess(306)))) # (!\trigger2~input_o\ & (mess(320)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(320),
	datad => mess(306),
	combout => \mess~114_combout\);

-- Location: FF_X50_Y52_N27
\mess[313]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~114_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(313));

-- Location: LCCOMB_X50_Y52_N0
\mess~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~128_combout\ = (\trigger2~input_o\ & ((mess(299)))) # (!\trigger2~input_o\ & (mess(313)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(313),
	datad => mess(299),
	combout => \mess~128_combout\);

-- Location: FF_X50_Y52_N1
\mess[306]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~128_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(306));

-- Location: LCCOMB_X49_Y53_N16
\mess~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~142_combout\ = (\trigger2~input_o\ & (mess(292))) # (!\trigger2~input_o\ & ((mess(306))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(292),
	datad => mess(306),
	combout => \mess~142_combout\);

-- Location: FF_X49_Y53_N17
\mess[299]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~142_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(299));

-- Location: LCCOMB_X49_Y53_N18
\mess~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~156_combout\ = (\trigger2~input_o\ & ((mess(285)))) # (!\trigger2~input_o\ & (mess(299)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(299),
	datad => mess(285),
	combout => \mess~156_combout\);

-- Location: FF_X49_Y53_N19
\mess[292]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~156_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(292));

-- Location: LCCOMB_X49_Y53_N28
\mess~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~170_combout\ = (\trigger2~input_o\ & (!mess(278))) # (!\trigger2~input_o\ & ((mess(292))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(278),
	datad => mess(292),
	combout => \mess~170_combout\);

-- Location: FF_X49_Y53_N29
\mess[285]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~170_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(285));

-- Location: LCCOMB_X49_Y53_N26
\mess~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~184_combout\ = (\trigger2~input_o\ & (mess(271))) # (!\trigger2~input_o\ & ((!mess(285))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(271),
	datad => mess(285),
	combout => \mess~184_combout\);

-- Location: FF_X49_Y53_N27
\mess[278]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~184_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(278));

-- Location: LCCOMB_X49_Y53_N8
\mess~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~198_combout\ = (\trigger2~input_o\ & ((!mess(264)))) # (!\trigger2~input_o\ & (mess(278)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(278),
	datad => mess(264),
	combout => \mess~198_combout\);

-- Location: FF_X49_Y53_N9
\mess[271]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~198_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(271));

-- Location: LCCOMB_X49_Y53_N6
\mess~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~212_combout\ = (\trigger2~input_o\ & ((mess(257)))) # (!\trigger2~input_o\ & (!mess(271)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(271),
	datad => mess(257),
	combout => \mess~212_combout\);

-- Location: FF_X49_Y53_N7
\mess[264]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~212_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(264));

-- Location: LCCOMB_X49_Y53_N20
\mess~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~226_combout\ = (\trigger2~input_o\ & (mess(250))) # (!\trigger2~input_o\ & ((mess(264))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(250),
	datad => mess(264),
	combout => \mess~226_combout\);

-- Location: FF_X49_Y53_N21
\mess[257]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~226_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(257));

-- Location: LCCOMB_X49_Y53_N10
\mess~240\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~240_combout\ = (\trigger2~input_o\ & (mess(243))) # (!\trigger2~input_o\ & ((mess(257))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(243),
	datad => mess(257),
	combout => \mess~240_combout\);

-- Location: FF_X49_Y53_N11
\mess[250]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~240_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(250));

-- Location: LCCOMB_X49_Y53_N4
\mess~254\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~254_combout\ = (\trigger2~input_o\ & (mess(236))) # (!\trigger2~input_o\ & ((mess(250))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(236),
	datad => mess(250),
	combout => \mess~254_combout\);

-- Location: FF_X49_Y53_N5
\mess[243]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~254_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(243));

-- Location: LCCOMB_X49_Y53_N14
\mess~268\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~268_combout\ = (\trigger2~input_o\ & ((mess(229)))) # (!\trigger2~input_o\ & (mess(243)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(243),
	datad => mess(229),
	combout => \mess~268_combout\);

-- Location: FF_X49_Y53_N15
\mess[236]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~268_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(236));

-- Location: LCCOMB_X49_Y53_N24
\mess~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~282_combout\ = (\trigger2~input_o\ & ((!mess(222)))) # (!\trigger2~input_o\ & (mess(236)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(236),
	datad => mess(222),
	combout => \mess~282_combout\);

-- Location: FF_X49_Y53_N25
\mess[229]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~282_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(229));

-- Location: LCCOMB_X49_Y53_N2
\mess~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~296_combout\ = (\trigger2~input_o\ & (mess(215))) # (!\trigger2~input_o\ & ((!mess(229))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(215),
	datab => \trigger2~input_o\,
	datad => mess(229),
	combout => \mess~296_combout\);

-- Location: FF_X49_Y53_N3
\mess[222]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~296_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(222));

-- Location: LCCOMB_X49_Y53_N12
\mess~310\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~310_combout\ = (\trigger2~input_o\ & (!mess(208))) # (!\trigger2~input_o\ & ((mess(222))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(208),
	datad => mess(222),
	combout => \mess~310_combout\);

-- Location: FF_X49_Y53_N13
\mess[215]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~310_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(215));

-- Location: LCCOMB_X49_Y53_N30
\mess~324\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~324_combout\ = (\trigger2~input_o\ & ((mess(201)))) # (!\trigger2~input_o\ & (!mess(215)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(215),
	datab => \trigger2~input_o\,
	datad => mess(201),
	combout => \mess~324_combout\);

-- Location: FF_X49_Y53_N31
\mess[208]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~324_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(208));

-- Location: LCCOMB_X49_Y53_N0
\mess~338\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~338_combout\ = (\trigger2~input_o\ & ((mess(194)))) # (!\trigger2~input_o\ & (mess(208)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(208),
	datac => mess(194),
	datad => \trigger2~input_o\,
	combout => \mess~338_combout\);

-- Location: FF_X49_Y53_N1
\mess[201]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~338_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(201));

-- Location: LCCOMB_X49_Y53_N22
\mess~345\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~345_combout\ = (\trigger2~input_o\ & (!mess(187))) # (!\trigger2~input_o\ & ((mess(201))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(187),
	datad => mess(201),
	combout => \mess~345_combout\);

-- Location: FF_X49_Y53_N23
\mess[194]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~345_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(194));

-- Location: LCCOMB_X47_Y53_N18
\mess~331\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~331_combout\ = (\trigger2~input_o\ & (!mess(180))) # (!\trigger2~input_o\ & ((!mess(194))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(180),
	datad => mess(194),
	combout => \mess~331_combout\);

-- Location: FF_X47_Y53_N19
\mess[187]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~331_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(187));

-- Location: LCCOMB_X47_Y53_N8
\mess~317\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~317_combout\ = (\trigger2~input_o\ & (mess(173))) # (!\trigger2~input_o\ & ((!mess(187))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(173),
	datad => mess(187),
	combout => \mess~317_combout\);

-- Location: FF_X47_Y53_N9
\mess[180]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~317_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(180));

-- Location: LCCOMB_X47_Y53_N30
\mess~303\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~303_combout\ = (\trigger2~input_o\ & ((mess(166)))) # (!\trigger2~input_o\ & (mess(180)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(180),
	datac => mess(166),
	combout => \mess~303_combout\);

-- Location: FF_X47_Y53_N31
\mess[173]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~303_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(173));

-- Location: LCCOMB_X47_Y53_N4
\mess~289\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~289_combout\ = (\trigger2~input_o\ & ((mess(159)))) # (!\trigger2~input_o\ & (mess(173)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(173),
	datac => mess(159),
	datad => \trigger2~input_o\,
	combout => \mess~289_combout\);

-- Location: FF_X47_Y53_N5
\mess[166]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~289_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(166));

-- Location: LCCOMB_X47_Y53_N14
\mess~275\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~275_combout\ = (\trigger2~input_o\ & ((mess(152)))) # (!\trigger2~input_o\ & (mess(166)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(166),
	datad => mess(152),
	combout => \mess~275_combout\);

-- Location: FF_X47_Y53_N15
\mess[159]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~275_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(159));

-- Location: LCCOMB_X47_Y53_N20
\mess~261\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~261_combout\ = (\trigger2~input_o\ & ((mess(145)))) # (!\trigger2~input_o\ & (mess(159)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(159),
	datad => mess(145),
	combout => \mess~261_combout\);

-- Location: FF_X47_Y53_N21
\mess[152]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~261_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(152));

-- Location: LCCOMB_X47_Y53_N2
\mess~247\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~247_combout\ = (\trigger2~input_o\ & (mess(138))) # (!\trigger2~input_o\ & ((mess(152))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(138),
	datac => \trigger2~input_o\,
	datad => mess(152),
	combout => \mess~247_combout\);

-- Location: FF_X47_Y53_N3
\mess[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~247_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(145));

-- Location: LCCOMB_X47_Y53_N24
\mess~233\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~233_combout\ = (\trigger2~input_o\ & (!mess(131))) # (!\trigger2~input_o\ & ((mess(145))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(131),
	datad => mess(145),
	combout => \mess~233_combout\);

-- Location: FF_X47_Y53_N25
\mess[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~233_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(138));

-- Location: LCCOMB_X47_Y53_N22
\mess~219\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~219_combout\ = (\trigger2~input_o\ & (!mess(124))) # (!\trigger2~input_o\ & ((!mess(138))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(124),
	datac => \trigger2~input_o\,
	datad => mess(138),
	combout => \mess~219_combout\);

-- Location: FF_X47_Y53_N23
\mess[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~219_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(131));

-- Location: LCCOMB_X47_Y53_N12
\mess~205\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~205_combout\ = (\trigger2~input_o\ & ((mess(117)))) # (!\trigger2~input_o\ & (!mess(131)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(131),
	datad => mess(117),
	combout => \mess~205_combout\);

-- Location: FF_X47_Y53_N13
\mess[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~205_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(124));

-- Location: LCCOMB_X47_Y53_N6
\mess~191\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~191_combout\ = (\trigger2~input_o\ & ((mess(110)))) # (!\trigger2~input_o\ & (mess(124)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(124),
	datac => \trigger2~input_o\,
	datad => mess(110),
	combout => \mess~191_combout\);

-- Location: FF_X47_Y53_N7
\mess[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~191_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(117));

-- Location: LCCOMB_X47_Y53_N16
\mess~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~177_combout\ = (\trigger2~input_o\ & (mess(103))) # (!\trigger2~input_o\ & ((mess(117))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(103),
	datac => \trigger2~input_o\,
	datad => mess(117),
	combout => \mess~177_combout\);

-- Location: FF_X47_Y53_N17
\mess[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~177_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(110));

-- Location: LCCOMB_X47_Y53_N10
\mess~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~163_combout\ = (\trigger2~input_o\ & ((mess(96)))) # (!\trigger2~input_o\ & (mess(110)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(110),
	datac => \trigger2~input_o\,
	datad => mess(96),
	combout => \mess~163_combout\);

-- Location: FF_X47_Y53_N11
\mess[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~163_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(103));

-- Location: LCCOMB_X47_Y53_N28
\mess~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~149_combout\ = (\trigger2~input_o\ & (mess(89))) # (!\trigger2~input_o\ & ((mess(103))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(89),
	datad => mess(103),
	combout => \mess~149_combout\);

-- Location: FF_X47_Y53_N29
\mess[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~149_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(96));

-- Location: LCCOMB_X47_Y53_N26
\mess~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~135_combout\ = (\trigger2~input_o\ & (mess(82))) # (!\trigger2~input_o\ & ((mess(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(82),
	datad => mess(96),
	combout => \mess~135_combout\);

-- Location: FF_X47_Y53_N27
\mess[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~135_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(89));

-- Location: LCCOMB_X47_Y53_N0
\mess~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~121_combout\ = (\trigger2~input_o\ & ((mess(75)))) # (!\trigger2~input_o\ & (mess(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(89),
	datad => mess(75),
	combout => \mess~121_combout\);

-- Location: FF_X47_Y53_N1
\mess[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~121_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(82));

-- Location: LCCOMB_X51_Y52_N22
\mess~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~107_combout\ = (\trigger2~input_o\ & (mess(68))) # (!\trigger2~input_o\ & ((mess(82))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(68),
	datac => \trigger2~input_o\,
	datad => mess(82),
	combout => \mess~107_combout\);

-- Location: FF_X51_Y52_N23
\mess[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~107_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(75));

-- Location: LCCOMB_X50_Y52_N14
\mess~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~93_combout\ = (\trigger2~input_o\ & ((mess(61)))) # (!\trigger2~input_o\ & (mess(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(75),
	datad => mess(61),
	combout => \mess~93_combout\);

-- Location: FF_X50_Y52_N15
\mess[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~93_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(68));

-- Location: LCCOMB_X51_Y52_N24
\mess~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~79_combout\ = (\trigger2~input_o\ & (!mess(54))) # (!\trigger2~input_o\ & ((mess(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(54),
	datac => \trigger2~input_o\,
	datad => mess(68),
	combout => \mess~79_combout\);

-- Location: FF_X51_Y52_N25
\mess[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~79_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(61));

-- Location: LCCOMB_X51_Y52_N26
\mess~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~65_combout\ = (\trigger2~input_o\ & (mess(47))) # (!\trigger2~input_o\ & ((!mess(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(47),
	datac => \trigger2~input_o\,
	datad => mess(61),
	combout => \mess~65_combout\);

-- Location: FF_X51_Y52_N27
\mess[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~65_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(54));

-- Location: LCCOMB_X51_Y52_N0
\mess~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~51_combout\ = (\trigger2~input_o\ & ((!mess(40)))) # (!\trigger2~input_o\ & (mess(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(54),
	datac => \trigger2~input_o\,
	datad => mess(40),
	combout => \mess~51_combout\);

-- Location: FF_X51_Y52_N1
\mess[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~51_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(47));

-- Location: LCCOMB_X51_Y52_N20
\mess~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~37_combout\ = (\trigger2~input_o\ & ((mess(33)))) # (!\trigger2~input_o\ & (!mess(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(47),
	datac => \trigger2~input_o\,
	datad => mess(33),
	combout => \mess~37_combout\);

-- Location: FF_X51_Y52_N21
\mess[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~37_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(40));

-- Location: LCCOMB_X51_Y52_N10
\mess~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~30_combout\ = (\trigger2~input_o\ & (mess(26))) # (!\trigger2~input_o\ & ((mess(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(26),
	datac => \trigger2~input_o\,
	datad => mess(40),
	combout => \mess~30_combout\);

-- Location: FF_X51_Y52_N11
\mess[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~30_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(33));

-- Location: LCCOMB_X51_Y52_N4
\mess~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~23_combout\ = (\trigger2~input_o\ & ((mess(19)))) # (!\trigger2~input_o\ & (mess(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(33),
	datac => \trigger2~input_o\,
	datad => mess(19),
	combout => \mess~23_combout\);

-- Location: FF_X51_Y52_N5
\mess[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~23_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(26));

-- Location: LCCOMB_X51_Y52_N18
\mess~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~16_combout\ = (\trigger2~input_o\ & ((mess(12)))) # (!\trigger2~input_o\ & (mess(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(26),
	datac => \trigger2~input_o\,
	datad => mess(12),
	combout => \mess~16_combout\);

-- Location: FF_X51_Y52_N19
\mess[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~16_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(19));

-- Location: LCCOMB_X51_Y52_N28
\mess~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~9_combout\ = (\trigger2~input_o\ & (mess(5))) # (!\trigger2~input_o\ & ((mess(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(5),
	datab => mess(19),
	datac => \trigger2~input_o\,
	combout => \mess~9_combout\);

-- Location: FF_X51_Y52_N29
\mess[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~9_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(12));

-- Location: LCCOMB_X51_Y52_N30
\mess~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~2_combout\ = (\trigger2~input_o\ & ((!mess(348)))) # (!\trigger2~input_o\ & (mess(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(12),
	datac => \trigger2~input_o\,
	datad => mess(348),
	combout => \mess~2_combout\);

-- Location: FF_X51_Y52_N31
\mess[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~2_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(5));

-- Location: LCCOMB_X54_Y52_N20
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

-- Location: FF_X54_Y52_N21
\HEX5[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[5]~1_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[5]~reg0_q\);

-- Location: LCCOMB_X55_Y53_N16
\mess~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~45_combout\ = (\trigger2~input_o\ & (!mess(340))) # (!\trigger2~input_o\ & ((!mess(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(340),
	datac => \trigger2~input_o\,
	datad => mess(4),
	combout => \mess~45_combout\);

-- Location: FF_X55_Y53_N17
\mess[347]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~45_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(347));

-- Location: LCCOMB_X55_Y53_N18
\mess~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~59_combout\ = (\trigger2~input_o\ & (mess(333))) # (!\trigger2~input_o\ & ((!mess(347))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(333),
	datac => \trigger2~input_o\,
	datad => mess(347),
	combout => \mess~59_combout\);

-- Location: FF_X55_Y53_N19
\mess[340]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~59_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(340));

-- Location: LCCOMB_X55_Y53_N30
\mess~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~73_combout\ = (\trigger2~input_o\ & (mess(326))) # (!\trigger2~input_o\ & ((mess(340))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(326),
	datac => \trigger2~input_o\,
	datad => mess(340),
	combout => \mess~73_combout\);

-- Location: FF_X55_Y53_N31
\mess[333]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~73_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(333));

-- Location: LCCOMB_X55_Y53_N28
\mess~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~87_combout\ = (\trigger2~input_o\ & ((mess(319)))) # (!\trigger2~input_o\ & (mess(333)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(333),
	datab => mess(319),
	datac => \trigger2~input_o\,
	combout => \mess~87_combout\);

-- Location: FF_X55_Y53_N29
\mess[326]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~87_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(326));

-- Location: LCCOMB_X55_Y53_N14
\mess~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~101_combout\ = (\trigger2~input_o\ & (mess(312))) # (!\trigger2~input_o\ & ((mess(326))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(312),
	datac => \trigger2~input_o\,
	datad => mess(326),
	combout => \mess~101_combout\);

-- Location: FF_X55_Y53_N15
\mess[319]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~101_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(319));

-- Location: LCCOMB_X55_Y53_N20
\mess~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~115_combout\ = (\trigger2~input_o\ & ((mess(305)))) # (!\trigger2~input_o\ & (mess(319)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(319),
	datac => \trigger2~input_o\,
	datad => mess(305),
	combout => \mess~115_combout\);

-- Location: FF_X55_Y53_N21
\mess[312]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~115_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(312));

-- Location: LCCOMB_X55_Y53_N6
\mess~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~129_combout\ = (\trigger2~input_o\ & (mess(298))) # (!\trigger2~input_o\ & ((mess(312))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(298),
	datac => \trigger2~input_o\,
	datad => mess(312),
	combout => \mess~129_combout\);

-- Location: FF_X55_Y53_N7
\mess[305]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~129_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(305));

-- Location: LCCOMB_X55_Y53_N12
\mess~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~143_combout\ = (\trigger2~input_o\ & (mess(291))) # (!\trigger2~input_o\ & ((mess(305))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(291),
	datac => \trigger2~input_o\,
	datad => mess(305),
	combout => \mess~143_combout\);

-- Location: FF_X55_Y53_N13
\mess[298]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~143_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(298));

-- Location: LCCOMB_X55_Y53_N2
\mess~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~157_combout\ = (\trigger2~input_o\ & (mess(284))) # (!\trigger2~input_o\ & ((mess(298))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(284),
	datac => \trigger2~input_o\,
	datad => mess(298),
	combout => \mess~157_combout\);

-- Location: FF_X55_Y53_N3
\mess[291]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~157_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(291));

-- Location: LCCOMB_X55_Y53_N0
\mess~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~171_combout\ = (\trigger2~input_o\ & (mess(277))) # (!\trigger2~input_o\ & ((mess(291))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(277),
	datac => \trigger2~input_o\,
	datad => mess(291),
	combout => \mess~171_combout\);

-- Location: FF_X55_Y53_N1
\mess[284]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~171_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(284));

-- Location: LCCOMB_X55_Y53_N10
\mess~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~185_combout\ = (\trigger2~input_o\ & (!mess(270))) # (!\trigger2~input_o\ & ((mess(284))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(270),
	datac => \trigger2~input_o\,
	datad => mess(284),
	combout => \mess~185_combout\);

-- Location: FF_X55_Y53_N11
\mess[277]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~185_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(277));

-- Location: LCCOMB_X55_Y53_N24
\mess~199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~199_combout\ = (\trigger2~input_o\ & (!mess(263))) # (!\trigger2~input_o\ & ((!mess(277))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(263),
	datac => \trigger2~input_o\,
	datad => mess(277),
	combout => \mess~199_combout\);

-- Location: FF_X55_Y53_N25
\mess[270]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~199_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(270));

-- Location: LCCOMB_X55_Y53_N26
\mess~213\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~213_combout\ = (\trigger2~input_o\ & ((mess(256)))) # (!\trigger2~input_o\ & (!mess(270)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(270),
	datac => \trigger2~input_o\,
	datad => mess(256),
	combout => \mess~213_combout\);

-- Location: FF_X55_Y53_N27
\mess[263]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~213_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(263));

-- Location: LCCOMB_X54_Y53_N30
\mess~227\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~227_combout\ = (\trigger2~input_o\ & ((mess(249)))) # (!\trigger2~input_o\ & (mess(263)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(263),
	datac => \trigger2~input_o\,
	datad => mess(249),
	combout => \mess~227_combout\);

-- Location: FF_X54_Y53_N31
\mess[256]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~227_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(256));

-- Location: LCCOMB_X50_Y52_N18
\mess~241\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~241_combout\ = (\trigger2~input_o\ & (mess(242))) # (!\trigger2~input_o\ & ((mess(256))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(242),
	datad => mess(256),
	combout => \mess~241_combout\);

-- Location: FF_X50_Y52_N19
\mess[249]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~241_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(249));

-- Location: LCCOMB_X50_Y52_N12
\mess~255\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~255_combout\ = (\trigger2~input_o\ & ((!mess(235)))) # (!\trigger2~input_o\ & (mess(249)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(249),
	datad => mess(235),
	combout => \mess~255_combout\);

-- Location: FF_X50_Y52_N13
\mess[242]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~255_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(242));

-- Location: LCCOMB_X50_Y52_N10
\mess~269\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~269_combout\ = (\trigger2~input_o\ & (!mess(228))) # (!\trigger2~input_o\ & ((!mess(242))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(228),
	datad => mess(242),
	combout => \mess~269_combout\);

-- Location: FF_X50_Y52_N11
\mess[235]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~269_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(235));

-- Location: LCCOMB_X50_Y52_N4
\mess~283\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~283_combout\ = (\trigger2~input_o\ & (mess(221))) # (!\trigger2~input_o\ & ((!mess(235))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(221),
	datad => mess(235),
	combout => \mess~283_combout\);

-- Location: FF_X50_Y52_N5
\mess[228]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~283_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(228));

-- Location: LCCOMB_X50_Y52_N2
\mess~297\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~297_combout\ = (\trigger2~input_o\ & ((!mess(214)))) # (!\trigger2~input_o\ & (mess(228)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(228),
	datad => mess(214),
	combout => \mess~297_combout\);

-- Location: FF_X50_Y52_N3
\mess[221]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~297_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(221));

-- Location: LCCOMB_X50_Y52_N28
\mess~311\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~311_combout\ = (\trigger2~input_o\ & (!mess(207))) # (!\trigger2~input_o\ & ((!mess(221))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(207),
	datad => mess(221),
	combout => \mess~311_combout\);

-- Location: FF_X50_Y52_N29
\mess[214]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~311_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(214));

-- Location: LCCOMB_X50_Y52_N30
\mess~325\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~325_combout\ = (\trigger2~input_o\ & (mess(200))) # (!\trigger2~input_o\ & ((!mess(214))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(200),
	datad => mess(214),
	combout => \mess~325_combout\);

-- Location: FF_X50_Y52_N31
\mess[207]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~325_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(207));

-- Location: LCCOMB_X50_Y52_N8
\mess~339\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~339_combout\ = (\trigger2~input_o\ & ((!mess(193)))) # (!\trigger2~input_o\ & (mess(207)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(207),
	datad => mess(193),
	combout => \mess~339_combout\);

-- Location: FF_X50_Y52_N9
\mess[200]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~339_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(200));

-- Location: LCCOMB_X50_Y52_N6
\mess~346\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~346_combout\ = (\trigger2~input_o\ & ((mess(186)))) # (!\trigger2~input_o\ & (!mess(200)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(200),
	datad => mess(186),
	combout => \mess~346_combout\);

-- Location: FF_X50_Y52_N7
\mess[193]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~346_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(193));

-- Location: LCCOMB_X50_Y49_N2
\mess~332\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~332_combout\ = (\trigger2~input_o\ & (!mess(179))) # (!\trigger2~input_o\ & ((mess(193))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(179),
	datac => \trigger2~input_o\,
	datad => mess(193),
	combout => \mess~332_combout\);

-- Location: FF_X50_Y49_N3
\mess[186]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~332_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(186));

-- Location: LCCOMB_X50_Y49_N6
\mess~318\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~318_combout\ = (\trigger2~input_o\ & (mess(172))) # (!\trigger2~input_o\ & ((!mess(186))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(172),
	datac => \trigger2~input_o\,
	datad => mess(186),
	combout => \mess~318_combout\);

-- Location: FF_X50_Y49_N7
\mess[179]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~318_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(179));

-- Location: LCCOMB_X50_Y49_N26
\mess~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~304_combout\ = (\trigger2~input_o\ & ((mess(165)))) # (!\trigger2~input_o\ & (mess(179)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(179),
	datac => \trigger2~input_o\,
	datad => mess(165),
	combout => \mess~304_combout\);

-- Location: FF_X50_Y49_N27
\mess[172]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~304_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(172));

-- Location: LCCOMB_X50_Y49_N10
\mess~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~290_combout\ = (\trigger2~input_o\ & ((mess(158)))) # (!\trigger2~input_o\ & (mess(172)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(172),
	datac => \trigger2~input_o\,
	datad => mess(158),
	combout => \mess~290_combout\);

-- Location: FF_X50_Y49_N11
\mess[165]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~290_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(165));

-- Location: LCCOMB_X50_Y49_N28
\mess~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~276_combout\ = (\trigger2~input_o\ & ((mess(151)))) # (!\trigger2~input_o\ & (mess(165)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(165),
	datac => \trigger2~input_o\,
	datad => mess(151),
	combout => \mess~276_combout\);

-- Location: FF_X50_Y49_N29
\mess[158]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~276_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(158));

-- Location: LCCOMB_X50_Y49_N18
\mess~262\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~262_combout\ = (\trigger2~input_o\ & (mess(144))) # (!\trigger2~input_o\ & ((mess(158))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(144),
	datac => \trigger2~input_o\,
	datad => mess(158),
	combout => \mess~262_combout\);

-- Location: FF_X50_Y49_N19
\mess[151]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~262_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(151));

-- Location: LCCOMB_X50_Y49_N0
\mess~248\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~248_combout\ = (\trigger2~input_o\ & (mess(137))) # (!\trigger2~input_o\ & ((mess(151))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(137),
	datac => \trigger2~input_o\,
	datad => mess(151),
	combout => \mess~248_combout\);

-- Location: FF_X50_Y49_N1
\mess[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~248_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(144));

-- Location: LCCOMB_X50_Y49_N30
\mess~234\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~234_combout\ = (\trigger2~input_o\ & (!mess(130))) # (!\trigger2~input_o\ & ((mess(144))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(130),
	datac => \trigger2~input_o\,
	datad => mess(144),
	combout => \mess~234_combout\);

-- Location: FF_X50_Y49_N31
\mess[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~234_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(137));

-- Location: LCCOMB_X50_Y49_N20
\mess~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~220_combout\ = (\trigger2~input_o\ & (!mess(123))) # (!\trigger2~input_o\ & ((!mess(137))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(123),
	datad => mess(137),
	combout => \mess~220_combout\);

-- Location: FF_X50_Y49_N21
\mess[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~220_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(130));

-- Location: LCCOMB_X50_Y49_N22
\mess~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~206_combout\ = (\trigger2~input_o\ & ((mess(116)))) # (!\trigger2~input_o\ & (!mess(130)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(130),
	datac => \trigger2~input_o\,
	datad => mess(116),
	combout => \mess~206_combout\);

-- Location: FF_X50_Y49_N23
\mess[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~206_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(123));

-- Location: LCCOMB_X50_Y49_N12
\mess~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~192_combout\ = (\trigger2~input_o\ & ((mess(109)))) # (!\trigger2~input_o\ & (mess(123)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(123),
	datab => mess(109),
	datac => \trigger2~input_o\,
	combout => \mess~192_combout\);

-- Location: FF_X50_Y49_N13
\mess[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~192_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(116));

-- Location: LCCOMB_X50_Y49_N14
\mess~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~178_combout\ = (\trigger2~input_o\ & (mess(102))) # (!\trigger2~input_o\ & ((mess(116))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(102),
	datac => \trigger2~input_o\,
	datad => mess(116),
	combout => \mess~178_combout\);

-- Location: FF_X50_Y49_N15
\mess[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~178_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(109));

-- Location: LCCOMB_X50_Y49_N8
\mess~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~164_combout\ = (\trigger2~input_o\ & ((mess(95)))) # (!\trigger2~input_o\ & (mess(109)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(109),
	datac => mess(95),
	combout => \mess~164_combout\);

-- Location: FF_X50_Y49_N9
\mess[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~164_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(102));

-- Location: LCCOMB_X51_Y51_N6
\mess~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~150_combout\ = (\trigger2~input_o\ & (mess(88))) # (!\trigger2~input_o\ & ((mess(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(88),
	datad => mess(102),
	combout => \mess~150_combout\);

-- Location: FF_X51_Y51_N7
\mess[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~150_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(95));

-- Location: LCCOMB_X55_Y51_N12
\mess~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~136_combout\ = (\trigger2~input_o\ & ((mess(81)))) # (!\trigger2~input_o\ & (mess(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(95),
	datad => mess(81),
	combout => \mess~136_combout\);

-- Location: FF_X55_Y51_N13
\mess[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~136_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(88));

-- Location: LCCOMB_X55_Y51_N2
\mess~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~122_combout\ = (\trigger2~input_o\ & ((!mess(74)))) # (!\trigger2~input_o\ & (mess(88)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(88),
	datac => \trigger2~input_o\,
	datad => mess(74),
	combout => \mess~122_combout\);

-- Location: FF_X55_Y51_N3
\mess[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~122_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(81));

-- Location: LCCOMB_X55_Y51_N20
\mess~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~108_combout\ = (\trigger2~input_o\ & ((!mess(67)))) # (!\trigger2~input_o\ & (!mess(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(81),
	datac => \trigger2~input_o\,
	datad => mess(67),
	combout => \mess~108_combout\);

-- Location: FF_X55_Y51_N21
\mess[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~108_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(74));

-- Location: LCCOMB_X55_Y51_N18
\mess~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~94_combout\ = (\trigger2~input_o\ & (mess(60))) # (!\trigger2~input_o\ & ((!mess(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(60),
	datac => \trigger2~input_o\,
	datad => mess(74),
	combout => \mess~94_combout\);

-- Location: FF_X55_Y51_N19
\mess[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~94_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(67));

-- Location: LCCOMB_X55_Y51_N8
\mess~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~80_combout\ = (\trigger2~input_o\ & ((mess(53)))) # (!\trigger2~input_o\ & (mess(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(67),
	datac => \trigger2~input_o\,
	datad => mess(53),
	combout => \mess~80_combout\);

-- Location: FF_X55_Y51_N9
\mess[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~80_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(60));

-- Location: LCCOMB_X55_Y53_N8
\mess~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~66_combout\ = (\trigger2~input_o\ & ((!mess(46)))) # (!\trigger2~input_o\ & (mess(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(60),
	datad => mess(46),
	combout => \mess~66_combout\);

-- Location: FF_X55_Y53_N9
\mess[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~66_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(53));

-- Location: LCCOMB_X55_Y51_N30
\mess~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~52_combout\ = (\trigger2~input_o\ & (!mess(39))) # (!\trigger2~input_o\ & ((!mess(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(39),
	datac => \trigger2~input_o\,
	datad => mess(53),
	combout => \mess~52_combout\);

-- Location: FF_X55_Y51_N31
\mess[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~52_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(46));

-- Location: LCCOMB_X55_Y51_N28
\mess~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~38_combout\ = (\trigger2~input_o\ & ((mess(32)))) # (!\trigger2~input_o\ & (!mess(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(46),
	datab => mess(32),
	datac => \trigger2~input_o\,
	combout => \mess~38_combout\);

-- Location: FF_X55_Y51_N29
\mess[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~38_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(39));

-- Location: LCCOMB_X55_Y51_N14
\mess~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~31_combout\ = (\trigger2~input_o\ & (mess(25))) # (!\trigger2~input_o\ & ((mess(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(25),
	datac => \trigger2~input_o\,
	datad => mess(39),
	combout => \mess~31_combout\);

-- Location: FF_X55_Y51_N15
\mess[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~31_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(32));

-- Location: LCCOMB_X55_Y51_N0
\mess~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~24_combout\ = (\trigger2~input_o\ & (mess(18))) # (!\trigger2~input_o\ & ((mess(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(18),
	datab => \trigger2~input_o\,
	datac => mess(32),
	combout => \mess~24_combout\);

-- Location: FF_X55_Y51_N1
\mess[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~24_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(25));

-- Location: LCCOMB_X55_Y51_N26
\mess~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~17_combout\ = (\trigger2~input_o\ & ((mess(11)))) # (!\trigger2~input_o\ & (mess(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(25),
	datac => \trigger2~input_o\,
	datad => mess(11),
	combout => \mess~17_combout\);

-- Location: FF_X55_Y51_N27
\mess[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~17_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(18));

-- Location: LCCOMB_X52_Y53_N2
\mess~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~10_combout\ = (\trigger2~input_o\ & (mess(4))) # (!\trigger2~input_o\ & ((mess(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(4),
	datad => mess(18),
	combout => \mess~10_combout\);

-- Location: FF_X52_Y53_N3
\mess[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~10_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(11));

-- Location: LCCOMB_X52_Y53_N16
\mess~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~3_combout\ = (\trigger2~input_o\ & ((!mess(347)))) # (!\trigger2~input_o\ & (mess(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(11),
	datac => \trigger2~input_o\,
	datad => mess(347),
	combout => \mess~3_combout\);

-- Location: FF_X52_Y53_N17
\mess[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~3_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(4));

-- Location: LCCOMB_X54_Y51_N0
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

-- Location: FF_X54_Y51_N1
\HEX5[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[4]~2_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[4]~reg0_q\);

-- Location: LCCOMB_X52_Y50_N20
\mess~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~46_combout\ = (\trigger2~input_o\ & ((mess(339)))) # (!\trigger2~input_o\ & (mess(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(3),
	datab => \trigger2~input_o\,
	datad => mess(339),
	combout => \mess~46_combout\);

-- Location: FF_X52_Y50_N21
\mess[346]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~46_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(346));

-- Location: LCCOMB_X52_Y50_N16
\mess~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~60_combout\ = (\trigger2~input_o\ & ((!mess(332)))) # (!\trigger2~input_o\ & (mess(346)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(346),
	datad => mess(332),
	combout => \mess~60_combout\);

-- Location: FF_X52_Y50_N17
\mess[339]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~60_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(339));

-- Location: LCCOMB_X52_Y50_N18
\mess~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~74_combout\ = (\trigger2~input_o\ & (mess(325))) # (!\trigger2~input_o\ & ((!mess(339))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(325),
	datad => mess(339),
	combout => \mess~74_combout\);

-- Location: FF_X52_Y50_N19
\mess[332]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~74_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(332));

-- Location: LCCOMB_X52_Y50_N26
\mess~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~88_combout\ = (\trigger2~input_o\ & (mess(318))) # (!\trigger2~input_o\ & ((mess(332))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(318),
	datad => mess(332),
	combout => \mess~88_combout\);

-- Location: FF_X52_Y50_N27
\mess[325]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~88_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(325));

-- Location: LCCOMB_X52_Y50_N2
\mess~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~102_combout\ = (\trigger2~input_o\ & ((!mess(311)))) # (!\trigger2~input_o\ & (mess(325)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(325),
	datad => mess(311),
	combout => \mess~102_combout\);

-- Location: FF_X52_Y50_N3
\mess[318]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~102_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(318));

-- Location: LCCOMB_X52_Y50_N10
\mess~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~116_combout\ = (\trigger2~input_o\ & (mess(304))) # (!\trigger2~input_o\ & ((!mess(318))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(304),
	datad => mess(318),
	combout => \mess~116_combout\);

-- Location: FF_X52_Y50_N11
\mess[311]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~116_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(311));

-- Location: LCCOMB_X52_Y50_N24
\mess~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~130_combout\ = (\trigger2~input_o\ & ((!mess(297)))) # (!\trigger2~input_o\ & (mess(311)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(311),
	datab => \trigger2~input_o\,
	datad => mess(297),
	combout => \mess~130_combout\);

-- Location: FF_X52_Y50_N25
\mess[304]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~130_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(304));

-- Location: LCCOMB_X52_Y50_N12
\mess~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~144_combout\ = (\trigger2~input_o\ & (!mess(290))) # (!\trigger2~input_o\ & ((!mess(304))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(290),
	datad => mess(304),
	combout => \mess~144_combout\);

-- Location: FF_X52_Y50_N13
\mess[297]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~144_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(297));

-- Location: LCCOMB_X52_Y50_N0
\mess~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~158_combout\ = (\trigger2~input_o\ & ((mess(283)))) # (!\trigger2~input_o\ & (!mess(297)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(297),
	datab => \trigger2~input_o\,
	datad => mess(283),
	combout => \mess~158_combout\);

-- Location: FF_X52_Y50_N1
\mess[290]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~158_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(290));

-- Location: LCCOMB_X51_Y53_N4
\mess~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~172_combout\ = (\trigger2~input_o\ & (mess(276))) # (!\trigger2~input_o\ & ((mess(290))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(276),
	datac => \trigger2~input_o\,
	datad => mess(290),
	combout => \mess~172_combout\);

-- Location: FF_X51_Y53_N5
\mess[283]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~172_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(283));

-- Location: LCCOMB_X51_Y53_N2
\mess~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~186_combout\ = (\trigger2~input_o\ & ((mess(269)))) # (!\trigger2~input_o\ & (mess(283)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(283),
	datad => mess(269),
	combout => \mess~186_combout\);

-- Location: FF_X51_Y53_N3
\mess[276]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~186_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(276));

-- Location: LCCOMB_X51_Y53_N20
\mess~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~200_combout\ = (\trigger2~input_o\ & (!mess(262))) # (!\trigger2~input_o\ & ((mess(276))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(262),
	datad => mess(276),
	combout => \mess~200_combout\);

-- Location: FF_X51_Y53_N21
\mess[269]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~200_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(269));

-- Location: LCCOMB_X51_Y53_N22
\mess~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~214_combout\ = (\trigger2~input_o\ & ((!mess(255)))) # (!\trigger2~input_o\ & (!mess(269)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(269),
	datac => \trigger2~input_o\,
	datad => mess(255),
	combout => \mess~214_combout\);

-- Location: FF_X51_Y53_N23
\mess[262]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~214_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(262));

-- Location: LCCOMB_X51_Y51_N16
\mess~228\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~228_combout\ = (\trigger2~input_o\ & (mess(248))) # (!\trigger2~input_o\ & ((!mess(262))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(248),
	datad => mess(262),
	combout => \mess~228_combout\);

-- Location: FF_X51_Y51_N17
\mess[255]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~228_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(255));

-- Location: LCCOMB_X51_Y51_N14
\mess~242\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~242_combout\ = (\trigger2~input_o\ & ((!mess(241)))) # (!\trigger2~input_o\ & (mess(255)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(255),
	datad => mess(241),
	combout => \mess~242_combout\);

-- Location: FF_X51_Y51_N15
\mess[248]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~242_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(248));

-- Location: LCCOMB_X51_Y51_N12
\mess~256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~256_combout\ = (\trigger2~input_o\ & ((mess(234)))) # (!\trigger2~input_o\ & (!mess(248)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(248),
	datad => mess(234),
	combout => \mess~256_combout\);

-- Location: FF_X51_Y51_N13
\mess[241]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~256_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(241));

-- Location: LCCOMB_X51_Y51_N2
\mess~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~270_combout\ = (\trigger2~input_o\ & (mess(227))) # (!\trigger2~input_o\ & ((mess(241))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(227),
	datad => mess(241),
	combout => \mess~270_combout\);

-- Location: FF_X51_Y51_N3
\mess[234]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~270_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(234));

-- Location: LCCOMB_X51_Y51_N30
\mess~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~284_combout\ = (\trigger2~input_o\ & ((mess(220)))) # (!\trigger2~input_o\ & (mess(234)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(234),
	datad => mess(220),
	combout => \mess~284_combout\);

-- Location: FF_X51_Y51_N31
\mess[227]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~284_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(227));

-- Location: LCCOMB_X51_Y51_N18
\mess~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~298_combout\ = (\trigger2~input_o\ & ((!mess(213)))) # (!\trigger2~input_o\ & (mess(227)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(227),
	datad => mess(213),
	combout => \mess~298_combout\);

-- Location: FF_X51_Y51_N19
\mess[220]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~298_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(220));

-- Location: LCCOMB_X51_Y51_N20
\mess~312\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~312_combout\ = (\trigger2~input_o\ & (!mess(206))) # (!\trigger2~input_o\ & ((!mess(220))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(206),
	datad => mess(220),
	combout => \mess~312_combout\);

-- Location: FF_X51_Y51_N21
\mess[213]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~312_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(213));

-- Location: LCCOMB_X51_Y51_N28
\mess~326\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~326_combout\ = (\trigger2~input_o\ & (mess(199))) # (!\trigger2~input_o\ & ((!mess(213))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(199),
	datad => mess(213),
	combout => \mess~326_combout\);

-- Location: FF_X51_Y51_N29
\mess[206]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~326_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(206));

-- Location: LCCOMB_X51_Y51_N0
\mess~340\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~340_combout\ = (\trigger2~input_o\ & ((mess(192)))) # (!\trigger2~input_o\ & (mess(206)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(206),
	datad => mess(192),
	combout => \mess~340_combout\);

-- Location: FF_X51_Y51_N1
\mess[199]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~340_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(199));

-- Location: LCCOMB_X51_Y51_N10
\mess~347\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~347_combout\ = (\trigger2~input_o\ & (!mess(185))) # (!\trigger2~input_o\ & ((mess(199))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(185),
	datad => mess(199),
	combout => \mess~347_combout\);

-- Location: FF_X51_Y51_N11
\mess[192]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~347_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(192));

-- Location: LCCOMB_X51_Y51_N22
\mess~333\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~333_combout\ = (\trigger2~input_o\ & (!mess(178))) # (!\trigger2~input_o\ & ((!mess(192))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(178),
	datad => mess(192),
	combout => \mess~333_combout\);

-- Location: FF_X51_Y51_N23
\mess[185]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~333_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(185));

-- Location: LCCOMB_X51_Y51_N26
\mess~319\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~319_combout\ = (\trigger2~input_o\ & ((!mess(171)))) # (!\trigger2~input_o\ & (!mess(185)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(185),
	datad => mess(171),
	combout => \mess~319_combout\);

-- Location: FF_X51_Y51_N27
\mess[178]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~319_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(178));

-- Location: LCCOMB_X50_Y51_N14
\mess~305\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~305_combout\ = (\trigger2~input_o\ & (mess(164))) # (!\trigger2~input_o\ & ((!mess(178))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(164),
	datac => \trigger2~input_o\,
	datad => mess(178),
	combout => \mess~305_combout\);

-- Location: FF_X50_Y51_N15
\mess[171]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~305_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(171));

-- Location: LCCOMB_X51_Y51_N4
\mess~291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~291_combout\ = (\trigger2~input_o\ & (mess(157))) # (!\trigger2~input_o\ & ((mess(171))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(157),
	datad => mess(171),
	combout => \mess~291_combout\);

-- Location: FF_X51_Y51_N5
\mess[164]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~291_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(164));

-- Location: LCCOMB_X51_Y51_N8
\mess~277\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~277_combout\ = (\trigger2~input_o\ & ((!mess(150)))) # (!\trigger2~input_o\ & (mess(164)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(164),
	datad => mess(150),
	combout => \mess~277_combout\);

-- Location: FF_X51_Y51_N9
\mess[157]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~277_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(157));

-- Location: LCCOMB_X50_Y50_N22
\mess~263\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~263_combout\ = (\trigger2~input_o\ & (!mess(143))) # (!\trigger2~input_o\ & ((!mess(157))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(143),
	datac => \trigger2~input_o\,
	datad => mess(157),
	combout => \mess~263_combout\);

-- Location: FF_X50_Y50_N23
\mess[150]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~263_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(150));

-- Location: LCCOMB_X50_Y50_N0
\mess~249\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~249_combout\ = (\trigger2~input_o\ & ((!mess(136)))) # (!\trigger2~input_o\ & (!mess(150)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(150),
	datad => mess(136),
	combout => \mess~249_combout\);

-- Location: FF_X50_Y50_N1
\mess[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~249_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(143));

-- Location: LCCOMB_X50_Y50_N18
\mess~235\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~235_combout\ = (\trigger2~input_o\ & (!mess(129))) # (!\trigger2~input_o\ & ((!mess(143))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(129),
	datad => mess(143),
	combout => \mess~235_combout\);

-- Location: FF_X50_Y50_N19
\mess[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~235_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(136));

-- Location: LCCOMB_X50_Y50_N4
\mess~221\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~221_combout\ = (\trigger2~input_o\ & (mess(122))) # (!\trigger2~input_o\ & ((!mess(136))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(122),
	datad => mess(136),
	combout => \mess~221_combout\);

-- Location: FF_X50_Y50_N5
\mess[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~221_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(129));

-- Location: LCCOMB_X50_Y50_N14
\mess~207\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~207_combout\ = (\trigger2~input_o\ & ((mess(115)))) # (!\trigger2~input_o\ & (mess(129)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(129),
	datad => mess(115),
	combout => \mess~207_combout\);

-- Location: FF_X50_Y50_N15
\mess[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~207_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(122));

-- Location: LCCOMB_X51_Y50_N2
\mess~193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~193_combout\ = (\trigger2~input_o\ & ((!mess(108)))) # (!\trigger2~input_o\ & (mess(122)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(122),
	datac => \trigger2~input_o\,
	datad => mess(108),
	combout => \mess~193_combout\);

-- Location: FF_X51_Y50_N3
\mess[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~193_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(115));

-- Location: LCCOMB_X50_Y50_N12
\mess~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~179_combout\ = (\trigger2~input_o\ & (!mess(101))) # (!\trigger2~input_o\ & ((!mess(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(101),
	datac => \trigger2~input_o\,
	datad => mess(115),
	combout => \mess~179_combout\);

-- Location: FF_X50_Y50_N13
\mess[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~179_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(108));

-- Location: LCCOMB_X50_Y50_N2
\mess~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~165_combout\ = (\trigger2~input_o\ & (mess(94))) # (!\trigger2~input_o\ & ((!mess(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(94),
	datac => \trigger2~input_o\,
	datad => mess(108),
	combout => \mess~165_combout\);

-- Location: FF_X50_Y50_N3
\mess[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~165_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(101));

-- Location: LCCOMB_X50_Y50_N8
\mess~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~151_combout\ = (\trigger2~input_o\ & (!mess(87))) # (!\trigger2~input_o\ & ((mess(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(87),
	datad => mess(101),
	combout => \mess~151_combout\);

-- Location: FF_X50_Y50_N9
\mess[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~151_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(94));

-- Location: LCCOMB_X50_Y50_N30
\mess~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~137_combout\ = (\trigger2~input_o\ & ((mess(80)))) # (!\trigger2~input_o\ & (!mess(94)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(94),
	datac => \trigger2~input_o\,
	datad => mess(80),
	combout => \mess~137_combout\);

-- Location: FF_X50_Y50_N31
\mess[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~137_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(87));

-- Location: LCCOMB_X50_Y50_N28
\mess~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~123_combout\ = (\trigger2~input_o\ & ((mess(73)))) # (!\trigger2~input_o\ & (mess(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(87),
	datad => mess(73),
	combout => \mess~123_combout\);

-- Location: FF_X50_Y50_N29
\mess[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~123_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(80));

-- Location: LCCOMB_X50_Y50_N6
\mess~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~109_combout\ = (\trigger2~input_o\ & (!mess(66))) # (!\trigger2~input_o\ & ((mess(80))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(66),
	datac => \trigger2~input_o\,
	datad => mess(80),
	combout => \mess~109_combout\);

-- Location: FF_X50_Y50_N7
\mess[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~109_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(73));

-- Location: LCCOMB_X50_Y50_N24
\mess~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~95_combout\ = (\trigger2~input_o\ & (mess(59))) # (!\trigger2~input_o\ & ((!mess(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(59),
	datac => \trigger2~input_o\,
	datad => mess(73),
	combout => \mess~95_combout\);

-- Location: FF_X50_Y50_N25
\mess[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~95_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(66));

-- Location: LCCOMB_X50_Y50_N10
\mess~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~81_combout\ = (\trigger2~input_o\ & ((mess(52)))) # (!\trigger2~input_o\ & (mess(66)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(66),
	datac => \trigger2~input_o\,
	datad => mess(52),
	combout => \mess~81_combout\);

-- Location: FF_X50_Y50_N11
\mess[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~81_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(59));

-- Location: LCCOMB_X50_Y50_N20
\mess~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~67_combout\ = (\trigger2~input_o\ & (mess(45))) # (!\trigger2~input_o\ & ((mess(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(45),
	datad => mess(59),
	combout => \mess~67_combout\);

-- Location: FF_X50_Y50_N21
\mess[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~67_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(52));

-- Location: LCCOMB_X50_Y50_N26
\mess~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~53_combout\ = (\trigger2~input_o\ & ((!mess(38)))) # (!\trigger2~input_o\ & (mess(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(52),
	datac => \trigger2~input_o\,
	datad => mess(38),
	combout => \mess~53_combout\);

-- Location: FF_X50_Y50_N27
\mess[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~53_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(45));

-- Location: LCCOMB_X50_Y50_N16
\mess~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~39_combout\ = (\trigger2~input_o\ & ((!mess(31)))) # (!\trigger2~input_o\ & (!mess(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(45),
	datad => mess(31),
	combout => \mess~39_combout\);

-- Location: FF_X50_Y50_N17
\mess[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~39_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(38));

-- Location: LCCOMB_X51_Y50_N28
\mess~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~32_combout\ = (\trigger2~input_o\ & ((mess(24)))) # (!\trigger2~input_o\ & (!mess(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(38),
	datab => mess(24),
	datac => \trigger2~input_o\,
	combout => \mess~32_combout\);

-- Location: FF_X51_Y50_N29
\mess[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~32_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(31));

-- Location: LCCOMB_X51_Y50_N24
\mess~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~25_combout\ = (\trigger2~input_o\ & ((!mess(17)))) # (!\trigger2~input_o\ & (mess(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(31),
	datac => \trigger2~input_o\,
	datad => mess(17),
	combout => \mess~25_combout\);

-- Location: FF_X51_Y50_N25
\mess[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~25_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(24));

-- Location: LCCOMB_X52_Y50_N28
\mess~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~18_combout\ = (\trigger2~input_o\ & (!mess(10))) # (!\trigger2~input_o\ & ((!mess(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(10),
	datad => mess(24),
	combout => \mess~18_combout\);

-- Location: FF_X52_Y50_N29
\mess[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~18_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(17));

-- Location: LCCOMB_X52_Y50_N14
\mess~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~11_combout\ = (\trigger2~input_o\ & (mess(3))) # (!\trigger2~input_o\ & ((!mess(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(3),
	datab => \trigger2~input_o\,
	datad => mess(17),
	combout => \mess~11_combout\);

-- Location: FF_X52_Y50_N15
\mess[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~11_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(10));

-- Location: LCCOMB_X52_Y50_N6
\mess~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~4_combout\ = (\trigger2~input_o\ & ((mess(346)))) # (!\trigger2~input_o\ & (mess(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(10),
	datad => mess(346),
	combout => \mess~4_combout\);

-- Location: FF_X52_Y50_N7
\mess[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~4_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(3));

-- Location: LCCOMB_X52_Y50_N8
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

-- Location: FF_X52_Y50_N9
\HEX5[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[3]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[3]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N0
\mess~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~12_combout\ = (\trigger2~input_o\ & ((mess(2)))) # (!\trigger2~input_o\ & (mess(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(16),
	datac => \trigger2~input_o\,
	datad => mess(2),
	combout => \mess~12_combout\);

-- Location: FF_X51_Y50_N1
\mess[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~12_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(9));

-- Location: LCCOMB_X51_Y50_N18
\mess~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~19_combout\ = (\trigger2~input_o\ & (mess(9))) # (!\trigger2~input_o\ & ((mess(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(9),
	datac => \trigger2~input_o\,
	datad => mess(23),
	combout => \mess~19_combout\);

-- Location: FF_X51_Y50_N19
\mess[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~19_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(16));

-- Location: LCCOMB_X51_Y50_N10
\mess~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~26_combout\ = (\trigger2~input_o\ & ((mess(16)))) # (!\trigger2~input_o\ & (mess(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(30),
	datac => \trigger2~input_o\,
	datad => mess(16),
	combout => \mess~26_combout\);

-- Location: FF_X51_Y50_N11
\mess[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~26_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(23));

-- Location: LCCOMB_X51_Y50_N14
\mess~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~33_combout\ = (\trigger2~input_o\ & ((mess(23)))) # (!\trigger2~input_o\ & (mess(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(37),
	datac => \trigger2~input_o\,
	datad => mess(23),
	combout => \mess~33_combout\);

-- Location: FF_X51_Y50_N15
\mess[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~33_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(30));

-- Location: LCCOMB_X51_Y50_N8
\mess~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~40_combout\ = (\trigger2~input_o\ & (mess(30))) # (!\trigger2~input_o\ & ((mess(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(30),
	datac => \trigger2~input_o\,
	datad => mess(44),
	combout => \mess~40_combout\);

-- Location: FF_X51_Y50_N9
\mess[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~40_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(37));

-- Location: LCCOMB_X51_Y49_N0
\mess~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~54_combout\ = (\trigger2~input_o\ & ((mess(37)))) # (!\trigger2~input_o\ & (!mess(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(51),
	datad => mess(37),
	combout => \mess~54_combout\);

-- Location: FF_X51_Y49_N1
\mess[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~54_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(44));

-- Location: LCCOMB_X51_Y50_N30
\mess~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~68_combout\ = (\trigger2~input_o\ & ((!mess(44)))) # (!\trigger2~input_o\ & (mess(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(58),
	datac => \trigger2~input_o\,
	datad => mess(44),
	combout => \mess~68_combout\);

-- Location: FF_X51_Y50_N31
\mess[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~68_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(51));

-- Location: LCCOMB_X51_Y50_N20
\mess~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~82_combout\ = (\trigger2~input_o\ & (mess(51))) # (!\trigger2~input_o\ & ((!mess(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(51),
	datac => \trigger2~input_o\,
	datad => mess(65),
	combout => \mess~82_combout\);

-- Location: FF_X51_Y50_N21
\mess[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~82_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(58));

-- Location: LCCOMB_X52_Y49_N0
\mess~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~96_combout\ = (\trigger2~input_o\ & ((!mess(58)))) # (!\trigger2~input_o\ & (!mess(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(72),
	datac => \trigger2~input_o\,
	datad => mess(58),
	combout => \mess~96_combout\);

-- Location: FF_X52_Y49_N1
\mess[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~96_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(65));

-- Location: LCCOMB_X52_Y49_N22
\mess~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~110_combout\ = (\trigger2~input_o\ & ((!mess(65)))) # (!\trigger2~input_o\ & (!mess(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(79),
	datac => \trigger2~input_o\,
	datad => mess(65),
	combout => \mess~110_combout\);

-- Location: FF_X52_Y49_N23
\mess[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~110_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(72));

-- Location: LCCOMB_X52_Y49_N4
\mess~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~124_combout\ = (\trigger2~input_o\ & (!mess(72))) # (!\trigger2~input_o\ & ((mess(86))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(72),
	datac => \trigger2~input_o\,
	datad => mess(86),
	combout => \mess~124_combout\);

-- Location: FF_X52_Y49_N5
\mess[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~124_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(79));

-- Location: LCCOMB_X55_Y49_N16
\mess~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~138_combout\ = (\trigger2~input_o\ & (mess(79))) # (!\trigger2~input_o\ & ((mess(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(79),
	datad => mess(93),
	combout => \mess~138_combout\);

-- Location: FF_X55_Y49_N17
\mess[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~138_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(86));

-- Location: LCCOMB_X55_Y52_N20
\mess~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~152_combout\ = (\trigger2~input_o\ & ((mess(86)))) # (!\trigger2~input_o\ & (mess(100)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(100),
	datac => \trigger2~input_o\,
	datad => mess(86),
	combout => \mess~152_combout\);

-- Location: FF_X55_Y52_N21
\mess[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~152_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(93));

-- Location: LCCOMB_X55_Y52_N26
\mess~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~166_combout\ = (\trigger2~input_o\ & ((mess(93)))) # (!\trigger2~input_o\ & (mess(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(107),
	datac => \trigger2~input_o\,
	datad => mess(93),
	combout => \mess~166_combout\);

-- Location: FF_X55_Y52_N27
\mess[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~166_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(100));

-- Location: LCCOMB_X55_Y52_N8
\mess~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~180_combout\ = (\trigger2~input_o\ & (mess(100))) # (!\trigger2~input_o\ & ((!mess(114))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(100),
	datac => \trigger2~input_o\,
	datad => mess(114),
	combout => \mess~180_combout\);

-- Location: FF_X55_Y52_N9
\mess[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~180_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(107));

-- Location: LCCOMB_X55_Y52_N18
\mess~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~194_combout\ = (\trigger2~input_o\ & (!mess(107))) # (!\trigger2~input_o\ & ((mess(121))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(107),
	datac => \trigger2~input_o\,
	datad => mess(121),
	combout => \mess~194_combout\);

-- Location: FF_X55_Y52_N19
\mess[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~194_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(114));

-- Location: LCCOMB_X55_Y52_N0
\mess~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~208_combout\ = (\trigger2~input_o\ & ((mess(114)))) # (!\trigger2~input_o\ & (!mess(128)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(128),
	datac => \trigger2~input_o\,
	datad => mess(114),
	combout => \mess~208_combout\);

-- Location: FF_X55_Y52_N1
\mess[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~208_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(121));

-- Location: LCCOMB_X55_Y52_N6
\mess~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~222_combout\ = (\trigger2~input_o\ & ((!mess(121)))) # (!\trigger2~input_o\ & (mess(135)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(135),
	datac => \trigger2~input_o\,
	datad => mess(121),
	combout => \mess~222_combout\);

-- Location: FF_X55_Y52_N7
\mess[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~222_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(128));

-- Location: LCCOMB_X55_Y52_N16
\mess~236\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~236_combout\ = (\trigger2~input_o\ & ((mess(128)))) # (!\trigger2~input_o\ & (!mess(142)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(142),
	datac => \trigger2~input_o\,
	datad => mess(128),
	combout => \mess~236_combout\);

-- Location: FF_X55_Y52_N17
\mess[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~236_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(135));

-- Location: LCCOMB_X55_Y52_N22
\mess~250\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~250_combout\ = (\trigger2~input_o\ & ((!mess(135)))) # (!\trigger2~input_o\ & (!mess(149)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(149),
	datac => \trigger2~input_o\,
	datad => mess(135),
	combout => \mess~250_combout\);

-- Location: FF_X55_Y52_N23
\mess[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~250_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(142));

-- Location: LCCOMB_X55_Y52_N4
\mess~264\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~264_combout\ = (\trigger2~input_o\ & (!mess(142))) # (!\trigger2~input_o\ & ((mess(156))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(142),
	datac => \trigger2~input_o\,
	datad => mess(156),
	combout => \mess~264_combout\);

-- Location: FF_X55_Y52_N5
\mess[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~264_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(149));

-- Location: LCCOMB_X55_Y52_N2
\mess~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~278_combout\ = (\trigger2~input_o\ & (mess(149))) # (!\trigger2~input_o\ & ((mess(163))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(149),
	datac => \trigger2~input_o\,
	datad => mess(163),
	combout => \mess~278_combout\);

-- Location: FF_X55_Y52_N3
\mess[156]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~278_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(156));

-- Location: LCCOMB_X55_Y52_N24
\mess~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~292_combout\ = (\trigger2~input_o\ & ((mess(156)))) # (!\trigger2~input_o\ & (!mess(170)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(170),
	datac => \trigger2~input_o\,
	datad => mess(156),
	combout => \mess~292_combout\);

-- Location: FF_X55_Y52_N25
\mess[163]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~292_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(163));

-- Location: LCCOMB_X55_Y52_N30
\mess~306\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~306_combout\ = (\trigger2~input_o\ & ((!mess(163)))) # (!\trigger2~input_o\ & (!mess(177)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(177),
	datac => \trigger2~input_o\,
	datad => mess(163),
	combout => \mess~306_combout\);

-- Location: FF_X55_Y52_N31
\mess[170]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~306_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(170));

-- Location: LCCOMB_X55_Y52_N12
\mess~320\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~320_combout\ = (\trigger2~input_o\ & (!mess(170))) # (!\trigger2~input_o\ & ((mess(184))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(170),
	datac => \trigger2~input_o\,
	datad => mess(184),
	combout => \mess~320_combout\);

-- Location: FF_X55_Y52_N13
\mess[177]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~320_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(177));

-- Location: LCCOMB_X55_Y52_N10
\mess~334\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~334_combout\ = (\trigger2~input_o\ & (mess(177))) # (!\trigger2~input_o\ & ((!mess(191))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(177),
	datac => \trigger2~input_o\,
	datad => mess(191),
	combout => \mess~334_combout\);

-- Location: FF_X55_Y52_N11
\mess[184]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~334_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(184));

-- Location: LCCOMB_X55_Y52_N28
\mess~348\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~348_combout\ = (\trigger2~input_o\ & ((!mess(184)))) # (!\trigger2~input_o\ & (!mess(198)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(198),
	datad => mess(184),
	combout => \mess~348_combout\);

-- Location: FF_X55_Y52_N29
\mess[191]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~348_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(191));

-- Location: LCCOMB_X54_Y53_N22
\mess~341\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~341_combout\ = (\trigger2~input_o\ & ((!mess(191)))) # (!\trigger2~input_o\ & (!mess(205)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(205),
	datac => \trigger2~input_o\,
	datad => mess(191),
	combout => \mess~341_combout\);

-- Location: FF_X54_Y53_N23
\mess[198]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~341_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(198));

-- Location: LCCOMB_X54_Y53_N16
\mess~327\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~327_combout\ = (\trigger2~input_o\ & (!mess(198))) # (!\trigger2~input_o\ & ((!mess(212))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(198),
	datab => mess(212),
	datac => \trigger2~input_o\,
	combout => \mess~327_combout\);

-- Location: FF_X54_Y53_N17
\mess[205]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~327_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(205));

-- Location: LCCOMB_X54_Y53_N2
\mess~313\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~313_combout\ = (\trigger2~input_o\ & ((!mess(205)))) # (!\trigger2~input_o\ & (!mess(219)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(219),
	datac => \trigger2~input_o\,
	datad => mess(205),
	combout => \mess~313_combout\);

-- Location: FF_X54_Y53_N3
\mess[212]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~313_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(212));

-- Location: LCCOMB_X54_Y53_N4
\mess~299\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~299_combout\ = (\trigger2~input_o\ & ((!mess(212)))) # (!\trigger2~input_o\ & (mess(226)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(226),
	datac => \trigger2~input_o\,
	datad => mess(212),
	combout => \mess~299_combout\);

-- Location: FF_X54_Y53_N5
\mess[219]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~299_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(219));

-- Location: LCCOMB_X54_Y53_N10
\mess~285\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~285_combout\ = (\trigger2~input_o\ & (mess(219))) # (!\trigger2~input_o\ & ((mess(233))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(219),
	datac => \trigger2~input_o\,
	datad => mess(233),
	combout => \mess~285_combout\);

-- Location: FF_X54_Y53_N11
\mess[226]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~285_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(226));

-- Location: LCCOMB_X54_Y53_N0
\mess~271\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~271_combout\ = (\trigger2~input_o\ & ((mess(226)))) # (!\trigger2~input_o\ & (!mess(240)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(240),
	datac => \trigger2~input_o\,
	datad => mess(226),
	combout => \mess~271_combout\);

-- Location: FF_X54_Y53_N1
\mess[233]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~271_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(233));

-- Location: LCCOMB_X54_Y53_N14
\mess~257\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~257_combout\ = (\trigger2~input_o\ & (!mess(233))) # (!\trigger2~input_o\ & ((mess(247))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(233),
	datac => \trigger2~input_o\,
	datad => mess(247),
	combout => \mess~257_combout\);

-- Location: FF_X54_Y53_N15
\mess[240]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~257_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(240));

-- Location: LCCOMB_X54_Y53_N20
\mess~243\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~243_combout\ = (\trigger2~input_o\ & (mess(240))) # (!\trigger2~input_o\ & ((!mess(254))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(240),
	datac => \trigger2~input_o\,
	datad => mess(254),
	combout => \mess~243_combout\);

-- Location: FF_X54_Y53_N21
\mess[247]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~243_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(247));

-- Location: LCCOMB_X55_Y53_N22
\mess~229\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~229_combout\ = (\trigger2~input_o\ & ((!mess(247)))) # (!\trigger2~input_o\ & (!mess(261)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(261),
	datac => \trigger2~input_o\,
	datad => mess(247),
	combout => \mess~229_combout\);

-- Location: FF_X55_Y53_N23
\mess[254]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~229_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(254));

-- Location: LCCOMB_X55_Y53_N4
\mess~215\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~215_combout\ = (\trigger2~input_o\ & (!mess(254))) # (!\trigger2~input_o\ & ((mess(268))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(254),
	datac => \trigger2~input_o\,
	datad => mess(268),
	combout => \mess~215_combout\);

-- Location: FF_X55_Y53_N5
\mess[261]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~215_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(261));

-- Location: LCCOMB_X54_Y53_N24
\mess~201\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~201_combout\ = (\trigger2~input_o\ & ((mess(261)))) # (!\trigger2~input_o\ & (!mess(275)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(275),
	datac => \trigger2~input_o\,
	datad => mess(261),
	combout => \mess~201_combout\);

-- Location: FF_X54_Y53_N25
\mess[268]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~201_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(268));

-- Location: LCCOMB_X54_Y53_N6
\mess~187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~187_combout\ = (\trigger2~input_o\ & ((!mess(268)))) # (!\trigger2~input_o\ & (mess(282)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(282),
	datac => \trigger2~input_o\,
	datad => mess(268),
	combout => \mess~187_combout\);

-- Location: FF_X54_Y53_N7
\mess[275]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~187_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(275));

-- Location: LCCOMB_X54_Y53_N8
\mess~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~173_combout\ = (\trigger2~input_o\ & ((mess(275)))) # (!\trigger2~input_o\ & (!mess(289)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(289),
	datac => \trigger2~input_o\,
	datad => mess(275),
	combout => \mess~173_combout\);

-- Location: FF_X54_Y53_N9
\mess[282]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~173_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(282));

-- Location: LCCOMB_X54_Y53_N26
\mess~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~159_combout\ = (\trigger2~input_o\ & (!mess(282))) # (!\trigger2~input_o\ & ((mess(296))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(282),
	datac => \trigger2~input_o\,
	datad => mess(296),
	combout => \mess~159_combout\);

-- Location: FF_X54_Y53_N27
\mess[289]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~159_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(289));

-- Location: LCCOMB_X54_Y53_N28
\mess~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~145_combout\ = (\trigger2~input_o\ & (mess(289))) # (!\trigger2~input_o\ & ((mess(303))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(289),
	datac => \trigger2~input_o\,
	datad => mess(303),
	combout => \mess~145_combout\);

-- Location: FF_X54_Y53_N29
\mess[296]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~145_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(296));

-- Location: LCCOMB_X54_Y53_N18
\mess~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~131_combout\ = (\trigger2~input_o\ & (mess(296))) # (!\trigger2~input_o\ & ((!mess(310))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(296),
	datac => \trigger2~input_o\,
	datad => mess(310),
	combout => \mess~131_combout\);

-- Location: FF_X54_Y53_N19
\mess[303]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~131_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(303));

-- Location: LCCOMB_X52_Y52_N14
\mess~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~117_combout\ = (\trigger2~input_o\ & ((!mess(303)))) # (!\trigger2~input_o\ & (!mess(317)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(317),
	datac => \trigger2~input_o\,
	datad => mess(303),
	combout => \mess~117_combout\);

-- Location: FF_X52_Y52_N15
\mess[310]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~117_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(310));

-- Location: LCCOMB_X52_Y52_N26
\mess~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~103_combout\ = (\trigger2~input_o\ & (!mess(310))) # (!\trigger2~input_o\ & ((mess(324))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(310),
	datad => mess(324),
	combout => \mess~103_combout\);

-- Location: FF_X52_Y52_N27
\mess[317]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~103_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(317));

-- Location: LCCOMB_X52_Y52_N18
\mess~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~89_combout\ = (\trigger2~input_o\ & (mess(317))) # (!\trigger2~input_o\ & ((mess(331))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(317),
	datac => \trigger2~input_o\,
	datad => mess(331),
	combout => \mess~89_combout\);

-- Location: FF_X52_Y52_N19
\mess[324]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~89_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(324));

-- Location: LCCOMB_X52_Y52_N10
\mess~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~75_combout\ = (\trigger2~input_o\ & ((mess(324)))) # (!\trigger2~input_o\ & (mess(338)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(338),
	datac => \trigger2~input_o\,
	datad => mess(324),
	combout => \mess~75_combout\);

-- Location: FF_X52_Y52_N11
\mess[331]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~75_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(331));

-- Location: LCCOMB_X52_Y52_N2
\mess~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~61_combout\ = (\trigger2~input_o\ & (mess(331))) # (!\trigger2~input_o\ & ((mess(345))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(331),
	datac => \trigger2~input_o\,
	datad => mess(345),
	combout => \mess~61_combout\);

-- Location: FF_X52_Y52_N3
\mess[338]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~61_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(338));

-- Location: LCCOMB_X52_Y52_N6
\mess~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~47_combout\ = (\trigger2~input_o\ & ((mess(338)))) # (!\trigger2~input_o\ & (mess(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(2),
	datac => \trigger2~input_o\,
	datad => mess(338),
	combout => \mess~47_combout\);

-- Location: FF_X52_Y52_N7
\mess[345]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~47_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(345));

-- Location: LCCOMB_X52_Y52_N8
\mess~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~5_combout\ = (\trigger2~input_o\ & (mess(345))) # (!\trigger2~input_o\ & ((mess(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(345),
	datac => \trigger2~input_o\,
	datad => mess(9),
	combout => \mess~5_combout\);

-- Location: FF_X52_Y52_N9
\mess[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~5_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(2));

-- Location: LCCOMB_X52_Y52_N16
\HEX5[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX5[2]~reg0feeder_combout\ = mess(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(2),
	combout => \HEX5[2]~reg0feeder_combout\);

-- Location: FF_X52_Y52_N17
\HEX5[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[2]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[2]~reg0_q\);

-- Location: LCCOMB_X49_Y52_N24
\mess~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~48_combout\ = (\trigger2~input_o\ & (mess(337))) # (!\trigger2~input_o\ & ((!mess(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(337),
	datad => mess(1),
	combout => \mess~48_combout\);

-- Location: FF_X49_Y52_N25
\mess[344]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~48_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(344));

-- Location: LCCOMB_X50_Y53_N28
\mess~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~62_combout\ = (\trigger2~input_o\ & (mess(330))) # (!\trigger2~input_o\ & ((mess(344))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(330),
	datad => mess(344),
	combout => \mess~62_combout\);

-- Location: FF_X50_Y53_N29
\mess[337]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~62_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(337));

-- Location: LCCOMB_X49_Y52_N2
\mess~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~76_combout\ = (\trigger2~input_o\ & ((mess(323)))) # (!\trigger2~input_o\ & (mess(337)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(337),
	datad => mess(323),
	combout => \mess~76_combout\);

-- Location: FF_X49_Y52_N3
\mess[330]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~76_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(330));

-- Location: LCCOMB_X49_Y52_N12
\mess~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~90_combout\ = (\trigger2~input_o\ & ((mess(316)))) # (!\trigger2~input_o\ & (mess(330)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(330),
	datad => mess(316),
	combout => \mess~90_combout\);

-- Location: FF_X49_Y52_N13
\mess[323]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~90_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(323));

-- Location: LCCOMB_X49_Y52_N10
\mess~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~104_combout\ = (\trigger2~input_o\ & (!mess(309))) # (!\trigger2~input_o\ & ((mess(323))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(309),
	datad => mess(323),
	combout => \mess~104_combout\);

-- Location: FF_X49_Y52_N11
\mess[316]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~104_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(316));

-- Location: LCCOMB_X49_Y52_N4
\mess~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~118_combout\ = (\trigger2~input_o\ & (!mess(302))) # (!\trigger2~input_o\ & ((!mess(316))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(302),
	datad => mess(316),
	combout => \mess~118_combout\);

-- Location: FF_X49_Y52_N5
\mess[309]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~118_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(309));

-- Location: LCCOMB_X49_Y52_N26
\mess~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~132_combout\ = (\trigger2~input_o\ & ((mess(295)))) # (!\trigger2~input_o\ & (!mess(309)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(309),
	datad => mess(295),
	combout => \mess~132_combout\);

-- Location: FF_X49_Y52_N27
\mess[302]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~132_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(302));

-- Location: LCCOMB_X49_Y52_N0
\mess~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~146_combout\ = (\trigger2~input_o\ & (!mess(288))) # (!\trigger2~input_o\ & ((mess(302))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(288),
	datac => mess(302),
	datad => \trigger2~input_o\,
	combout => \mess~146_combout\);

-- Location: FF_X49_Y52_N1
\mess[295]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~146_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(295));

-- Location: LCCOMB_X49_Y52_N22
\mess~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~160_combout\ = (\trigger2~input_o\ & ((mess(281)))) # (!\trigger2~input_o\ & (!mess(295)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(295),
	datad => mess(281),
	combout => \mess~160_combout\);

-- Location: FF_X49_Y52_N23
\mess[288]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~160_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(288));

-- Location: LCCOMB_X49_Y52_N28
\mess~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~174_combout\ = (\trigger2~input_o\ & ((!mess(274)))) # (!\trigger2~input_o\ & (mess(288)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(288),
	datad => mess(274),
	combout => \mess~174_combout\);

-- Location: FF_X49_Y52_N29
\mess[281]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~174_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(281));

-- Location: LCCOMB_X49_Y52_N18
\mess~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~188_combout\ = (\trigger2~input_o\ & ((mess(267)))) # (!\trigger2~input_o\ & (!mess(281)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(281),
	datad => mess(267),
	combout => \mess~188_combout\);

-- Location: FF_X49_Y52_N19
\mess[274]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~188_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(274));

-- Location: LCCOMB_X49_Y52_N16
\mess~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~202_combout\ = (\trigger2~input_o\ & (mess(260))) # (!\trigger2~input_o\ & ((mess(274))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(260),
	datad => mess(274),
	combout => \mess~202_combout\);

-- Location: FF_X49_Y52_N17
\mess[267]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~202_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(267));

-- Location: LCCOMB_X49_Y49_N20
\mess~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~216_combout\ = (\trigger2~input_o\ & (!mess(253))) # (!\trigger2~input_o\ & ((mess(267))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(253),
	datad => mess(267),
	combout => \mess~216_combout\);

-- Location: FF_X49_Y49_N21
\mess[260]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~216_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(260));

-- Location: LCCOMB_X52_Y49_N20
\mess~230\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~230_combout\ = (\trigger2~input_o\ & (!mess(246))) # (!\trigger2~input_o\ & ((!mess(260))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(246),
	datac => \trigger2~input_o\,
	datad => mess(260),
	combout => \mess~230_combout\);

-- Location: FF_X52_Y49_N21
\mess[253]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~230_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(253));

-- Location: LCCOMB_X52_Y49_N30
\mess~244\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~244_combout\ = (\trigger2~input_o\ & (mess(239))) # (!\trigger2~input_o\ & ((!mess(253))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(239),
	datac => \trigger2~input_o\,
	datad => mess(253),
	combout => \mess~244_combout\);

-- Location: FF_X52_Y49_N31
\mess[246]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~244_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(246));

-- Location: LCCOMB_X52_Y49_N16
\mess~258\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~258_combout\ = (\trigger2~input_o\ & ((mess(232)))) # (!\trigger2~input_o\ & (mess(246)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(246),
	datac => \trigger2~input_o\,
	datad => mess(232),
	combout => \mess~258_combout\);

-- Location: FF_X52_Y49_N17
\mess[239]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~258_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(239));

-- Location: LCCOMB_X52_Y49_N10
\mess~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~272_combout\ = (\trigger2~input_o\ & ((!mess(225)))) # (!\trigger2~input_o\ & (mess(239)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(239),
	datac => \trigger2~input_o\,
	datad => mess(225),
	combout => \mess~272_combout\);

-- Location: FF_X52_Y49_N11
\mess[232]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~272_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(232));

-- Location: LCCOMB_X52_Y49_N12
\mess~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~286_combout\ = (\trigger2~input_o\ & ((mess(218)))) # (!\trigger2~input_o\ & (!mess(232)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(232),
	datac => \trigger2~input_o\,
	datad => mess(218),
	combout => \mess~286_combout\);

-- Location: FF_X52_Y49_N13
\mess[225]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~286_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(225));

-- Location: LCCOMB_X52_Y49_N18
\mess~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~300_combout\ = (\trigger2~input_o\ & (!mess(211))) # (!\trigger2~input_o\ & ((mess(225))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(211),
	datac => \trigger2~input_o\,
	datad => mess(225),
	combout => \mess~300_combout\);

-- Location: FF_X52_Y49_N19
\mess[218]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~300_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(218));

-- Location: LCCOMB_X52_Y49_N24
\mess~314\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~314_combout\ = (\trigger2~input_o\ & (!mess(204))) # (!\trigger2~input_o\ & ((!mess(218))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(204),
	datac => \trigger2~input_o\,
	datad => mess(218),
	combout => \mess~314_combout\);

-- Location: FF_X52_Y49_N25
\mess[211]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~314_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(211));

-- Location: LCCOMB_X52_Y49_N28
\mess~328\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~328_combout\ = (\trigger2~input_o\ & (!mess(197))) # (!\trigger2~input_o\ & ((!mess(211))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(197),
	datac => \trigger2~input_o\,
	datad => mess(211),
	combout => \mess~328_combout\);

-- Location: FF_X52_Y49_N29
\mess[204]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~328_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(204));

-- Location: LCCOMB_X52_Y49_N8
\mess~342\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~342_combout\ = (\trigger2~input_o\ & (mess(190))) # (!\trigger2~input_o\ & ((!mess(204))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(190),
	datac => \trigger2~input_o\,
	datad => mess(204),
	combout => \mess~342_combout\);

-- Location: FF_X52_Y49_N9
\mess[197]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~342_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(197));

-- Location: LCCOMB_X52_Y49_N6
\mess~349\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~349_combout\ = (\trigger2~input_o\ & (mess(183))) # (!\trigger2~input_o\ & ((mess(197))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(183),
	datac => mess(197),
	combout => \mess~349_combout\);

-- Location: FF_X52_Y49_N7
\mess[190]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~349_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(190));

-- Location: LCCOMB_X52_Y49_N14
\mess~335\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~335_combout\ = (\trigger2~input_o\ & (mess(176))) # (!\trigger2~input_o\ & ((mess(190))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(176),
	datac => \trigger2~input_o\,
	datad => mess(190),
	combout => \mess~335_combout\);

-- Location: FF_X52_Y49_N15
\mess[183]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~335_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(183));

-- Location: LCCOMB_X52_Y49_N2
\mess~321\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~321_combout\ = (\trigger2~input_o\ & ((!mess(169)))) # (!\trigger2~input_o\ & (mess(183)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(183),
	datac => \trigger2~input_o\,
	datad => mess(169),
	combout => \mess~321_combout\);

-- Location: FF_X52_Y49_N3
\mess[176]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~321_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(176));

-- Location: LCCOMB_X49_Y51_N8
\mess~307\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~307_combout\ = (\trigger2~input_o\ & (!mess(162))) # (!\trigger2~input_o\ & ((!mess(176))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(162),
	datad => mess(176),
	combout => \mess~307_combout\);

-- Location: FF_X49_Y51_N9
\mess[169]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~307_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(169));

-- Location: LCCOMB_X49_Y51_N30
\mess~293\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~293_combout\ = (\trigger2~input_o\ & ((!mess(155)))) # (!\trigger2~input_o\ & (!mess(169)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(169),
	datad => mess(155),
	combout => \mess~293_combout\);

-- Location: FF_X49_Y51_N31
\mess[162]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~293_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(162));

-- Location: LCCOMB_X49_Y51_N20
\mess~279\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~279_combout\ = (\trigger2~input_o\ & ((!mess(148)))) # (!\trigger2~input_o\ & (!mess(162)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(162),
	datad => mess(148),
	combout => \mess~279_combout\);

-- Location: FF_X49_Y51_N21
\mess[155]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~279_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(155));

-- Location: LCCOMB_X49_Y51_N6
\mess~265\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~265_combout\ = (\trigger2~input_o\ & ((mess(141)))) # (!\trigger2~input_o\ & (!mess(155)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(155),
	datad => mess(141),
	combout => \mess~265_combout\);

-- Location: FF_X49_Y51_N7
\mess[148]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~265_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(148));

-- Location: LCCOMB_X49_Y51_N12
\mess~251\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~251_combout\ = (\trigger2~input_o\ & (mess(134))) # (!\trigger2~input_o\ & ((mess(148))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(134),
	datad => mess(148),
	combout => \mess~251_combout\);

-- Location: FF_X49_Y51_N13
\mess[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~251_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(141));

-- Location: LCCOMB_X49_Y51_N22
\mess~237\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~237_combout\ = (\trigger2~input_o\ & (mess(127))) # (!\trigger2~input_o\ & ((mess(141))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(127),
	datad => mess(141),
	combout => \mess~237_combout\);

-- Location: FF_X49_Y51_N23
\mess[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~237_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(134));

-- Location: LCCOMB_X49_Y51_N4
\mess~223\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~223_combout\ = (\trigger2~input_o\ & ((!mess(120)))) # (!\trigger2~input_o\ & (mess(134)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(134),
	datad => mess(120),
	combout => \mess~223_combout\);

-- Location: FF_X49_Y51_N5
\mess[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~223_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(127));

-- Location: LCCOMB_X49_Y51_N10
\mess~209\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~209_combout\ = (\trigger2~input_o\ & ((mess(113)))) # (!\trigger2~input_o\ & (!mess(127)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(127),
	datad => mess(113),
	combout => \mess~209_combout\);

-- Location: FF_X49_Y51_N11
\mess[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~209_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(120));

-- Location: LCCOMB_X49_Y51_N0
\mess~195\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~195_combout\ = (\trigger2~input_o\ & (!mess(106))) # (!\trigger2~input_o\ & ((mess(120))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(106),
	datad => mess(120),
	combout => \mess~195_combout\);

-- Location: FF_X49_Y51_N1
\mess[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~195_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(113));

-- Location: LCCOMB_X49_Y51_N26
\mess~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~181_combout\ = (\trigger2~input_o\ & ((!mess(99)))) # (!\trigger2~input_o\ & (!mess(113)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(113),
	datad => mess(99),
	combout => \mess~181_combout\);

-- Location: FF_X49_Y51_N27
\mess[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~181_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(106));

-- Location: LCCOMB_X49_Y51_N28
\mess~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~167_combout\ = (\trigger2~input_o\ & ((mess(92)))) # (!\trigger2~input_o\ & (!mess(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(106),
	datad => mess(92),
	combout => \mess~167_combout\);

-- Location: FF_X49_Y51_N29
\mess[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~167_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(99));

-- Location: LCCOMB_X49_Y51_N18
\mess~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~153_combout\ = (\trigger2~input_o\ & (!mess(85))) # (!\trigger2~input_o\ & ((mess(99))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(85),
	datad => mess(99),
	combout => \mess~153_combout\);

-- Location: FF_X49_Y51_N19
\mess[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~153_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(92));

-- Location: LCCOMB_X49_Y51_N16
\mess~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~139_combout\ = (\trigger2~input_o\ & (mess(78))) # (!\trigger2~input_o\ & ((!mess(92))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(78),
	datad => mess(92),
	combout => \mess~139_combout\);

-- Location: FF_X49_Y51_N17
\mess[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~139_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(85));

-- Location: LCCOMB_X49_Y51_N14
\mess~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~125_combout\ = (\trigger2~input_o\ & ((mess(71)))) # (!\trigger2~input_o\ & (mess(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(85),
	datad => mess(71),
	combout => \mess~125_combout\);

-- Location: FF_X49_Y51_N15
\mess[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~125_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(78));

-- Location: LCCOMB_X54_Y51_N6
\mess~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~111_combout\ = (\trigger2~input_o\ & ((mess(64)))) # (!\trigger2~input_o\ & (mess(78)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(78),
	datad => mess(64),
	combout => \mess~111_combout\);

-- Location: FF_X54_Y51_N7
\mess[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~111_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(71));

-- Location: LCCOMB_X54_Y53_N12
\mess~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~97_combout\ = (\trigger2~input_o\ & (!mess(57))) # (!\trigger2~input_o\ & ((mess(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(57),
	datad => mess(71),
	combout => \mess~97_combout\);

-- Location: FF_X54_Y53_N13
\mess[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~97_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(64));

-- Location: LCCOMB_X54_Y51_N12
\mess~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~83_combout\ = (\trigger2~input_o\ & (!mess(50))) # (!\trigger2~input_o\ & ((!mess(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(50),
	datac => \trigger2~input_o\,
	datad => mess(64),
	combout => \mess~83_combout\);

-- Location: FF_X54_Y51_N13
\mess[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~83_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(57));

-- Location: LCCOMB_X54_Y51_N10
\mess~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~69_combout\ = (\trigger2~input_o\ & ((mess(43)))) # (!\trigger2~input_o\ & (!mess(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(57),
	datac => \trigger2~input_o\,
	datad => mess(43),
	combout => \mess~69_combout\);

-- Location: FF_X54_Y51_N11
\mess[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~69_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(50));

-- Location: LCCOMB_X54_Y51_N24
\mess~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~55_combout\ = (\trigger2~input_o\ & (mess(36))) # (!\trigger2~input_o\ & ((mess(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(36),
	datac => \trigger2~input_o\,
	datad => mess(50),
	combout => \mess~55_combout\);

-- Location: FF_X54_Y51_N25
\mess[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~55_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(43));

-- Location: LCCOMB_X54_Y51_N30
\mess~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~41_combout\ = (\trigger2~input_o\ & ((!mess(29)))) # (!\trigger2~input_o\ & (mess(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(43),
	datac => \trigger2~input_o\,
	datad => mess(29),
	combout => \mess~41_combout\);

-- Location: FF_X54_Y51_N31
\mess[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~41_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(36));

-- Location: LCCOMB_X54_Y51_N28
\mess~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~34_combout\ = (\trigger2~input_o\ & ((mess(22)))) # (!\trigger2~input_o\ & (!mess(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(36),
	datac => \trigger2~input_o\,
	datad => mess(22),
	combout => \mess~34_combout\);

-- Location: FF_X54_Y51_N29
\mess[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~34_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(29));

-- Location: LCCOMB_X54_Y51_N18
\mess~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~27_combout\ = (\trigger2~input_o\ & (!mess(15))) # (!\trigger2~input_o\ & ((mess(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(15),
	datad => mess(29),
	combout => \mess~27_combout\);

-- Location: FF_X54_Y51_N19
\mess[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~27_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(22));

-- Location: LCCOMB_X54_Y51_N4
\mess~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~20_combout\ = (\trigger2~input_o\ & ((mess(8)))) # (!\trigger2~input_o\ & (!mess(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(22),
	datac => \trigger2~input_o\,
	datad => mess(8),
	combout => \mess~20_combout\);

-- Location: FF_X54_Y51_N5
\mess[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~20_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(15));

-- Location: LCCOMB_X49_Y51_N24
\mess~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~13_combout\ = (\trigger2~input_o\ & (!mess(1))) # (!\trigger2~input_o\ & ((mess(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(1),
	datad => mess(15),
	combout => \mess~13_combout\);

-- Location: FF_X49_Y51_N25
\mess[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~13_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(8));

-- Location: LCCOMB_X49_Y52_N30
\mess~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~6_combout\ = (\trigger2~input_o\ & ((!mess(344)))) # (!\trigger2~input_o\ & (!mess(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(8),
	datad => mess(344),
	combout => \mess~6_combout\);

-- Location: FF_X49_Y52_N31
\mess[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~6_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(1));

-- Location: LCCOMB_X52_Y52_N22
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

-- Location: FF_X52_Y52_N23
\HEX5[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[1]~3_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[1]~reg0_q\);

-- Location: LCCOMB_X51_Y53_N6
\mess~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~49_combout\ = (\trigger2~input_o\ & ((mess(336)))) # (!\trigger2~input_o\ & (!mess(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(0),
	datad => mess(336),
	combout => \mess~49_combout\);

-- Location: FF_X51_Y53_N7
\mess[343]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~49_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(343));

-- Location: LCCOMB_X51_Y53_N12
\mess~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~63_combout\ = (\trigger2~input_o\ & (mess(329))) # (!\trigger2~input_o\ & ((mess(343))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(329),
	datad => mess(343),
	combout => \mess~63_combout\);

-- Location: FF_X51_Y53_N13
\mess[336]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~63_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(336));

-- Location: LCCOMB_X51_Y53_N30
\mess~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~77_combout\ = (\trigger2~input_o\ & (mess(322))) # (!\trigger2~input_o\ & ((mess(336))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(322),
	datac => \trigger2~input_o\,
	datad => mess(336),
	combout => \mess~77_combout\);

-- Location: FF_X51_Y53_N31
\mess[329]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~77_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(329));

-- Location: LCCOMB_X51_Y53_N0
\mess~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~91_combout\ = (\trigger2~input_o\ & ((!mess(315)))) # (!\trigger2~input_o\ & (mess(329)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(329),
	datad => mess(315),
	combout => \mess~91_combout\);

-- Location: FF_X51_Y53_N1
\mess[322]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~91_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(322));

-- Location: LCCOMB_X51_Y53_N18
\mess~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~105_combout\ = (\trigger2~input_o\ & ((mess(308)))) # (!\trigger2~input_o\ & (!mess(322)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(322),
	datac => \trigger2~input_o\,
	datad => mess(308),
	combout => \mess~105_combout\);

-- Location: FF_X51_Y53_N19
\mess[315]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~105_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(315));

-- Location: LCCOMB_X51_Y53_N28
\mess~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~119_combout\ = (\trigger2~input_o\ & (!mess(301))) # (!\trigger2~input_o\ & ((mess(315))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(301),
	datac => \trigger2~input_o\,
	datad => mess(315),
	combout => \mess~119_combout\);

-- Location: FF_X51_Y53_N29
\mess[308]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~119_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(308));

-- Location: LCCOMB_X51_Y53_N10
\mess~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~133_combout\ = (\trigger2~input_o\ & (mess(294))) # (!\trigger2~input_o\ & ((!mess(308))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(294),
	datac => \trigger2~input_o\,
	datad => mess(308),
	combout => \mess~133_combout\);

-- Location: FF_X51_Y53_N11
\mess[301]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~133_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(301));

-- Location: LCCOMB_X51_Y53_N24
\mess~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~147_combout\ = (\trigger2~input_o\ & (!mess(287))) # (!\trigger2~input_o\ & ((mess(301))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(287),
	datad => mess(301),
	combout => \mess~147_combout\);

-- Location: FF_X51_Y53_N25
\mess[294]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~147_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(294));

-- Location: LCCOMB_X51_Y53_N26
\mess~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~161_combout\ = (\trigger2~input_o\ & ((mess(280)))) # (!\trigger2~input_o\ & (!mess(294)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(294),
	datac => \trigger2~input_o\,
	datad => mess(280),
	combout => \mess~161_combout\);

-- Location: FF_X51_Y53_N27
\mess[287]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~161_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(287));

-- Location: LCCOMB_X50_Y53_N14
\mess~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~175_combout\ = (\trigger2~input_o\ & (mess(273))) # (!\trigger2~input_o\ & ((mess(287))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(273),
	datac => \trigger2~input_o\,
	datad => mess(287),
	combout => \mess~175_combout\);

-- Location: FF_X50_Y53_N15
\mess[280]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~175_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(280));

-- Location: LCCOMB_X50_Y53_N24
\mess~189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~189_combout\ = (\trigger2~input_o\ & ((!mess(266)))) # (!\trigger2~input_o\ & (mess(280)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(280),
	datad => mess(266),
	combout => \mess~189_combout\);

-- Location: FF_X50_Y53_N25
\mess[273]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~189_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(273));

-- Location: LCCOMB_X50_Y53_N18
\mess~203\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~203_combout\ = (\trigger2~input_o\ & (!mess(259))) # (!\trigger2~input_o\ & ((!mess(273))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(259),
	datad => mess(273),
	combout => \mess~203_combout\);

-- Location: FF_X50_Y53_N19
\mess[266]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~203_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(266));

-- Location: LCCOMB_X50_Y53_N4
\mess~217\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~217_combout\ = (\trigger2~input_o\ & (mess(252))) # (!\trigger2~input_o\ & ((!mess(266))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(252),
	datad => mess(266),
	combout => \mess~217_combout\);

-- Location: FF_X50_Y53_N5
\mess[259]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~217_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(259));

-- Location: LCCOMB_X50_Y53_N30
\mess~231\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~231_combout\ = (\trigger2~input_o\ & ((!mess(245)))) # (!\trigger2~input_o\ & (mess(259)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(259),
	datad => mess(245),
	combout => \mess~231_combout\);

-- Location: FF_X50_Y53_N31
\mess[252]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~231_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(252));

-- Location: LCCOMB_X50_Y53_N16
\mess~245\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~245_combout\ = (\trigger2~input_o\ & ((mess(238)))) # (!\trigger2~input_o\ & (!mess(252)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(252),
	datad => mess(238),
	combout => \mess~245_combout\);

-- Location: FF_X50_Y53_N17
\mess[245]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~245_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(245));

-- Location: LCCOMB_X50_Y53_N2
\mess~259\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~259_combout\ = (\trigger2~input_o\ & (!mess(231))) # (!\trigger2~input_o\ & ((mess(245))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(231),
	datad => mess(245),
	combout => \mess~259_combout\);

-- Location: FF_X50_Y53_N3
\mess[238]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~259_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(238));

-- Location: LCCOMB_X50_Y53_N22
\mess~273\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~273_combout\ = (\trigger2~input_o\ & ((!mess(224)))) # (!\trigger2~input_o\ & (!mess(238)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(238),
	datac => \trigger2~input_o\,
	datad => mess(224),
	combout => \mess~273_combout\);

-- Location: FF_X50_Y53_N23
\mess[231]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~273_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(231));

-- Location: LCCOMB_X50_Y53_N6
\mess~287\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~287_combout\ = (\trigger2~input_o\ & ((mess(217)))) # (!\trigger2~input_o\ & (!mess(231)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(231),
	datad => mess(217),
	combout => \mess~287_combout\);

-- Location: FF_X50_Y53_N7
\mess[224]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~287_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(224));

-- Location: LCCOMB_X50_Y53_N20
\mess~301\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~301_combout\ = (\trigger2~input_o\ & ((mess(210)))) # (!\trigger2~input_o\ & (mess(224)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(224),
	datac => \trigger2~input_o\,
	datad => mess(210),
	combout => \mess~301_combout\);

-- Location: FF_X50_Y53_N21
\mess[217]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~301_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(217));

-- Location: LCCOMB_X50_Y53_N10
\mess~315\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~315_combout\ = (\trigger2~input_o\ & ((!mess(203)))) # (!\trigger2~input_o\ & (mess(217)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(217),
	datac => \trigger2~input_o\,
	datad => mess(203),
	combout => \mess~315_combout\);

-- Location: FF_X50_Y53_N11
\mess[210]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~315_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(210));

-- Location: LCCOMB_X50_Y53_N12
\mess~329\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~329_combout\ = (\trigger2~input_o\ & (mess(196))) # (!\trigger2~input_o\ & ((!mess(210))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(196),
	datad => mess(210),
	combout => \mess~329_combout\);

-- Location: FF_X50_Y53_N13
\mess[203]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~329_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(203));

-- Location: LCCOMB_X50_Y53_N26
\mess~343\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~343_combout\ = (\trigger2~input_o\ & (mess(189))) # (!\trigger2~input_o\ & ((mess(203))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(189),
	datad => mess(203),
	combout => \mess~343_combout\);

-- Location: FF_X50_Y53_N27
\mess[196]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~343_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(196));

-- Location: LCCOMB_X50_Y51_N2
\mess~350\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~350_combout\ = (\trigger2~input_o\ & (!mess(182))) # (!\trigger2~input_o\ & ((mess(196))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(182),
	datac => \trigger2~input_o\,
	datad => mess(196),
	combout => \mess~350_combout\);

-- Location: FF_X50_Y51_N3
\mess[189]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~350_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(189));

-- Location: LCCOMB_X50_Y51_N12
\mess~336\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~336_combout\ = (\trigger2~input_o\ & ((!mess(175)))) # (!\trigger2~input_o\ & (!mess(189)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(189),
	datac => \trigger2~input_o\,
	datad => mess(175),
	combout => \mess~336_combout\);

-- Location: FF_X50_Y51_N13
\mess[182]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~336_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(182));

-- Location: LCCOMB_X50_Y51_N6
\mess~322\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~322_combout\ = (\trigger2~input_o\ & (mess(168))) # (!\trigger2~input_o\ & ((!mess(182))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(168),
	datac => \trigger2~input_o\,
	datad => mess(182),
	combout => \mess~322_combout\);

-- Location: FF_X50_Y51_N7
\mess[175]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~322_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(175));

-- Location: LCCOMB_X50_Y51_N16
\mess~308\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~308_combout\ = (\trigger2~input_o\ & ((!mess(161)))) # (!\trigger2~input_o\ & (mess(175)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(175),
	datac => \trigger2~input_o\,
	datad => mess(161),
	combout => \mess~308_combout\);

-- Location: FF_X50_Y51_N17
\mess[168]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~308_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(168));

-- Location: LCCOMB_X50_Y51_N0
\mess~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~294_combout\ = (\trigger2~input_o\ & ((!mess(154)))) # (!\trigger2~input_o\ & (!mess(168)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(168),
	datac => \trigger2~input_o\,
	datad => mess(154),
	combout => \mess~294_combout\);

-- Location: FF_X50_Y51_N1
\mess[161]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~294_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(161));

-- Location: LCCOMB_X50_Y51_N10
\mess~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~280_combout\ = (\trigger2~input_o\ & (mess(147))) # (!\trigger2~input_o\ & ((!mess(161))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(147),
	datad => mess(161),
	combout => \mess~280_combout\);

-- Location: FF_X50_Y51_N11
\mess[154]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~280_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(154));

-- Location: LCCOMB_X50_Y51_N8
\mess~266\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~266_combout\ = (\trigger2~input_o\ & (!mess(140))) # (!\trigger2~input_o\ & ((mess(154))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(140),
	datad => mess(154),
	combout => \mess~266_combout\);

-- Location: FF_X50_Y51_N9
\mess[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~266_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(147));

-- Location: LCCOMB_X50_Y51_N26
\mess~252\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~252_combout\ = (\trigger2~input_o\ & ((!mess(133)))) # (!\trigger2~input_o\ & (!mess(147)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(147),
	datad => mess(133),
	combout => \mess~252_combout\);

-- Location: FF_X50_Y51_N27
\mess[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~252_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(140));

-- Location: LCCOMB_X50_Y51_N20
\mess~238\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~238_combout\ = (\trigger2~input_o\ & ((!mess(126)))) # (!\trigger2~input_o\ & (!mess(140)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(140),
	datad => mess(126),
	combout => \mess~238_combout\);

-- Location: FF_X50_Y51_N21
\mess[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~238_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(133));

-- Location: LCCOMB_X50_Y51_N18
\mess~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~224_combout\ = (\trigger2~input_o\ & (!mess(119))) # (!\trigger2~input_o\ & ((!mess(133))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(119),
	datad => mess(133),
	combout => \mess~224_combout\);

-- Location: FF_X50_Y51_N19
\mess[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~224_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(126));

-- Location: LCCOMB_X50_Y51_N4
\mess~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~210_combout\ = (\trigger2~input_o\ & (mess(112))) # (!\trigger2~input_o\ & ((!mess(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(112),
	datad => mess(126),
	combout => \mess~210_combout\);

-- Location: FF_X50_Y51_N5
\mess[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~210_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(119));

-- Location: LCCOMB_X50_Y51_N30
\mess~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~196_combout\ = (\trigger2~input_o\ & ((mess(105)))) # (!\trigger2~input_o\ & (mess(119)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger2~input_o\,
	datac => mess(119),
	datad => mess(105),
	combout => \mess~196_combout\);

-- Location: FF_X50_Y51_N31
\mess[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~196_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(112));

-- Location: LCCOMB_X50_Y51_N28
\mess~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~182_combout\ = (\trigger2~input_o\ & (mess(98))) # (!\trigger2~input_o\ & ((mess(112))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(98),
	datab => \trigger2~input_o\,
	datac => mess(112),
	combout => \mess~182_combout\);

-- Location: FF_X50_Y51_N29
\mess[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~182_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(105));

-- Location: LCCOMB_X50_Y51_N22
\mess~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~168_combout\ = (\trigger2~input_o\ & ((mess(91)))) # (!\trigger2~input_o\ & (mess(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(105),
	datac => \trigger2~input_o\,
	datad => mess(91),
	combout => \mess~168_combout\);

-- Location: FF_X50_Y51_N23
\mess[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~168_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(98));

-- Location: LCCOMB_X50_Y51_N24
\mess~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~154_combout\ = (\trigger2~input_o\ & ((mess(84)))) # (!\trigger2~input_o\ & (mess(98)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(98),
	datac => \trigger2~input_o\,
	datad => mess(84),
	combout => \mess~154_combout\);

-- Location: FF_X50_Y51_N25
\mess[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~154_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(91));

-- Location: LCCOMB_X51_Y51_N24
\mess~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~140_combout\ = (\trigger2~input_o\ & ((!mess(77)))) # (!\trigger2~input_o\ & (mess(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(91),
	datad => mess(77),
	combout => \mess~140_combout\);

-- Location: FF_X51_Y51_N25
\mess[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~140_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(84));

-- Location: LCCOMB_X52_Y53_N30
\mess~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~126_combout\ = (\trigger2~input_o\ & (!mess(70))) # (!\trigger2~input_o\ & ((!mess(84))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(70),
	datac => \trigger2~input_o\,
	datad => mess(84),
	combout => \mess~126_combout\);

-- Location: FF_X52_Y53_N31
\mess[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~126_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(77));

-- Location: LCCOMB_X52_Y53_N0
\mess~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~112_combout\ = (\trigger2~input_o\ & ((!mess(63)))) # (!\trigger2~input_o\ & (!mess(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(77),
	datad => mess(63),
	combout => \mess~112_combout\);

-- Location: FF_X52_Y53_N1
\mess[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~112_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(70));

-- Location: LCCOMB_X52_Y53_N6
\mess~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~98_combout\ = (\trigger2~input_o\ & (!mess(56))) # (!\trigger2~input_o\ & ((!mess(70))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(56),
	datac => \trigger2~input_o\,
	datad => mess(70),
	combout => \mess~98_combout\);

-- Location: FF_X52_Y53_N7
\mess[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~98_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(63));

-- Location: LCCOMB_X52_Y53_N4
\mess~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~84_combout\ = (\trigger2~input_o\ & (mess(49))) # (!\trigger2~input_o\ & ((!mess(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(49),
	datad => mess(63),
	combout => \mess~84_combout\);

-- Location: FF_X52_Y53_N5
\mess[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~84_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(56));

-- Location: LCCOMB_X52_Y53_N14
\mess~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~70_combout\ = (\trigger2~input_o\ & ((!mess(42)))) # (!\trigger2~input_o\ & (mess(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(56),
	datac => \trigger2~input_o\,
	datad => mess(42),
	combout => \mess~70_combout\);

-- Location: FF_X52_Y53_N15
\mess[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~70_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(49));

-- Location: LCCOMB_X52_Y53_N12
\mess~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~56_combout\ = (\trigger2~input_o\ & ((!mess(35)))) # (!\trigger2~input_o\ & (!mess(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(49),
	datad => mess(35),
	combout => \mess~56_combout\);

-- Location: FF_X52_Y53_N13
\mess[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~56_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(42));

-- Location: LCCOMB_X52_Y53_N18
\mess~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~42_combout\ = (\trigger2~input_o\ & (mess(28))) # (!\trigger2~input_o\ & ((!mess(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datab => mess(28),
	datad => mess(42),
	combout => \mess~42_combout\);

-- Location: FF_X52_Y53_N19
\mess[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~42_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(35));

-- Location: LCCOMB_X52_Y53_N28
\mess~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~35_combout\ = (\trigger2~input_o\ & (mess(21))) # (!\trigger2~input_o\ & ((mess(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(21),
	datad => mess(35),
	combout => \mess~35_combout\);

-- Location: FF_X52_Y53_N29
\mess[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~35_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(28));

-- Location: LCCOMB_X52_Y53_N22
\mess~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~28_combout\ = (\trigger2~input_o\ & ((mess(14)))) # (!\trigger2~input_o\ & (mess(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mess(28),
	datac => \trigger2~input_o\,
	datad => mess(14),
	combout => \mess~28_combout\);

-- Location: FF_X52_Y53_N23
\mess[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~28_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(21));

-- Location: LCCOMB_X52_Y53_N24
\mess~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~21_combout\ = (\trigger2~input_o\ & ((!mess(7)))) # (!\trigger2~input_o\ & (mess(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mess(21),
	datac => \trigger2~input_o\,
	datad => mess(7),
	combout => \mess~21_combout\);

-- Location: FF_X52_Y53_N25
\mess[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~21_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(14));

-- Location: LCCOMB_X51_Y53_N8
\mess~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~14_combout\ = (\trigger2~input_o\ & (!mess(0))) # (!\trigger2~input_o\ & ((!mess(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(0),
	datad => mess(14),
	combout => \mess~14_combout\);

-- Location: FF_X51_Y53_N9
\mess[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~14_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(7));

-- Location: LCCOMB_X51_Y53_N14
\mess~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mess~7_combout\ = (\trigger2~input_o\ & ((!mess(343)))) # (!\trigger2~input_o\ & (!mess(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger2~input_o\,
	datac => mess(7),
	datad => mess(343),
	combout => \mess~7_combout\);

-- Location: FF_X51_Y53_N15
\mess[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \mess~7_combout\,
	ena => \mess[349]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mess(0));

-- Location: LCCOMB_X52_Y51_N26
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

-- Location: FF_X52_Y51_N27
\HEX5[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX5[0]~4_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5[0]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N12
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

-- Location: FF_X52_Y51_N13
\HEX4[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[6]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[6]~reg0_q\);

-- Location: LCCOMB_X51_Y52_N8
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

-- Location: FF_X51_Y52_N9
\HEX4[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[5]~0_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[5]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N20
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

-- Location: FF_X52_Y53_N21
\HEX4[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[4]~1_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[4]~reg0_q\);

-- Location: FF_X52_Y50_N5
\HEX4[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	asdata => mess(10),
	clrn => \ALT_INV_trigger0~input_o\,
	sload => VCC,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[3]~reg0_q\);

-- Location: LCCOMB_X54_Y50_N16
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

-- Location: FF_X54_Y50_N17
\HEX4[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[2]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[2]~reg0_q\);

-- Location: LCCOMB_X49_Y52_N20
\HEX4[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX4[1]~reg0feeder_combout\ = mess(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(8),
	combout => \HEX4[1]~reg0feeder_combout\);

-- Location: FF_X49_Y52_N21
\HEX4[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[1]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[1]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N14
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

-- Location: FF_X52_Y51_N15
\HEX4[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX4[0]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4[0]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N4
\HEX3[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[6]~0_combout\ = !mess(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(20),
	combout => \HEX3[6]~0_combout\);

-- Location: FF_X52_Y51_N5
\HEX3[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[6]~0_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[6]~reg0_q\);

-- Location: LCCOMB_X51_Y52_N2
\HEX3[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[5]~1_combout\ = !mess(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(19),
	combout => \HEX3[5]~1_combout\);

-- Location: FF_X51_Y52_N3
\HEX3[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[5]~1_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[5]~reg0_q\);

-- Location: LCCOMB_X55_Y51_N4
\HEX3[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX3[4]~2_combout\ = !mess(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(18),
	combout => \HEX3[4]~2_combout\);

-- Location: FF_X55_Y51_N5
\HEX3[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[4]~2_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[4]~reg0_q\);

-- Location: LCCOMB_X52_Y50_N22
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

-- Location: FF_X52_Y50_N23
\HEX3[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[3]~3_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[3]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N4
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

-- Location: FF_X51_Y50_N5
\HEX3[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[2]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[2]~reg0_q\);

-- Location: LCCOMB_X54_Y51_N2
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

-- Location: FF_X54_Y51_N3
\HEX3[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[1]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[1]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N10
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

-- Location: FF_X52_Y53_N11
\HEX3[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX3[0]~4_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3[0]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N6
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

-- Location: FF_X52_Y51_N7
\HEX2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[6]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[6]~reg0_q\);

-- Location: LCCOMB_X51_Y52_N12
\HEX2[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[5]~0_combout\ = !mess(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(26),
	combout => \HEX2[5]~0_combout\);

-- Location: FF_X51_Y52_N13
\HEX2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[5]~0_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[5]~reg0_q\);

-- Location: LCCOMB_X55_Y51_N22
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

-- Location: FF_X55_Y51_N23
\HEX2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[4]~1_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[4]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N6
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

-- Location: FF_X51_Y50_N7
\HEX2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[3]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[3]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N16
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

-- Location: FF_X51_Y50_N17
\HEX2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[2]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[2]~reg0_q\);

-- Location: LCCOMB_X54_Y51_N20
\HEX2[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX2[1]~2_combout\ = !mess(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mess(22),
	combout => \HEX2[1]~2_combout\);

-- Location: FF_X54_Y51_N21
\HEX2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[1]~2_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[1]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N8
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

-- Location: FF_X52_Y53_N9
\HEX2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX2[0]~3_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[0]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N20
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

-- Location: FF_X52_Y51_N21
\HEX1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[6]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[6]~reg0_q\);

-- Location: LCCOMB_X51_Y52_N14
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

-- Location: FF_X51_Y52_N15
\HEX1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[5]~0_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[5]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N2
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

-- Location: FF_X52_Y51_N3
\HEX1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[4]~1_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[4]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N26
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

-- Location: FF_X51_Y50_N27
\HEX1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[3]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[3]~reg0_q\);

-- Location: LCCOMB_X52_Y50_N30
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

-- Location: FF_X52_Y50_N31
\HEX1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[2]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[2]~reg0_q\);

-- Location: LCCOMB_X54_Y51_N22
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

-- Location: FF_X54_Y51_N23
\HEX1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[1]~2_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[1]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N26
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

-- Location: FF_X52_Y53_N27
\HEX1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX1[0]~3_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[0]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N16
\HEX0[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[6]~0_combout\ = !mess(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(41),
	combout => \HEX0[6]~0_combout\);

-- Location: FF_X52_Y51_N17
\HEX0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[6]~0_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[6]~reg0_q\);

-- Location: LCCOMB_X51_Y52_N16
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

-- Location: FF_X51_Y52_N17
\HEX0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[5]~1_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[5]~reg0_q\);

-- Location: LCCOMB_X55_Y51_N16
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

-- Location: FF_X55_Y51_N17
\HEX0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[4]~2_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[4]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N12
\HEX0[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[3]~3_combout\ = !mess(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(38),
	combout => \HEX0[3]~3_combout\);

-- Location: FF_X51_Y50_N13
\HEX0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[3]~3_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[3]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N22
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

-- Location: FF_X51_Y50_N23
\HEX0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[2]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[2]~reg0_q\);

-- Location: LCCOMB_X54_Y50_N26
\HEX0[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0[1]~reg0feeder_combout\ = mess(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mess(36),
	combout => \HEX0[1]~reg0feeder_combout\);

-- Location: FF_X54_Y50_N27
\HEX0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[1]~reg0feeder_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[1]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N30
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

-- Location: FF_X52_Y51_N31
\HEX0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk_lent~clkctrl_outclk\,
	d => \HEX0[0]~4_combout\,
	clrn => \ALT_INV_trigger0~input_o\,
	ena => \ALT_INV_trigger1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[0]~reg0_q\);

-- Location: IOIBUF_X46_Y54_N29
\bouton0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bouton0,
	o => \bouton0~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\bouton1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bouton1,
	o => \bouton1~input_o\);

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

ww_led3 <= \led3~output_o\;

ww_led4 <= \led4~output_o\;

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


