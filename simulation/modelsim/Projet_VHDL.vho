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

-- DATE "02/29/2020 17:13:34"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	septseg IS
    PORT (
	HEX00 : BUFFER std_logic;
	HEX01 : BUFFER std_logic;
	HEX02 : BUFFER std_logic;
	HEX03 : BUFFER std_logic;
	HEX04 : BUFFER std_logic;
	HEX05 : BUFFER std_logic;
	HEX06 : BUFFER std_logic;
	HEX10 : BUFFER std_logic;
	HEX11 : BUFFER std_logic;
	HEX12 : BUFFER std_logic;
	HEX13 : BUFFER std_logic;
	HEX14 : BUFFER std_logic;
	HEX15 : BUFFER std_logic;
	HEX16 : BUFFER std_logic;
	HEX20 : BUFFER std_logic;
	HEX21 : BUFFER std_logic;
	HEX22 : BUFFER std_logic;
	HEX23 : BUFFER std_logic;
	HEX24 : BUFFER std_logic;
	HEX25 : BUFFER std_logic;
	HEX26 : BUFFER std_logic;
	HEX30 : BUFFER std_logic;
	HEX31 : BUFFER std_logic;
	HEX32 : BUFFER std_logic;
	HEX33 : BUFFER std_logic;
	HEX34 : BUFFER std_logic;
	HEX35 : BUFFER std_logic;
	HEX36 : BUFFER std_logic;
	HEX40 : BUFFER std_logic;
	HEX41 : BUFFER std_logic;
	HEX42 : BUFFER std_logic;
	HEX43 : BUFFER std_logic;
	HEX44 : BUFFER std_logic;
	HEX45 : BUFFER std_logic;
	HEX46 : BUFFER std_logic;
	HEX50 : BUFFER std_logic;
	HEX51 : BUFFER std_logic;
	HEX52 : BUFFER std_logic;
	HEX53 : BUFFER std_logic;
	HEX54 : BUFFER std_logic;
	HEX55 : BUFFER std_logic;
	HEX56 : BUFFER std_logic
	);
END septseg;

