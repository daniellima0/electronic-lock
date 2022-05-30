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

-- DATE "05/30/2022 14:08:53"

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
	led_erro : OUT std_logic;
	display7seg : OUT std_logic_vector(0 TO 6)
	);
END fechadura;

-- Design Ports Information
-- led_acerto	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_erro	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[8]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[9]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_display7seg : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \switches[8]~input_o\ : std_logic;
SIGNAL \switches[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \switches[7]~input_o\ : std_logic;
SIGNAL \switches[3]~input_o\ : std_logic;
SIGNAL \switches[4]~input_o\ : std_logic;
SIGNAL \switches[2]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \switches[9]~input_o\ : std_logic;
SIGNAL \switches[6]~input_o\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \switches[5]~input_o\ : std_logic;
SIGNAL \switches[0]~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \led_acerto~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estado.a~q\ : std_logic;
SIGNAL \estado~10_combout\ : std_logic;
SIGNAL \estado.b~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estado.c~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \estado.d~q\ : std_logic;
SIGNAL \led_acerto~1_combout\ : std_logic;
SIGNAL \led_acerto~reg0_q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \led_erro~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \display7seg[6]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \display7seg[5]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \display7seg[4]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \display7seg[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \display7seg[2]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \display7seg[1]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \display7seg[0]~reg0_q\ : std_logic;
SIGNAL digit_var : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_switches[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \ALT_INV_estado.c~q\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.b~q\ : std_logic;
SIGNAL \ALT_INV_estado.a~q\ : std_logic;
SIGNAL \ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL ALT_INV_digit_var : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_led_acerto~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.d~q\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~3_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_switches <= switches;
led_acerto <= ww_led_acerto;
led_erro <= ww_led_erro;
display7seg <= ww_display7seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_switches[9]~input_o\ <= NOT \switches[9]~input_o\;
\ALT_INV_switches[6]~input_o\ <= NOT \switches[6]~input_o\;
\ALT_INV_switches[7]~input_o\ <= NOT \switches[7]~input_o\;
\ALT_INV_switches[5]~input_o\ <= NOT \switches[5]~input_o\;
\ALT_INV_switches[8]~input_o\ <= NOT \switches[8]~input_o\;
\ALT_INV_switches[1]~input_o\ <= NOT \switches[1]~input_o\;
\ALT_INV_switches[0]~input_o\ <= NOT \switches[0]~input_o\;
\ALT_INV_switches[2]~input_o\ <= NOT \switches[2]~input_o\;
\ALT_INV_switches[4]~input_o\ <= NOT \switches[4]~input_o\;
\ALT_INV_switches[3]~input_o\ <= NOT \switches[3]~input_o\;
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;
\ALT_INV_Selector1~2_combout\ <= NOT \Selector1~2_combout\;
\ALT_INV_Selector7~3_combout\ <= NOT \Selector7~3_combout\;
\ALT_INV_Selector7~2_combout\ <= NOT \Selector7~2_combout\;
\ALT_INV_Selector7~1_combout\ <= NOT \Selector7~1_combout\;
\ALT_INV_estado.c~q\ <= NOT \estado.c~q\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_estado.b~q\ <= NOT \estado.b~q\;
\ALT_INV_estado.a~q\ <= NOT \estado.a~q\;
\ALT_INV_Selector2~1_combout\ <= NOT \Selector2~1_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Equal7~1_combout\ <= NOT \Equal7~1_combout\;
ALT_INV_digit_var(1) <= NOT digit_var(1);
\ALT_INV_led_acerto~0_combout\ <= NOT \led_acerto~0_combout\;
\ALT_INV_Selector1~1_combout\ <= NOT \Selector1~1_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
ALT_INV_digit_var(2) <= NOT digit_var(2);
ALT_INV_digit_var(3) <= NOT digit_var(3);
\ALT_INV_estado.d~q\ <= NOT \estado.d~q\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
ALT_INV_digit_var(0) <= NOT digit_var(0);
\ALT_INV_WideNor0~3_combout\ <= NOT \WideNor0~3_combout\;
\ALT_INV_WideNor0~2_combout\ <= NOT \WideNor0~2_combout\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_WideNor0~1_combout\ <= NOT \WideNor0~1_combout\;
\ALT_INV_WideNor0~0_combout\ <= NOT \WideNor0~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X46_Y0_N36
\display7seg[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg(6));

-- Location: IOOBUF_X50_Y0_N53
\display7seg[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg(5));

-- Location: IOOBUF_X48_Y0_N93
\display7seg[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg(4));

-- Location: IOOBUF_X50_Y0_N36
\display7seg[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg(3));

-- Location: IOOBUF_X48_Y0_N76
\display7seg[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg(2));

-- Location: IOOBUF_X51_Y0_N36
\display7seg[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg(1));

-- Location: IOOBUF_X52_Y0_N53
\display7seg[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg(0));

-- Location: IOIBUF_X14_Y0_N18
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: IOIBUF_X33_Y0_N58
\switches[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(8),
	o => \switches[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\switches[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(1),
	o => \switches[1]~input_o\);

-- Location: MLABCELL_X37_Y6_N24
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

-- Location: IOIBUF_X34_Y0_N1
\switches[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(7),
	o => \switches[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\switches[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(3),
	o => \switches[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\switches[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(4),
	o => \switches[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\switches[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(2),
	o => \switches[2]~input_o\);

-- Location: MLABCELL_X37_Y6_N0
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\switches[2]~input_o\ & ( (!\switches[3]~input_o\ & !\switches[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switches[3]~input_o\,
	datad => \ALT_INV_switches[4]~input_o\,
	dataf => \ALT_INV_switches[2]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X33_Y0_N41
\switches[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(9),
	o => \switches[9]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\switches[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(6),
	o => \switches[6]~input_o\);

-- Location: LABCELL_X36_Y6_N18
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ( !\switches[6]~input_o\ & ( !\switches[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switches[9]~input_o\,
	dataf => \ALT_INV_switches[6]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: IOIBUF_X36_Y0_N35
\switches[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(5),
	o => \switches[5]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\switches[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(0),
	o => \switches[0]~input_o\);

-- Location: MLABCELL_X37_Y6_N18
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \switches[5]~input_o\ & ( !\switches[0]~input_o\ & ( (\Equal0~0_combout\ & (!\switches[7]~input_o\ & (\Equal1~0_combout\ & \Equal7~0_combout\))) ) ) ) # ( !\switches[5]~input_o\ & ( !\switches[0]~input_o\ & ( (\Equal0~0_combout\ 
-- & (\switches[7]~input_o\ & (\Equal1~0_combout\ & \Equal7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_switches[7]~input_o\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal7~0_combout\,
	datae => \ALT_INV_switches[5]~input_o\,
	dataf => \ALT_INV_switches[0]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: MLABCELL_X37_Y6_N6
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\switches[2]~input_o\ & ( (!\switches[5]~input_o\ & (!\switches[0]~input_o\ & (!\switches[3]~input_o\ & !\switches[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[5]~input_o\,
	datab => \ALT_INV_switches[0]~input_o\,
	datac => \ALT_INV_switches[3]~input_o\,
	datad => \ALT_INV_switches[4]~input_o\,
	dataf => \ALT_INV_switches[2]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: MLABCELL_X37_Y6_N36
\WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = ( \switches[1]~input_o\ & ( !\switches[8]~input_o\ & ( (!\switches[9]~input_o\ & (\Equal1~1_combout\ & (!\switches[7]~input_o\ & !\switches[6]~input_o\))) ) ) ) # ( !\switches[1]~input_o\ & ( !\switches[8]~input_o\ & ( 
-- (\switches[9]~input_o\ & (\Equal1~1_combout\ & (!\switches[7]~input_o\ & !\switches[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[9]~input_o\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_switches[7]~input_o\,
	datad => \ALT_INV_switches[6]~input_o\,
	datae => \ALT_INV_switches[1]~input_o\,
	dataf => \ALT_INV_switches[8]~input_o\,
	combout => \WideNor0~0_combout\);

-- Location: LABCELL_X36_Y6_N15
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\switches[7]~input_o\ & ( !\switches[6]~input_o\ & ( !\switches[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[9]~input_o\,
	datae => \ALT_INV_switches[7]~input_o\,
	dataf => \ALT_INV_switches[6]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X37_Y6_N9
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( \Equal0~0_combout\ & ( (!\switches[5]~input_o\ & (!\switches[0]~input_o\ & \Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[5]~input_o\,
	datab => \ALT_INV_switches[0]~input_o\,
	datac => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal2~0_combout\);

-- Location: MLABCELL_X37_Y6_N30
\WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = ( \switches[3]~input_o\ & ( \Equal2~0_combout\ & ( (!\Selector1~0_combout\ & (!\WideNor0~0_combout\ & ((\switches[4]~input_o\) # (\switches[2]~input_o\)))) ) ) ) # ( !\switches[3]~input_o\ & ( \Equal2~0_combout\ & ( 
-- (!\Selector1~0_combout\ & !\WideNor0~0_combout\) ) ) ) # ( \switches[3]~input_o\ & ( !\Equal2~0_combout\ & ( (!\Selector1~0_combout\ & !\WideNor0~0_combout\) ) ) ) # ( !\switches[3]~input_o\ & ( !\Equal2~0_combout\ & ( (!\Selector1~0_combout\ & 
-- !\WideNor0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000000010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~0_combout\,
	datab => \ALT_INV_switches[2]~input_o\,
	datac => \ALT_INV_WideNor0~0_combout\,
	datad => \ALT_INV_switches[4]~input_o\,
	datae => \ALT_INV_switches[3]~input_o\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \WideNor0~1_combout\);

-- Location: MLABCELL_X37_Y6_N48
\WideNor0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = ( \Equal1~0_combout\ & ( \Equal0~1_combout\ & ( (!\switches[5]~input_o\ & (!\switches[1]~input_o\ & (!\switches[8]~input_o\ $ (!\switches[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[5]~input_o\,
	datab => \ALT_INV_switches[8]~input_o\,
	datac => \ALT_INV_switches[1]~input_o\,
	datad => \ALT_INV_switches[0]~input_o\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \WideNor0~2_combout\);

-- Location: MLABCELL_X37_Y6_N27
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( \Equal0~0_combout\ & ( (!\switches[9]~input_o\ & (\switches[6]~input_o\ & (\Equal1~1_combout\ & !\switches[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[9]~input_o\,
	datab => \ALT_INV_switches[6]~input_o\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_switches[7]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal6~0_combout\);

-- Location: MLABCELL_X37_Y6_N42
\WideNor0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = ( \switches[3]~input_o\ & ( \Equal2~0_combout\ & ( (!\WideNor0~2_combout\ & !\Equal6~0_combout\) ) ) ) # ( !\switches[3]~input_o\ & ( \Equal2~0_combout\ & ( (!\WideNor0~2_combout\ & (!\Equal6~0_combout\ & (!\switches[2]~input_o\ $ 
-- (\switches[4]~input_o\)))) ) ) ) # ( \switches[3]~input_o\ & ( !\Equal2~0_combout\ & ( (!\WideNor0~2_combout\ & !\Equal6~0_combout\) ) ) ) # ( !\switches[3]~input_o\ & ( !\Equal2~0_combout\ & ( (!\WideNor0~2_combout\ & !\Equal6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010000000001000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~2_combout\,
	datab => \ALT_INV_switches[2]~input_o\,
	datac => \ALT_INV_Equal6~0_combout\,
	datad => \ALT_INV_switches[4]~input_o\,
	datae => \ALT_INV_switches[3]~input_o\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \WideNor0~3_combout\);

-- Location: MLABCELL_X37_Y6_N3
\Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Equal0~0_combout\ & (\Equal1~1_combout\ & (\Equal7~0_combout\ & \switches[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_switches[7]~input_o\,
	combout => \Equal7~1_combout\);

-- Location: MLABCELL_X37_Y6_N54
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \switches[4]~input_o\ & ( \Equal2~0_combout\ & ( (!\Equal6~0_combout\ & !\Equal7~1_combout\) ) ) ) # ( !\switches[4]~input_o\ & ( \Equal2~0_combout\ & ( (!\Equal6~0_combout\ & (!\Equal7~1_combout\ & (!\switches[2]~input_o\ $ 
-- (\switches[3]~input_o\)))) ) ) ) # ( \switches[4]~input_o\ & ( !\Equal2~0_combout\ & ( (!\Equal6~0_combout\ & !\Equal7~1_combout\) ) ) ) # ( !\switches[4]~input_o\ & ( !\Equal2~0_combout\ & ( (!\Equal6~0_combout\ & !\Equal7~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010000000001000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~0_combout\,
	datab => \ALT_INV_switches[2]~input_o\,
	datac => \ALT_INV_Equal7~1_combout\,
	datad => \ALT_INV_switches[3]~input_o\,
	datae => \ALT_INV_switches[4]~input_o\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X40_Y10_N8
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

-- Location: LABCELL_X40_Y10_N39
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( digit_var(1) & ( (!\Selector2~0_combout\) # ((\WideNor0~1_combout\ & \WideNor0~3_combout\)) ) ) # ( !digit_var(1) & ( !\Selector2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~1_combout\,
	datac => \ALT_INV_WideNor0~3_combout\,
	datad => \ALT_INV_Selector2~0_combout\,
	dataf => ALT_INV_digit_var(1),
	combout => \Selector2~1_combout\);

-- Location: FF_X40_Y10_N50
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

-- Location: LABCELL_X40_Y10_N42
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( digit_var(0) & ( (!\WideNor0~1_combout\) # (\WideNor0~3_combout\) ) ) # ( !digit_var(0) & ( !\WideNor0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~1_combout\,
	datab => \ALT_INV_WideNor0~3_combout\,
	dataf => ALT_INV_digit_var(0),
	combout => \Selector3~0_combout\);

-- Location: MLABCELL_X37_Y6_N12
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \switches[4]~input_o\ & ( \Equal2~0_combout\ & ( (!\Selector1~0_combout\ & (!\Equal6~0_combout\ & ((\switches[3]~input_o\) # (\switches[2]~input_o\)))) ) ) ) # ( !\switches[4]~input_o\ & ( \Equal2~0_combout\ & ( 
-- (!\Selector1~0_combout\ & !\Equal6~0_combout\) ) ) ) # ( \switches[4]~input_o\ & ( !\Equal2~0_combout\ & ( (!\Selector1~0_combout\ & !\Equal6~0_combout\) ) ) ) # ( !\switches[4]~input_o\ & ( !\Equal2~0_combout\ & ( (!\Selector1~0_combout\ & 
-- !\Equal6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000000010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~0_combout\,
	datab => \ALT_INV_switches[2]~input_o\,
	datac => \ALT_INV_Equal6~0_combout\,
	datad => \ALT_INV_switches[3]~input_o\,
	datae => \ALT_INV_switches[4]~input_o\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LABCELL_X40_Y10_N0
\Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = ( digit_var(2) & ( (!\Selector1~1_combout\) # ((\WideNor0~1_combout\ & \WideNor0~3_combout\)) ) ) # ( !digit_var(2) & ( !\Selector1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101011111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~1_combout\,
	datac => \ALT_INV_WideNor0~1_combout\,
	datad => \ALT_INV_WideNor0~3_combout\,
	dataf => ALT_INV_digit_var(2),
	combout => \Selector1~2_combout\);

-- Location: FF_X40_Y10_N41
\digit_var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_var(2));

-- Location: MLABCELL_X37_Y6_N39
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \switches[8]~input_o\ & ( !\switches[1]~input_o\ & ( (!\switches[9]~input_o\ & (\Equal1~1_combout\ & (!\switches[6]~input_o\ & !\switches[7]~input_o\))) ) ) ) # ( !\switches[8]~input_o\ & ( !\switches[1]~input_o\ & ( 
-- (\switches[9]~input_o\ & (\Equal1~1_combout\ & (!\switches[6]~input_o\ & !\switches[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[9]~input_o\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_switches[6]~input_o\,
	datad => \ALT_INV_switches[7]~input_o\,
	datae => \ALT_INV_switches[8]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X40_Y10_N15
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( digit_var(3) & ( ((\WideNor0~1_combout\ & \WideNor0~3_combout\)) # (\Selector0~0_combout\) ) ) # ( !digit_var(3) & ( \Selector0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~1_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_WideNor0~3_combout\,
	dataf => ALT_INV_digit_var(3),
	combout => \Selector0~1_combout\);

-- Location: FF_X40_Y10_N35
\digit_var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_var(3));

-- Location: LABCELL_X40_Y10_N9
\led_acerto~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led_acerto~0_combout\ = ( !\Selector0~0_combout\ & ( digit_var(3) & ( (\Selector1~1_combout\ & ((!\WideNor0~1_combout\) # (!\WideNor0~3_combout\))) ) ) ) # ( !\Selector0~0_combout\ & ( !digit_var(3) & ( (\Selector1~1_combout\ & ((!\WideNor0~1_combout\) # 
-- ((!\WideNor0~3_combout\) # (!digit_var(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110010000000000000000000110010001100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~1_combout\,
	datab => \ALT_INV_Selector1~1_combout\,
	datac => \ALT_INV_WideNor0~3_combout\,
	datad => ALT_INV_digit_var(2),
	datae => \ALT_INV_Selector0~0_combout\,
	dataf => ALT_INV_digit_var(3),
	combout => \led_acerto~0_combout\);

-- Location: LABCELL_X40_Y10_N51
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \estado.a~q\ & ( \Selector3~0_combout\ & ( (\estado.b~q\ & (\led_acerto~0_combout\ & !\Selector2~1_combout\)) ) ) ) # ( !\estado.a~q\ & ( \Selector3~0_combout\ & ( (\estado.b~q\ & (\led_acerto~0_combout\ & 
-- !\Selector2~1_combout\)) ) ) ) # ( \estado.a~q\ & ( !\Selector3~0_combout\ & ( (\estado.c~q\ & (\led_acerto~0_combout\ & \Selector2~1_combout\)) ) ) ) # ( !\estado.a~q\ & ( !\Selector3~0_combout\ & ( (\led_acerto~0_combout\ & ((!\Selector2~1_combout\) # 
-- (\estado.c~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000000000000010100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.c~q\,
	datab => \ALT_INV_estado.b~q\,
	datac => \ALT_INV_led_acerto~0_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	datae => \ALT_INV_estado.a~q\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X40_Y10_N53
\estado.a\ : dffeas
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
	q => \estado.a~q\);

-- Location: LABCELL_X40_Y10_N57
\estado~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado~10_combout\ = ( \led_acerto~0_combout\ & ( (!\estado.a~q\ & (!\Selector3~0_combout\ & !\Selector2~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.a~q\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	dataf => \ALT_INV_led_acerto~0_combout\,
	combout => \estado~10_combout\);

-- Location: FF_X40_Y10_N59
\estado.b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \estado~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.b~q\);

-- Location: LABCELL_X40_Y10_N27
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \led_acerto~0_combout\ & ( (!\Selector2~1_combout\ & (\Selector3~0_combout\ & \estado.b~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_estado.b~q\,
	dataf => \ALT_INV_led_acerto~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X40_Y10_N29
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

-- Location: LABCELL_X40_Y10_N18
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \led_acerto~0_combout\ & ( (\Selector2~1_combout\ & (\estado.c~q\ & !\Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_estado.c~q\,
	datad => \ALT_INV_Selector3~0_combout\,
	dataf => \ALT_INV_led_acerto~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X40_Y10_N20
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

-- Location: LABCELL_X40_Y10_N21
\led_acerto~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \led_acerto~1_combout\ = ( \led_acerto~0_combout\ & ( (\estado.d~q\ & (\Selector3~0_combout\ & \Selector2~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.d~q\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	dataf => \ALT_INV_led_acerto~0_combout\,
	combout => \led_acerto~1_combout\);

-- Location: FF_X40_Y10_N22
\led_acerto~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \led_acerto~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_acerto~reg0_q\);

-- Location: LABCELL_X41_Y10_N0
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( !\estado.b~q\ & ( \estado.a~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_estado.b~q\,
	dataf => \ALT_INV_estado.a~q\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X41_Y10_N36
\Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = ( digit_var(0) & ( \estado.b~q\ & ( (!\WideNor0~3_combout\ & \WideNor0~1_combout\) ) ) ) # ( !digit_var(0) & ( \estado.b~q\ & ( \WideNor0~1_combout\ ) ) ) # ( digit_var(0) & ( !\estado.b~q\ & ( (!\WideNor0~3_combout\ & 
-- (\WideNor0~1_combout\ & \estado.d~q\)) ) ) ) # ( !digit_var(0) & ( !\estado.b~q\ & ( (\WideNor0~1_combout\ & \estado.d~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000110000001111000011110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideNor0~3_combout\,
	datac => \ALT_INV_WideNor0~1_combout\,
	datad => \ALT_INV_estado.d~q\,
	datae => ALT_INV_digit_var(0),
	dataf => \ALT_INV_estado.b~q\,
	combout => \Selector7~2_combout\);

-- Location: LABCELL_X41_Y10_N54
\Selector7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = ( \estado.a~q\ & ( \estado.c~q\ & ( (!\WideNor0~1_combout\) # ((\WideNor0~3_combout\ & digit_var(0))) ) ) ) # ( !\estado.a~q\ & ( \estado.c~q\ & ( (!\WideNor0~1_combout\) # ((\WideNor0~3_combout\ & digit_var(0))) ) ) ) # ( 
-- !\estado.a~q\ & ( !\estado.c~q\ & ( (!\WideNor0~1_combout\) # ((\WideNor0~3_combout\ & digit_var(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111011000000000000000010101010101110111010101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~1_combout\,
	datab => \ALT_INV_WideNor0~3_combout\,
	datad => ALT_INV_digit_var(0),
	datae => \ALT_INV_estado.a~q\,
	dataf => \ALT_INV_estado.c~q\,
	combout => \Selector7~3_combout\);

-- Location: LABCELL_X41_Y10_N51
\Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ( !\estado.d~q\ & ( !\estado.c~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_estado.d~q\,
	dataf => \ALT_INV_estado.c~q\,
	combout => \Selector7~1_combout\);

-- Location: LABCELL_X41_Y10_N30
\Selector7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = ( \Selector7~3_combout\ & ( \Selector7~1_combout\ ) ) # ( !\Selector7~3_combout\ & ( \Selector7~1_combout\ & ( ((!\Selector7~0_combout\ & ((!\led_acerto~0_combout\) # (\Selector2~1_combout\)))) # (\Selector7~2_combout\) ) ) ) # ( 
-- \Selector7~3_combout\ & ( !\Selector7~1_combout\ ) ) # ( !\Selector7~3_combout\ & ( !\Selector7~1_combout\ & ( (!\Selector7~0_combout\) # ((!\led_acerto~0_combout\) # ((!\Selector2~1_combout\) # (\Selector7~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111111111111111111111110001010111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector7~0_combout\,
	datab => \ALT_INV_led_acerto~0_combout\,
	datac => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_Selector7~2_combout\,
	datae => \ALT_INV_Selector7~3_combout\,
	dataf => \ALT_INV_Selector7~1_combout\,
	combout => \Selector7~4_combout\);

-- Location: FF_X41_Y10_N31
\led_erro~reg0\ : dffeas
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
	q => \led_erro~reg0_q\);

-- Location: LABCELL_X40_Y10_N30
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \Selector1~2_combout\ & ( !\Selector0~1_combout\ & ( (\Selector3~0_combout\ & \Selector2~1_combout\) ) ) ) # ( !\Selector1~2_combout\ & ( !\Selector0~1_combout\ & ( !\Selector2~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	datae => \ALT_INV_Selector1~2_combout\,
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: FF_X40_Y10_N31
\display7seg[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg[6]~reg0_q\);

-- Location: LABCELL_X40_Y10_N3
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \Selector3~0_combout\ & ( (!\Selector0~1_combout\ & ((!\Selector1~2_combout\) # (\Selector2~1_combout\))) ) ) # ( !\Selector3~0_combout\ & ( (!\Selector0~1_combout\ & (\Selector2~1_combout\ & !\Selector1~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector0~1_combout\,
	datac => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X40_Y10_N4
\display7seg[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg[5]~reg0_q\);

-- Location: LABCELL_X40_Y10_N12
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Selector3~0_combout\ ) # ( !\Selector3~0_combout\ & ( (!\Selector2~1_combout\ & \Selector1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: FF_X40_Y10_N13
\display7seg[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg[4]~reg0_q\);

-- Location: LABCELL_X40_Y10_N24
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Selector3~0_combout\ & ( (!\Selector0~1_combout\ & (!\Selector2~1_combout\ $ (\Selector1~2_combout\))) ) ) # ( !\Selector3~0_combout\ & ( (!\Selector2~1_combout\ & (!\Selector0~1_combout\ & \Selector1~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_Selector0~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X40_Y10_N25
\display7seg[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg[3]~reg0_q\);

-- Location: LABCELL_X40_Y10_N45
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\Selector3~0_combout\ & ( (\Selector2~1_combout\ & !\Selector1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X40_Y10_N46
\display7seg[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg[2]~reg0_q\);

-- Location: LABCELL_X40_Y10_N54
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Selector3~0_combout\ & ( (!\Selector2~1_combout\ & \Selector1~2_combout\) ) ) # ( !\Selector3~0_combout\ & ( (\Selector2~1_combout\ & \Selector1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: FF_X40_Y10_N55
\display7seg[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg[1]~reg0_q\);

-- Location: LABCELL_X40_Y10_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Selector1~2_combout\ & ( (!\Selector0~1_combout\ & (!\Selector2~1_combout\ & !\Selector3~0_combout\)) ) ) # ( !\Selector1~2_combout\ & ( (!\Selector0~1_combout\ & (!\Selector2~1_combout\ & \Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector0~1_combout\,
	datac => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_Selector3~0_combout\,
	dataf => \ALT_INV_Selector1~2_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X40_Y10_N37
\display7seg[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg[0]~reg0_q\);

-- Location: LABCELL_X29_Y38_N0
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


