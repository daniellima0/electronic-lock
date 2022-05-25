-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/23/2022 15:22:14"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fechadura IS
    PORT (
	clock : IN std_logic;
	switches : IN std_logic_vector(9 DOWNTO 0);
	led_acerto : OUT std_logic;
	led_erro : OUT std_logic
	);
END fechadura;

-- Design Ports Information
-- led_acerto	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_erro	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[4]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[0]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[8]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[7]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fechadura IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_switches : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_led_acerto : std_logic;
SIGNAL ww_led_erro : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \switches[9]~input_o\ : std_logic;
SIGNAL \switches[7]~input_o\ : std_logic;
SIGNAL \switches[2]~input_o\ : std_logic;
SIGNAL \switches[4]~input_o\ : std_logic;
SIGNAL \switches[0]~input_o\ : std_logic;
SIGNAL \switches[5]~input_o\ : std_logic;
SIGNAL \switches[3]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \switches[6]~input_o\ : std_logic;
SIGNAL \switches[1]~input_o\ : std_logic;
SIGNAL \switches[8]~input_o\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \estado.a~feeder_combout\ : std_logic;
SIGNAL \estado.a~DUPLICATE_q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estado.b~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estado.c~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \estado.d~q\ : std_logic;
SIGNAL \estado.acerto~0_combout\ : std_logic;
SIGNAL \estado.acerto~q\ : std_logic;
SIGNAL \led_acerto~reg0_q\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \estado.a~q\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \estado.erro~q\ : std_logic;
SIGNAL \led_erro~reg0_q\ : std_logic;
SIGNAL digit_var : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_estado.acerto~q\ : std_logic;
SIGNAL \ALT_INV_estado.erro~q\ : std_logic;
SIGNAL ALT_INV_digit_var : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.d~q\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \ALT_INV_estado.b~q\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.c~q\ : std_logic;
SIGNAL \ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.a~q\ : std_logic;
SIGNAL \ALT_INV_estado.a~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_switches[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector7~3_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_switches <= switches;
led_acerto <= ww_led_acerto;
led_erro <= ww_led_erro;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_estado.acerto~q\ <= NOT \estado.acerto~q\;
\ALT_INV_estado.erro~q\ <= NOT \estado.erro~q\;
ALT_INV_digit_var(0) <= NOT digit_var(0);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_WideNor0~0_combout\ <= NOT \WideNor0~0_combout\;
\ALT_INV_WideNor0~1_combout\ <= NOT \WideNor0~1_combout\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_WideNor0~2_combout\ <= NOT \WideNor0~2_combout\;
\ALT_INV_WideNor0~3_combout\ <= NOT \WideNor0~3_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_estado.d~q\ <= NOT \estado.d~q\;
ALT_INV_digit_var(3) <= NOT digit_var(3);
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
ALT_INV_digit_var(2) <= NOT digit_var(2);
\ALT_INV_Selector1~1_combout\ <= NOT \Selector1~1_combout\;
\ALT_INV_estado.b~q\ <= NOT \estado.b~q\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_estado.c~q\ <= NOT \estado.c~q\;
\ALT_INV_Selector7~1_combout\ <= NOT \Selector7~1_combout\;
\ALT_INV_Selector7~2_combout\ <= NOT \Selector7~2_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
ALT_INV_digit_var(1) <= NOT digit_var(1);
\ALT_INV_Equal7~1_combout\ <= NOT \Equal7~1_combout\;
\ALT_INV_Selector2~1_combout\ <= NOT \Selector2~1_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_estado.a~q\ <= NOT \estado.a~q\;
\ALT_INV_estado.a~DUPLICATE_q\ <= NOT \estado.a~DUPLICATE_q\;
\ALT_INV_switches[9]~input_o\ <= NOT \switches[9]~input_o\;
\ALT_INV_switches[6]~input_o\ <= NOT \switches[6]~input_o\;
\ALT_INV_switches[7]~input_o\ <= NOT \switches[7]~input_o\;
\ALT_INV_switches[5]~input_o\ <= NOT \switches[5]~input_o\;
\ALT_INV_switches[8]~input_o\ <= NOT \switches[8]~input_o\;
\ALT_INV_switches[1]~input_o\ <= NOT \switches[1]~input_o\;
\ALT_INV_switches[0]~input_o\ <= NOT \switches[0]~input_o\;
\ALT_INV_switches[4]~input_o\ <= NOT \switches[4]~input_o\;
\ALT_INV_switches[3]~input_o\ <= NOT \switches[3]~input_o\;
\ALT_INV_switches[2]~input_o\ <= NOT \switches[2]~input_o\;
\ALT_INV_Selector7~3_combout\ <= NOT \Selector7~3_combout\;

-- Location: IOOBUF_X0_Y19_N5
\led_acerto~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led_acerto~reg0_q\,
	devoe => ww_devoe,
	o => ww_led_acerto);