-- Design Ports Information
-- HEX00	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX01	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX02	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX03	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX04	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX05	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX06	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX10	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX11	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX12	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX13	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX14	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX15	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX16	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX20	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX21	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX22	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX23	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX24	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX25	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX26	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX30	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX31	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX32	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX33	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX34	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX35	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX36	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX40	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX41	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX42	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX43	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX44	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX45	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX46	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX50	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX51	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX52	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX53	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX54	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX55	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX56	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_HEX00 : std_logic;
SIGNAL ww_HEX01 : std_logic;
SIGNAL ww_HEX02 : std_logic;
SIGNAL ww_HEX03 : std_logic;
SIGNAL ww_HEX04 : std_logic;
SIGNAL ww_HEX05 : std_logic;
SIGNAL ww_HEX06 : std_logic;
SIGNAL ww_HEX10 : std_logic;
SIGNAL ww_HEX11 : std_logic;
SIGNAL ww_HEX12 : std_logic;
SIGNAL ww_HEX13 : std_logic;
SIGNAL ww_HEX14 : std_logic;
SIGNAL ww_HEX15 : std_logic;
SIGNAL ww_HEX16 : std_logic;
SIGNAL ww_HEX20 : std_logic;
SIGNAL ww_HEX21 : std_logic;
SIGNAL ww_HEX22 : std_logic;
SIGNAL ww_HEX23 : std_logic;
SIGNAL ww_HEX24 : std_logic;
SIGNAL ww_HEX25 : std_logic;
SIGNAL ww_HEX26 : std_logic;
SIGNAL ww_HEX30 : std_logic;
SIGNAL ww_HEX31 : std_logic;
SIGNAL ww_HEX32 : std_logic;
SIGNAL ww_HEX33 : std_logic;
SIGNAL ww_HEX34 : std_logic;
SIGNAL ww_HEX35 : std_logic;
SIGNAL ww_HEX36 : std_logic;
SIGNAL ww_HEX40 : std_logic;
SIGNAL ww_HEX41 : std_logic;
SIGNAL ww_HEX42 : std_logic;
SIGNAL ww_HEX43 : std_logic;
SIGNAL ww_HEX44 : std_logic;
SIGNAL ww_HEX45 : std_logic;
SIGNAL ww_HEX46 : std_logic;
SIGNAL ww_HEX50 : std_logic;
SIGNAL ww_HEX51 : std_logic;
SIGNAL ww_HEX52 : std_logic;
SIGNAL ww_HEX53 : std_logic;
SIGNAL ww_HEX54 : std_logic;
SIGNAL ww_HEX55 : std_logic;
SIGNAL ww_HEX56 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX00~output_o\ : std_logic;
SIGNAL \HEX01~output_o\ : std_logic;
SIGNAL \HEX02~output_o\ : std_logic;
SIGNAL \HEX03~output_o\ : std_logic;
SIGNAL \HEX04~output_o\ : std_logic;
SIGNAL \HEX05~output_o\ : std_logic;
SIGNAL \HEX06~output_o\ : std_logic;
SIGNAL \HEX10~output_o\ : std_logic;
SIGNAL \HEX11~output_o\ : std_logic;
SIGNAL \HEX12~output_o\ : std_logic;
SIGNAL \HEX13~output_o\ : std_logic;
SIGNAL \HEX14~output_o\ : std_logic;
SIGNAL \HEX15~output_o\ : std_logic;
SIGNAL \HEX16~output_o\ : std_logic;
SIGNAL \HEX20~output_o\ : std_logic;
SIGNAL \HEX21~output_o\ : std_logic;
SIGNAL \HEX22~output_o\ : std_logic;
SIGNAL \HEX23~output_o\ : std_logic;
SIGNAL \HEX24~output_o\ : std_logic;
SIGNAL \HEX25~output_o\ : std_logic;
SIGNAL \HEX26~output_o\ : std_logic;
SIGNAL \HEX30~output_o\ : std_logic;
SIGNAL \HEX31~output_o\ : std_logic;
SIGNAL \HEX32~output_o\ : std_logic;
SIGNAL \HEX33~output_o\ : std_logic;
SIGNAL \HEX34~output_o\ : std_logic;
SIGNAL \HEX35~output_o\ : std_logic;
SIGNAL \HEX36~output_o\ : std_logic;
SIGNAL \HEX40~output_o\ : std_logic;
SIGNAL \HEX41~output_o\ : std_logic;
SIGNAL \HEX42~output_o\ : std_logic;
SIGNAL \HEX43~output_o\ : std_logic;
SIGNAL \HEX44~output_o\ : std_logic;
SIGNAL \HEX45~output_o\ : std_logic;
SIGNAL \HEX46~output_o\ : std_logic;
SIGNAL \HEX50~output_o\ : std_logic;
SIGNAL \HEX51~output_o\ : std_logic;
SIGNAL \HEX52~output_o\ : std_logic;
SIGNAL \HEX53~output_o\ : std_logic;
SIGNAL \HEX54~output_o\ : std_logic;
SIGNAL \HEX55~output_o\ : std_logic;
SIGNAL \HEX56~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX00 <= ww_HEX00;
HEX01 <= ww_HEX01;
HEX02 <= ww_HEX02;
HEX03 <= ww_HEX03;
HEX04 <= ww_HEX04;
HEX05 <= ww_HEX05;
HEX06 <= ww_HEX06;
HEX10 <= ww_HEX10;
HEX11 <= ww_HEX11;
HEX12 <= ww_HEX12;
HEX13 <= ww_HEX13;
HEX14 <= ww_HEX14;
HEX15 <= ww_HEX15;
HEX16 <= ww_HEX16;
HEX20 <= ww_HEX20;
HEX21 <= ww_HEX21;
HEX22 <= ww_HEX22;
HEX23 <= ww_HEX23;
HEX24 <= ww_HEX24;
HEX25 <= ww_HEX25;
HEX26 <= ww_HEX26;
HEX30 <= ww_HEX30;
HEX31 <= ww_HEX31;
HEX32 <= ww_HEX32;
HEX33 <= ww_HEX33;
HEX34 <= ww_HEX34;
HEX35 <= ww_HEX35;
HEX36 <= ww_HEX36;
HEX40 <= ww_HEX40;
HEX41 <= ww_HEX41;
HEX42 <= ww_HEX42;
HEX43 <= ww_HEX43;
HEX44 <= ww_HEX44;
HEX45 <= ww_HEX45;
HEX46 <= ww_HEX46;
HEX50 <= ww_HEX50;
HEX51 <= ww_HEX51;
HEX52 <= ww_HEX52;
HEX53 <= ww_HEX53;
HEX54 <= ww_HEX54;
HEX55 <= ww_HEX55;
HEX56 <= ww_HEX56;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X1_Y1_N24
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