-- Location: IOOBUF_X0_Y19_N39
\led_erro~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led_erro~reg0_q\,
	devoe => ww_devoe,
	o => ww_led_erro);

-- Location: IOIBUF_X54_Y18_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X0_Y20_N55
\switches[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(9),
	o => \switches[9]~input_o\);

-- Location: IOIBUF_X0_Y20_N38
\switches[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(7),
	o => \switches[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N4
\switches[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(2),
	o => \switches[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N21
\switches[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(4),
	o => \switches[4]~input_o\);

-- Location: IOIBUF_X0_Y20_N21
\switches[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(0),
	o => \switches[0]~input_o\);

-- Location: IOIBUF_X0_Y19_N55
\switches[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(5),
	o => \switches[5]~input_o\);

-- Location: IOIBUF_X0_Y21_N38
\switches[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(3),
	o => \switches[3]~input_o\);

-- Location: LABCELL_X1_Y21_N54
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\switches[3]~input_o\ & ( (!\switches[2]~input_o\ & (!\switches[4]~input_o\ & (!\switches[0]~input_o\ & !\switches[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[2]~input_o\,
	datab => \ALT_INV_switches[4]~input_o\,
	datac => \ALT_INV_switches[0]~input_o\,
	datad => \ALT_INV_switches[5]~input_o\,
	dataf => \ALT_INV_switches[3]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X0_Y21_N55
\switches[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(6),
	o => \switches[6]~input_o\);

-- Location: IOIBUF_X0_Y20_N4
\switches[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(1),
	o => \switches[1]~input_o\);

-- Location: IOIBUF_X0_Y19_N21
\switches[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(8),
	o => \switches[8]~input_o\);

-- Location: LABCELL_X1_Y21_N30
\WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = ( \switches[1]~input_o\ & ( !\switches[8]~input_o\ & ( (!\switches[9]~input_o\ & (!\switches[7]~input_o\ & (\Equal1~1_combout\ & !\switches[6]~input_o\))) ) ) ) # ( !\switches[1]~input_o\ & ( !\switches[8]~input_o\ & ( 
-- (\switches[9]~input_o\ & (!\switches[7]~input_o\ & (\Equal1~1_combout\ & !\switches[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[9]~input_o\,
	datab => \ALT_INV_switches[7]~input_o\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_switches[6]~input_o\,
	datae => \ALT_INV_switches[1]~input_o\,
	dataf => \ALT_INV_switches[8]~input_o\,
	combout => \WideNor0~0_combout\);

-- Location: LABCELL_X1_Y21_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\switches[1]~input_o\ & ( !\switches[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switches[8]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X1_Y21_N21
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\switches[9]~input_o\ & ( (!\switches[7]~input_o\ & !\switches[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switches[7]~input_o\,
	datad => \ALT_INV_switches[6]~input_o\,
	dataf => \ALT_INV_switches[9]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X1_Y21_N24
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\switches[0]~input_o\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & !\switches[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_switches[5]~input_o\,
	dataf => \ALT_INV_switches[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X1_Y21_N57
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\switches[3]~input_o\ & ( (!\switches[2]~input_o\ & !\switches[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[2]~input_o\,
	datab => \ALT_INV_switches[4]~input_o\,
	dataf => \ALT_INV_switches[3]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X1_Y21_N51
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\switches[9]~input_o\ & !\switches[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[9]~input_o\,
	datad => \ALT_INV_switches[6]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: LABCELL_X1_Y21_N12
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \switches[5]~input_o\ & ( \Equal7~0_combout\ & ( (\Equal0~0_combout\ & (!\switches[7]~input_o\ & (!\switches[0]~input_o\ & \Equal1~0_combout\))) ) ) ) # ( !\switches[5]~input_o\ & ( \Equal7~0_combout\ & ( (\Equal0~0_combout\ & 
-- (\switches[7]~input_o\ & (!\switches[0]~input_o\ & \Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_switches[7]~input_o\,
	datac => \ALT_INV_switches[0]~input_o\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_switches[5]~input_o\,
	dataf => \ALT_INV_Equal7~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X2_Y21_N24
\WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = ( !\Selector1~0_combout\ & ( \switches[4]~input_o\ & ( !\WideNor0~0_combout\ ) ) ) # ( !\Selector1~0_combout\ & ( !\switches[4]~input_o\ & ( (!\WideNor0~0_combout\ & (((!\switches[3]~input_o\) # (!\Equal2~0_combout\)) # 
-- (\switches[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~0_combout\,
	datab => \ALT_INV_switches[2]~input_o\,
	datac => \ALT_INV_switches[3]~input_o\,
	datad => \ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_Selector1~0_combout\,
	dataf => \ALT_INV_switches[4]~input_o\,
	combout => \WideNor0~1_combout\);

-- Location: LABCELL_X1_Y21_N18
\Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = ( \Equal7~0_combout\ & ( (\switches[7]~input_o\ & (\Equal0~0_combout\ & \Equal1~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switches[7]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal7~0_combout\,
	combout => \Equal7~1_combout\);

-- Location: LABCELL_X1_Y21_N27
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( !\switches[9]~input_o\ & ( (\Equal0~0_combout\ & (!\switches[7]~input_o\ & (\switches[6]~input_o\ & \Equal1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_switches[7]~input_o\,
	datac => \ALT_INV_switches[6]~input_o\,
	datad => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_switches[9]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LABCELL_X1_Y21_N6
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( !\Equal6~0_combout\ & ( \Equal2~0_combout\ & ( (!\Equal7~1_combout\ & ((!\switches[2]~input_o\ $ (\switches[3]~input_o\)) # (\switches[4]~input_o\))) ) ) ) # ( !\Equal6~0_combout\ & ( !\Equal2~0_combout\ & ( !\Equal7~1_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010100010001010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~1_combout\,
	datab => \ALT_INV_switches[4]~input_o\,
	datac => \ALT_INV_switches[2]~input_o\,
	datad => \ALT_INV_switches[3]~input_o\,
	datae => \ALT_INV_Equal6~0_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X1_Y21_N0
\WideNor0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = ( !\switches[5]~input_o\ & ( !\switches[1]~input_o\ & ( (\Equal0~1_combout\ & (\Equal1~0_combout\ & (!\switches[0]~input_o\ $ (!\switches[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_switches[0]~input_o\,
	datad => \ALT_INV_switches[8]~input_o\,
	datae => \ALT_INV_switches[5]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \WideNor0~2_combout\);

-- Location: LABCELL_X1_Y21_N42
\WideNor0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = ( !\Equal6~0_combout\ & ( \Equal2~0_combout\ & ( (!\WideNor0~2_combout\ & ((!\switches[2]~input_o\ $ (\switches[4]~input_o\)) # (\switches[3]~input_o\))) ) ) ) # ( !\Equal6~0_combout\ & ( !\Equal2~0_combout\ & ( 
-- !\WideNor0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010100010001010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~2_combout\,
	datab => \ALT_INV_switches[3]~input_o\,
	datac => \ALT_INV_switches[2]~input_o\,
	datad => \ALT_INV_switches[4]~input_o\,
	datae => \ALT_INV_Equal6~0_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \WideNor0~3_combout\);

-- Location: FF_X2_Y21_N26
\digit_var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_var(1));

-- Location: LABCELL_X2_Y21_N30
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( digit_var(1) & ( (!\Selector2~0_combout\) # ((\WideNor0~1_combout\ & \WideNor0~3_combout\)) ) ) # ( !digit_var(1) & ( !\Selector2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideNor0~1_combout\,
	datac => \ALT_INV_Selector2~0_combout\,
	datad => \ALT_INV_WideNor0~3_combout\,
	dataf => ALT_INV_digit_var(1),
	combout => \Selector2~1_combout\);

-- Location: LABCELL_X1_Y21_N36
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \switches[4]~input_o\ & ( \Equal2~0_combout\ & ( (!\Equal6~0_combout\ & (!\Selector1~0_combout\ & ((\switches[3]~input_o\) # (\switches[2]~input_o\)))) ) ) ) # ( !\switches[4]~input_o\ & ( \Equal2~0_combout\ & ( 
-- (!\Equal6~0_combout\ & !\Selector1~0_combout\) ) ) ) # ( \switches[4]~input_o\ & ( !\Equal2~0_combout\ & ( (!\Equal6~0_combout\ & !\Selector1~0_combout\) ) ) ) # ( !\switches[4]~input_o\ & ( !\Equal2~0_combout\ & ( (!\Equal6~0_combout\ & 
-- !\Selector1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~0_combout\,
	datab => \ALT_INV_Selector1~0_combout\,
	datac => \ALT_INV_switches[2]~input_o\,
	datad => \ALT_INV_switches[3]~input_o\,
	datae => \ALT_INV_switches[4]~input_o\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LABCELL_X1_Y21_N33
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \switches[8]~input_o\ & ( !\switches[1]~input_o\ & ( (!\switches[9]~input_o\ & (!\switches[7]~input_o\ & (!\switches[6]~input_o\ & \Equal1~1_combout\))) ) ) ) # ( !\switches[8]~input_o\ & ( !\switches[1]~input_o\ & ( 
-- (\switches[9]~input_o\ & (!\switches[7]~input_o\ & (!\switches[6]~input_o\ & \Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[9]~input_o\,
	datab => \ALT_INV_switches[7]~input_o\,
	datac => \ALT_INV_switches[6]~input_o\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_switches[8]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X2_Y21_N9
\Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = ( \Selector1~1_combout\ & ( (\WideNor0~1_combout\ & (\WideNor0~3_combout\ & digit_var(2))) ) ) # ( !\Selector1~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~1_combout\,
	datac => \ALT_INV_WideNor0~3_combout\,
	datad => ALT_INV_digit_var(2),
	dataf => \ALT_INV_Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X2_Y21_N10
\digit_var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_var(2));

-- Location: LABCELL_X2_Y21_N18
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \WideNor0~1_combout\ & ( ((\WideNor0~3_combout\ & digit_var(3))) # (\Selector0~0_combout\) ) ) # ( !\WideNor0~1_combout\ & ( \Selector0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideNor0~3_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => ALT_INV_digit_var(3),
	dataf => \ALT_INV_WideNor0~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X2_Y21_N20
\digit_var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_var(3));

-- Location: LABCELL_X2_Y21_N42
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( digit_var(2) & ( digit_var(3) & ( (\Selector1~1_combout\ & (!\Selector0~0_combout\ & ((!\WideNor0~3_combout\) # (!\WideNor0~1_combout\)))) ) ) ) # ( !digit_var(2) & ( digit_var(3) & ( (\Selector1~1_combout\ & 
-- (!\Selector0~0_combout\ & ((!\WideNor0~3_combout\) # (!\WideNor0~1_combout\)))) ) ) ) # ( digit_var(2) & ( !digit_var(3) & ( (\Selector1~1_combout\ & (!\Selector0~0_combout\ & ((!\WideNor0~3_combout\) # (!\WideNor0~1_combout\)))) ) ) ) # ( !digit_var(2) & 
-- ( !digit_var(3) & ( (\Selector1~1_combout\ & !\Selector0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000100000001010000010000000101000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~1_combout\,
	datab => \ALT_INV_WideNor0~3_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_WideNor0~1_combout\,
	datae => ALT_INV_digit_var(2),
	dataf => ALT_INV_digit_var(3),
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X2_Y21_N21
\estado.a~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.a~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \estado.a~feeder_combout\);

-- Location: FF_X2_Y21_N22
\estado.a~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \estado.a~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.a~DUPLICATE_q\);

-- Location: FF_X2_Y21_N41
\digit_var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_var(0));

-- Location: LABCELL_X2_Y21_N57
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( digit_var(0) & ( (!\WideNor0~1_combout\) # (\WideNor0~3_combout\) ) ) # ( !digit_var(0) & ( !\WideNor0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideNor0~1_combout\,
	datad => \ALT_INV_WideNor0~3_combout\,
	dataf => ALT_INV_digit_var(0),
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X2_Y21_N0
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \Selector8~0_combout\ & ( (!\estado.a~DUPLICATE_q\ & (!\Selector2~1_combout\ & !\Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado.a~DUPLICATE_q\,
	datac => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_Selector3~0_combout\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X2_Y21_N2
\estado.b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.b~q\);

-- Location: LABCELL_X2_Y21_N33
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( !\Selector2~1_combout\ & ( (\estado.b~q\ & (\Selector8~0_combout\ & \Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.b~q\,
	datac => \ALT_INV_Selector8~0_combout\,
	datad => \ALT_INV_Selector3~0_combout\,
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X2_Y21_N35
\estado.c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.c~q\);

-- Location: LABCELL_X2_Y21_N6
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \Selector2~1_combout\ & ( (\Selector8~0_combout\ & (\estado.c~q\ & !\Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector8~0_combout\,
	datac => \ALT_INV_estado.c~q\,
	datad => \ALT_INV_Selector3~0_combout\,
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X2_Y21_N8
\estado.d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.d~q\);

-- Location: LABCELL_X2_Y21_N54
\estado.acerto~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.acerto~0_combout\ = ( \Selector8~0_combout\ & ( ((\Selector2~1_combout\ & (\estado.d~q\ & \Selector3~0_combout\))) # (\estado.acerto~q\) ) ) # ( !\Selector8~0_combout\ & ( \estado.acerto~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector2~1_combout\,
	datab => \ALT_INV_estado.d~q\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_estado.acerto~q\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \estado.acerto~0_combout\);

-- Location: FF_X2_Y21_N55
\estado.acerto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \estado.acerto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.acerto~q\);

-- Location: FF_X2_Y21_N28
\led_acerto~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \estado.acerto~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_acerto~reg0_q\);

-- Location: LABCELL_X2_Y21_N48
\Selector7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = ( \estado.b~q\ & ( digit_var(0) & ( (!\estado.erro~q\ & ((!\WideNor0~1_combout\) # (\WideNor0~3_combout\))) ) ) ) # ( !\estado.b~q\ & ( digit_var(0) & ( (!\estado.erro~q\ & (((!\WideNor0~1_combout\) # (!\estado.d~q\)) # 
-- (\WideNor0~3_combout\))) ) ) ) # ( \estado.b~q\ & ( !digit_var(0) & ( (!\WideNor0~1_combout\ & !\estado.erro~q\) ) ) ) # ( !\estado.b~q\ & ( !digit_var(0) & ( (!\estado.erro~q\ & ((!\WideNor0~1_combout\) # (!\estado.d~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000110000001100000011110000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~3_combout\,
	datab => \ALT_INV_WideNor0~1_combout\,
	datac => \ALT_INV_estado.erro~q\,
	datad => \ALT_INV_estado.d~q\,
	datae => \ALT_INV_estado.b~q\,
	dataf => ALT_INV_digit_var(0),
	combout => \Selector7~3_combout\);

-- Location: FF_X2_Y21_N23
\estado.a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \estado.a~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.a~q\);

-- Location: LABCELL_X2_Y21_N12
\Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = ( digit_var(0) & ( (!\estado.a~q\ & (((!\WideNor0~1_combout\)) # (\WideNor0~3_combout\))) # (\estado.a~q\ & (\estado.c~q\ & ((!\WideNor0~1_combout\) # (\WideNor0~3_combout\)))) ) ) # ( !digit_var(0) & ( (!\WideNor0~1_combout\ & 
-- ((!\estado.a~q\) # (\estado.c~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000000101011110000000010101111001000111010111100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.a~q\,
	datab => \ALT_INV_WideNor0~3_combout\,
	datac => \ALT_INV_estado.c~q\,
	datad => \ALT_INV_WideNor0~1_combout\,
	dataf => ALT_INV_digit_var(0),
	combout => \Selector7~2_combout\);

-- Location: LABCELL_X2_Y21_N3
\Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ( !\estado.d~q\ & ( !\estado.c~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.c~q\,
	dataf => \ALT_INV_estado.d~q\,
	combout => \Selector7~1_combout\);

-- Location: LABCELL_X2_Y21_N15
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \estado.a~DUPLICATE_q\ & ( !\estado.b~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.b~q\,
	dataf => \ALT_INV_estado.a~DUPLICATE_q\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X2_Y21_N36
\Selector7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = ( \Selector8~0_combout\ & ( \Selector7~0_combout\ & ( (!\Selector7~3_combout\) # (((!\Selector7~1_combout\ & !\Selector2~1_combout\)) # (\Selector7~2_combout\)) ) ) ) # ( !\Selector8~0_combout\ & ( \Selector7~0_combout\ & ( 
-- (!\Selector7~3_combout\) # ((!\Selector7~1_combout\) # (\Selector7~2_combout\)) ) ) ) # ( \Selector8~0_combout\ & ( !\Selector7~0_combout\ & ( (!\Selector7~3_combout\) # (((!\Selector7~1_combout\) # (\Selector2~1_combout\)) # (\Selector7~2_combout\)) ) ) 
-- ) # ( !\Selector8~0_combout\ & ( !\Selector7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110111111111111111011111110111111101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector7~3_combout\,
	datab => \ALT_INV_Selector7~2_combout\,
	datac => \ALT_INV_Selector7~1_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	datae => \ALT_INV_Selector8~0_combout\,
	dataf => \ALT_INV_Selector7~0_combout\,
	combout => \Selector7~4_combout\);

-- Location: FF_X2_Y21_N38
\estado.erro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.erro~q\);

-- Location: FF_X2_Y21_N17
\led_erro~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \estado.erro~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_erro~reg0_q\);

-- Location: LABCELL_X26_Y29_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