-- Location: IOOBUF_X58_Y54_N16
\HEX00~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX00~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX01~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX01~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX02~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX02~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX03~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX03~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX04~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX04~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX05~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX05~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX06~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX06~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX10~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX10~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX11~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX11~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX12~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX12~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX13~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX13~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX14~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX14~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX15~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX15~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX16~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX16~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX20~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX20~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX21~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX21~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX22~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX22~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX23~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX23~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX24~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX24~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX25~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX25~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX26~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX26~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX30~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX30~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX31~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX31~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX32~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX32~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX33~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX33~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX34~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX34~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX35~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX35~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX36~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX36~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX40~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX40~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX41~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX41~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX42~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX42~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX43~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX43~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX44~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX44~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX45~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX45~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX46~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX46~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX50~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX50~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX51~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX51~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX52~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX52~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX53~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX53~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX54~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX54~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX55~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX55~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX56~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX56~output_o\);

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

ww_HEX00 <= \HEX00~output_o\;

ww_HEX01 <= \HEX01~output_o\;

ww_HEX02 <= \HEX02~output_o\;

ww_HEX03 <= \HEX03~output_o\;

ww_HEX04 <= \HEX04~output_o\;

ww_HEX05 <= \HEX05~output_o\;

ww_HEX06 <= \HEX06~output_o\;

ww_HEX10 <= \HEX10~output_o\;

ww_HEX11 <= \HEX11~output_o\;

ww_HEX12 <= \HEX12~output_o\;

ww_HEX13 <= \HEX13~output_o\;

ww_HEX14 <= \HEX14~output_o\;

ww_HEX15 <= \HEX15~output_o\;

ww_HEX16 <= \HEX16~output_o\;

ww_HEX20 <= \HEX20~output_o\;

ww_HEX21 <= \HEX21~output_o\;

ww_HEX22 <= \HEX22~output_o\;

ww_HEX23 <= \HEX23~output_o\;

ww_HEX24 <= \HEX24~output_o\;

ww_HEX25 <= \HEX25~output_o\;

ww_HEX26 <= \HEX26~output_o\;

ww_HEX30 <= \HEX30~output_o\;

ww_HEX31 <= \HEX31~output_o\;

ww_HEX32 <= \HEX32~output_o\;

ww_HEX33 <= \HEX33~output_o\;

ww_HEX34 <= \HEX34~output_o\;

ww_HEX35 <= \HEX35~output_o\;

ww_HEX36 <= \HEX36~output_o\;

ww_HEX40 <= \HEX40~output_o\;

ww_HEX41 <= \HEX41~output_o\;

ww_HEX42 <= \HEX42~output_o\;

ww_HEX43 <= \HEX43~output_o\;

ww_HEX44 <= \HEX44~output_o\;

ww_HEX45 <= \HEX45~output_o\;

ww_HEX46 <= \HEX46~output_o\;

ww_HEX50 <= \HEX50~output_o\;

ww_HEX51 <= \HEX51~output_o\;

ww_HEX52 <= \HEX52~output_o\;

ww_HEX53 <= \HEX53~output_o\;

ww_HEX54 <= \HEX54~output_o\;

ww_HEX55 <= \HEX55~output_o\;

ww_HEX56 <= \HEX56~output_o\;
END structure;


