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

-- DATE "06/25/2022 09:47:45"

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
	led_acerto : BUFFER std_logic;
	led_erro1 : BUFFER std_logic;
	led_erro2 : BUFFER std_logic;
	led_erro3 : BUFFER std_logic;
	display7seg1 : BUFFER std_logic_vector(0 TO 6);
	display7seg2 : BUFFER std_logic_vector(0 TO 6);
	display7seg3 : BUFFER std_logic_vector(0 TO 6);
	display7seg4 : BUFFER std_logic_vector(0 TO 6)
	);
END fechadura;

-- Design Ports Information
-- led_acerto	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_erro1	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_erro2	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_erro3	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg1[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg1[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg1[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg1[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg1[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg1[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg1[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg2[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg2[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg2[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg2[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg2[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg2[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg2[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg3[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg3[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg3[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg3[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg3[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg3[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg3[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg4[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg4[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg4[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg4[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg4[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg4[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display7seg4[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_led_erro1 : std_logic;
SIGNAL ww_led_erro2 : std_logic;
SIGNAL ww_led_erro3 : std_logic;
SIGNAL ww_display7seg1 : std_logic_vector(0 TO 6);
SIGNAL ww_display7seg2 : std_logic_vector(0 TO 6);
SIGNAL ww_display7seg3 : std_logic_vector(0 TO 6);
SIGNAL ww_display7seg4 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \switches[3]~input_o\ : std_logic;
SIGNAL \switches[0]~input_o\ : std_logic;
SIGNAL \switches[5]~input_o\ : std_logic;
SIGNAL \switches[8]~input_o\ : std_logic;
SIGNAL \switches[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \switches[9]~input_o\ : std_logic;
SIGNAL \switches[6]~input_o\ : std_logic;
SIGNAL \switches[7]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \switches[2]~input_o\ : std_logic;
SIGNAL \switches[4]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \WideNor0~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \num_erros[3]~0_combout\ : std_logic;
SIGNAL \num_erros[3]~1_combout\ : std_logic;
SIGNAL \num_erros[3]~2_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \num_erros[3]~3_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \num_erros[2]~4_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \num_erros[3]~5_combout\ : std_logic;
SIGNAL \led_erro1~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \estado.a~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \estado.b~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \estado.c~q\ : std_logic;
SIGNAL \estado.d~0_combout\ : std_logic;
SIGNAL \estado.d~q\ : std_logic;
SIGNAL \led_acerto~0_combout\ : std_logic;
SIGNAL \led_acerto~reg0_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \led_erro1~reg0_q\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector21~5_combout\ : std_logic;
SIGNAL \Selector21~4_combout\ : std_logic;
SIGNAL \Selector21~6_combout\ : std_logic;
SIGNAL \led_erro2~reg0_q\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector22~4_combout\ : std_logic;
SIGNAL \led_erro3~reg0_q\ : std_logic;
SIGNAL \display7seg2~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \display7seg1[6]~reg0_q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \display7seg1[5]~reg0_q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \display7seg1[4]~reg0_q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \display7seg1[3]~reg0_q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \display7seg1[2]~reg0_q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \display7seg1[1]~reg0_q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \display7seg1[0]~reg0_q\ : std_logic;
SIGNAL \display7seg2[5]~reg0feeder_combout\ : std_logic;
SIGNAL \display7seg2[5]~reg0_q\ : std_logic;
SIGNAL \display7seg2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \display7seg2[3]~reg0_q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \display7seg2[2]~reg0_q\ : std_logic;
SIGNAL \display7seg2[1]~reg0_q\ : std_logic;
SIGNAL \display7seg2[0]~reg0_q\ : std_logic;
SIGNAL \display7seg3[5]~reg0feeder_combout\ : std_logic;
SIGNAL \display7seg3[5]~reg0_q\ : std_logic;
SIGNAL \display7seg3[3]~reg0feeder_combout\ : std_logic;
SIGNAL \display7seg3[3]~reg0_q\ : std_logic;
SIGNAL \display7seg3[2]~reg0feeder_combout\ : std_logic;
SIGNAL \display7seg3[2]~reg0_q\ : std_logic;
SIGNAL \display7seg3[1]~reg0_q\ : std_logic;
SIGNAL \display7seg3[0]~reg0feeder_combout\ : std_logic;
SIGNAL \display7seg3[0]~reg0_q\ : std_logic;
SIGNAL \display7seg4[6]~reg0_q\ : std_logic;
SIGNAL \display7seg4[2]~reg0_q\ : std_logic;
SIGNAL \display7seg4[1]~reg0_q\ : std_logic;
SIGNAL digit_var : std_logic_vector(3 DOWNTO 0);
SIGNAL num_erros : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_switches[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_num_erros[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_num_erros[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_num_erros[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_display7seg2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.a~q\ : std_logic;
SIGNAL \ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \ALT_INV_estado.b~q\ : std_logic;
SIGNAL \ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \ALT_INV_estado.c~q\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_led_erro1~0_combout\ : std_logic;
SIGNAL ALT_INV_num_erros : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_estado.d~q\ : std_logic;
SIGNAL \ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL ALT_INV_digit_var : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~3_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_led_erro3~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led_erro2~reg0_q\ : std_logic;
SIGNAL \ALT_INV_switches[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[5]~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_switches <= switches;
led_acerto <= ww_led_acerto;
led_erro1 <= ww_led_erro1;
led_erro2 <= ww_led_erro2;
led_erro3 <= ww_led_erro3;
display7seg1 <= ww_display7seg1;
display7seg2 <= ww_display7seg2;
display7seg3 <= ww_display7seg3;
display7seg4 <= ww_display7seg4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_switches[8]~input_o\ <= NOT \switches[8]~input_o\;
\ALT_INV_switches[1]~input_o\ <= NOT \switches[1]~input_o\;
\ALT_INV_switches[0]~input_o\ <= NOT \switches[0]~input_o\;
\ALT_INV_switches[2]~input_o\ <= NOT \switches[2]~input_o\;
\ALT_INV_switches[4]~input_o\ <= NOT \switches[4]~input_o\;
\ALT_INV_switches[3]~input_o\ <= NOT \switches[3]~input_o\;
\ALT_INV_Equal10~0_combout\ <= NOT \Equal10~0_combout\;
\ALT_INV_Selector13~1_combout\ <= NOT \Selector13~1_combout\;
\ALT_INV_Selector13~0_combout\ <= NOT \Selector13~0_combout\;
\ALT_INV_Add0~1_combout\ <= NOT \Add0~1_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_num_erros[3]~2_combout\ <= NOT \num_erros[3]~2_combout\;
\ALT_INV_num_erros[3]~1_combout\ <= NOT \num_erros[3]~1_combout\;
\ALT_INV_num_erros[3]~0_combout\ <= NOT \num_erros[3]~0_combout\;
\ALT_INV_Selector12~0_combout\ <= NOT \Selector12~0_combout\;
\ALT_INV_display7seg2~0_combout\ <= NOT \display7seg2~0_combout\;
\ALT_INV_Selector22~3_combout\ <= NOT \Selector22~3_combout\;
\ALT_INV_Selector22~2_combout\ <= NOT \Selector22~2_combout\;
\ALT_INV_Selector22~1_combout\ <= NOT \Selector22~1_combout\;
\ALT_INV_Selector22~0_combout\ <= NOT \Selector22~0_combout\;
\ALT_INV_Equal13~1_combout\ <= NOT \Equal13~1_combout\;
\ALT_INV_Selector21~5_combout\ <= NOT \Selector21~5_combout\;
\ALT_INV_Selector21~4_combout\ <= NOT \Selector21~4_combout\;
\ALT_INV_Selector21~3_combout\ <= NOT \Selector21~3_combout\;
\ALT_INV_Selector21~2_combout\ <= NOT \Selector21~2_combout\;
\ALT_INV_Equal13~0_combout\ <= NOT \Equal13~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Selector21~1_combout\ <= NOT \Selector21~1_combout\;
\ALT_INV_Selector21~0_combout\ <= NOT \Selector21~0_combout\;
\ALT_INV_Selector4~3_combout\ <= NOT \Selector4~3_combout\;
\ALT_INV_Selector14~0_combout\ <= NOT \Selector14~0_combout\;
\ALT_INV_estado.a~q\ <= NOT \estado.a~q\;
\ALT_INV_Selector4~2_combout\ <= NOT \Selector4~2_combout\;
\ALT_INV_estado.b~q\ <= NOT \estado.b~q\;
\ALT_INV_Selector4~1_combout\ <= NOT \Selector4~1_combout\;
\ALT_INV_estado.c~q\ <= NOT \estado.c~q\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_led_erro1~0_combout\ <= NOT \led_erro1~0_combout\;
ALT_INV_num_erros(3) <= NOT num_erros(3);
ALT_INV_num_erros(2) <= NOT num_erros(2);
ALT_INV_num_erros(1) <= NOT num_erros(1);
ALT_INV_num_erros(0) <= NOT num_erros(0);
\ALT_INV_estado.d~q\ <= NOT \estado.d~q\;
\ALT_INV_Selector2~1_combout\ <= NOT \Selector2~1_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Equal7~1_combout\ <= NOT \Equal7~1_combout\;
ALT_INV_digit_var(1) <= NOT digit_var(1);
\ALT_INV_Selector1~2_combout\ <= NOT \Selector1~2_combout\;
\ALT_INV_Selector1~1_combout\ <= NOT \Selector1~1_combout\;
ALT_INV_digit_var(2) <= NOT digit_var(2);
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
ALT_INV_digit_var(3) <= NOT digit_var(3);
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
ALT_INV_digit_var(0) <= NOT digit_var(0);
\ALT_INV_WideNor0~4_combout\ <= NOT \WideNor0~4_combout\;
\ALT_INV_WideNor0~3_combout\ <= NOT \WideNor0~3_combout\;
\ALT_INV_WideNor0~2_combout\ <= NOT \WideNor0~2_combout\;
\ALT_INV_WideNor0~1_combout\ <= NOT \WideNor0~1_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_WideNor0~0_combout\ <= NOT \WideNor0~0_combout\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_led_erro3~reg0_q\ <= NOT \led_erro3~reg0_q\;
\ALT_INV_led_erro2~reg0_q\ <= NOT \led_erro2~reg0_q\;
\ALT_INV_switches[9]~input_o\ <= NOT \switches[9]~input_o\;
\ALT_INV_switches[6]~input_o\ <= NOT \switches[6]~input_o\;
\ALT_INV_switches[7]~input_o\ <= NOT \switches[7]~input_o\;
\ALT_INV_switches[5]~input_o\ <= NOT \switches[5]~input_o\;

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
\led_erro1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led_erro1~reg0_q\,
	devoe => ww_devoe,
	o => ww_led_erro1);

-- Location: IOOBUF_X0_Y18_N96
\led_erro2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led_erro2~reg0_q\,
	devoe => ww_devoe,
	o => ww_led_erro2);

-- Location: IOOBUF_X0_Y18_N62
\led_erro3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led_erro3~reg0_q\,
	devoe => ww_devoe,
	o => ww_led_erro3);

-- Location: IOOBUF_X46_Y0_N36
\display7seg1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg1[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg1(6));

-- Location: IOOBUF_X50_Y0_N53
\display7seg1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg1[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg1(5));

-- Location: IOOBUF_X48_Y0_N93
\display7seg1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg1[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg1(4));

-- Location: IOOBUF_X50_Y0_N36
\display7seg1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg1[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg1(3));

-- Location: IOOBUF_X48_Y0_N76
\display7seg1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg1[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg1(2));

-- Location: IOOBUF_X51_Y0_N36
\display7seg1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg1[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg1(1));

-- Location: IOOBUF_X52_Y0_N53
\display7seg1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg1[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg1(0));

-- Location: IOOBUF_X51_Y0_N53
\display7seg2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display7seg2(6));

-- Location: IOOBUF_X43_Y0_N53
\display7seg2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg2[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg2(5));

-- Location: IOOBUF_X38_Y0_N36
\display7seg2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display7seg2(4));

-- Location: IOOBUF_X43_Y0_N36
\display7seg2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg2[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg2(3));

-- Location: IOOBUF_X44_Y0_N53
\display7seg2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg2[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg2(2));

-- Location: IOOBUF_X40_Y0_N93
\display7seg2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg2[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg2(1));

-- Location: IOOBUF_X44_Y0_N36
\display7seg2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg2[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg2(0));

-- Location: IOOBUF_X40_Y0_N76
\display7seg3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display7seg3(6));

-- Location: IOOBUF_X46_Y0_N53
\display7seg3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg3[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg3(5));

-- Location: IOOBUF_X38_Y0_N19
\display7seg3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display7seg3(4));

-- Location: IOOBUF_X36_Y0_N19
\display7seg3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg3[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg3(3));

-- Location: IOOBUF_X22_Y0_N53
\display7seg3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg3[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg3(2));

-- Location: IOOBUF_X38_Y0_N53
\display7seg3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg3[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg3(1));

-- Location: IOOBUF_X48_Y0_N42
\display7seg3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg3[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg3(0));

-- Location: IOOBUF_X51_Y0_N19
\display7seg4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg4[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg4(6));

-- Location: IOOBUF_X51_Y0_N2
\display7seg4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display7seg4(5));

-- Location: IOOBUF_X52_Y0_N2
\display7seg4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display7seg4(4));

-- Location: IOOBUF_X46_Y0_N19
\display7seg4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display7seg4(3));

-- Location: IOOBUF_X40_Y0_N42
\display7seg4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg4[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg4(2));

-- Location: IOOBUF_X46_Y0_N2
\display7seg4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display7seg4[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_display7seg4(1));

-- Location: IOOBUF_X40_Y0_N59
\display7seg4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display7seg4(0));

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

-- Location: CLKCTRL_G4
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

-- Location: MLABCELL_X37_Y3_N15
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\switches[1]~input_o\ & ( !\switches[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[8]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Equal0~0_combout\);

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

-- Location: MLABCELL_X37_Y4_N12
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\switches[9]~input_o\ & (!\switches[6]~input_o\ & !\switches[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[9]~input_o\,
	datab => \ALT_INV_switches[6]~input_o\,
	datac => \ALT_INV_switches[7]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X37_Y4_N57
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( \Equal0~1_combout\ & ( (!\switches[0]~input_o\ & (!\switches[5]~input_o\ & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[0]~input_o\,
	datab => \ALT_INV_switches[5]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal2~0_combout\);

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

-- Location: MLABCELL_X37_Y4_N48
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\switches[3]~input_o\ & ( (!\switches[4]~input_o\ & !\switches[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switches[4]~input_o\,
	datac => \ALT_INV_switches[2]~input_o\,
	dataf => \ALT_INV_switches[3]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: MLABCELL_X37_Y4_N36
\WideNor0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = ( !\switches[1]~input_o\ & ( \Equal0~1_combout\ & ( (\Equal1~1_combout\ & (!\switches[5]~input_o\ & (!\switches[0]~input_o\ $ (!\switches[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_switches[5]~input_o\,
	datac => \ALT_INV_switches[0]~input_o\,
	datad => \ALT_INV_switches[8]~input_o\,
	datae => \ALT_INV_switches[1]~input_o\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \WideNor0~3_combout\);

-- Location: MLABCELL_X37_Y4_N30
\WideNor0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~4_combout\ = ( \switches[4]~input_o\ & ( (!\WideNor0~3_combout\ & (((!\Equal2~0_combout\) # (\switches[2]~input_o\)) # (\switches[3]~input_o\))) ) ) # ( !\switches[4]~input_o\ & ( !\WideNor0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011011111000000001101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[3]~input_o\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_switches[2]~input_o\,
	datad => \ALT_INV_WideNor0~3_combout\,
	dataf => \ALT_INV_switches[4]~input_o\,
	combout => \WideNor0~4_combout\);

-- Location: MLABCELL_X37_Y4_N54
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\switches[4]~input_o\ & ( (!\switches[0]~input_o\ & (!\switches[5]~input_o\ & (!\switches[3]~input_o\ & !\switches[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[0]~input_o\,
	datab => \ALT_INV_switches[5]~input_o\,
	datac => \ALT_INV_switches[3]~input_o\,
	datad => \ALT_INV_switches[2]~input_o\,
	dataf => \ALT_INV_switches[4]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X37_Y4_N0
\WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = ( \switches[1]~input_o\ & ( !\switches[8]~input_o\ & ( (!\switches[7]~input_o\ & (!\switches[6]~input_o\ & (\Equal1~0_combout\ & !\switches[9]~input_o\))) ) ) ) # ( !\switches[1]~input_o\ & ( !\switches[8]~input_o\ & ( 
-- (!\switches[7]~input_o\ & (!\switches[6]~input_o\ & (\Equal1~0_combout\ & \switches[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[7]~input_o\,
	datab => \ALT_INV_switches[6]~input_o\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_switches[9]~input_o\,
	datae => \ALT_INV_switches[1]~input_o\,
	dataf => \ALT_INV_switches[8]~input_o\,
	combout => \WideNor0~1_combout\);

-- Location: MLABCELL_X37_Y4_N15
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\switches[9]~input_o\ & !\switches[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[9]~input_o\,
	datab => \ALT_INV_switches[6]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: MLABCELL_X37_Y4_N42
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \Equal0~0_combout\ & ( \Equal1~1_combout\ & ( (!\switches[0]~input_o\ & (\Equal7~0_combout\ & (!\switches[7]~input_o\ $ (!\switches[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[0]~input_o\,
	datab => \ALT_INV_Equal7~0_combout\,
	datac => \ALT_INV_switches[7]~input_o\,
	datad => \ALT_INV_switches[5]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: MLABCELL_X37_Y4_N18
\WideNor0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = ( !\WideNor0~1_combout\ & ( !\Selector1~0_combout\ & ( (!\switches[3]~input_o\) # ((!\Equal2~0_combout\) # ((\switches[4]~input_o\) # (\switches[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[3]~input_o\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_switches[2]~input_o\,
	datad => \ALT_INV_switches[4]~input_o\,
	datae => \ALT_INV_WideNor0~1_combout\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \WideNor0~2_combout\);

-- Location: MLABCELL_X37_Y4_N51
\Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = ( \switches[7]~input_o\ & ( (\Equal1~0_combout\ & (\Equal7~0_combout\ & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_switches[7]~input_o\,
	combout => \Equal7~1_combout\);

-- Location: MLABCELL_X37_Y4_N33
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( !\Equal7~1_combout\ & ( (!\switches[3]~input_o\) # ((!\Equal2~0_combout\) # ((\switches[2]~input_o\) # (\switches[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111111111111011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[3]~input_o\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_switches[4]~input_o\,
	datad => \ALT_INV_switches[2]~input_o\,
	dataf => \ALT_INV_Equal7~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: MLABCELL_X37_Y4_N24
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( \Equal1~0_combout\ & ( !\switches[9]~input_o\ & ( (!\switches[7]~input_o\ & (\switches[6]~input_o\ & \Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[7]~input_o\,
	datab => \ALT_INV_switches[6]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_switches[9]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: MLABCELL_X37_Y4_N6
\WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = ( !\Equal6~0_combout\ & ( (((!\switches[2]~input_o\) # (!\Equal2~0_combout\)) # (\switches[4]~input_o\)) # (\switches[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[3]~input_o\,
	datab => \ALT_INV_switches[4]~input_o\,
	datac => \ALT_INV_switches[2]~input_o\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \WideNor0~0_combout\);

-- Location: FF_X40_Y4_N55
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

-- Location: LABCELL_X40_Y4_N33
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( digit_var(1) & ( (!\Selector2~0_combout\) # ((!\WideNor0~0_combout\) # ((\WideNor0~4_combout\ & \WideNor0~2_combout\))) ) ) # ( !digit_var(1) & ( (!\Selector2~0_combout\) # (!\WideNor0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111100011111111111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~4_combout\,
	datab => \ALT_INV_WideNor0~2_combout\,
	datac => \ALT_INV_Selector2~0_combout\,
	datad => \ALT_INV_WideNor0~0_combout\,
	dataf => ALT_INV_digit_var(1),
	combout => \Selector2~1_combout\);

-- Location: MLABCELL_X37_Y4_N3
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \switches[8]~input_o\ & ( !\switches[1]~input_o\ & ( (!\switches[7]~input_o\ & (!\switches[6]~input_o\ & (!\switches[9]~input_o\ & \Equal1~0_combout\))) ) ) ) # ( !\switches[8]~input_o\ & ( !\switches[1]~input_o\ & ( 
-- (!\switches[7]~input_o\ & (!\switches[6]~input_o\ & (\switches[9]~input_o\ & \Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[7]~input_o\,
	datab => \ALT_INV_switches[6]~input_o\,
	datac => \ALT_INV_switches[9]~input_o\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_switches[8]~input_o\,
	dataf => \ALT_INV_switches[1]~input_o\,
	combout => \Selector0~0_combout\);

-- Location: FF_X40_Y4_N28
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

-- Location: LABCELL_X40_Y4_N30
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( digit_var(3) & ( ((\WideNor0~4_combout\ & (\WideNor0~2_combout\ & \WideNor0~0_combout\))) # (\Selector0~0_combout\) ) ) # ( !digit_var(3) & ( \Selector0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~4_combout\,
	datab => \ALT_INV_WideNor0~2_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_WideNor0~0_combout\,
	dataf => ALT_INV_digit_var(3),
	combout => \Selector0~1_combout\);

-- Location: MLABCELL_X37_Y4_N9
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( !\Selector1~0_combout\ & ( ((!\switches[4]~input_o\) # ((!\Equal2~0_combout\) # (\switches[2]~input_o\))) # (\switches[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switches[3]~input_o\,
	datab => \ALT_INV_switches[4]~input_o\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_switches[2]~input_o\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X40_Y4_N11
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

-- Location: LABCELL_X40_Y4_N15
\Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = ( \Equal6~0_combout\ & ( digit_var(2) ) ) # ( !\Equal6~0_combout\ & ( digit_var(2) & ( (!\Selector1~1_combout\) # ((\WideNor0~4_combout\ & (\WideNor0~2_combout\ & \WideNor0~0_combout\))) ) ) ) # ( \Equal6~0_combout\ & ( 
-- !digit_var(2) ) ) # ( !\Equal6~0_combout\ & ( !digit_var(2) & ( !\Selector1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111111111111111001100110011011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~4_combout\,
	datab => \ALT_INV_Selector1~1_combout\,
	datac => \ALT_INV_WideNor0~2_combout\,
	datad => \ALT_INV_WideNor0~0_combout\,
	datae => \ALT_INV_Equal6~0_combout\,
	dataf => ALT_INV_digit_var(2),
	combout => \Selector1~2_combout\);

-- Location: FF_X39_Y4_N8
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

-- Location: LABCELL_X39_Y4_N12
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( digit_var(0) & ( (!\WideNor0~2_combout\) # ((\WideNor0~4_combout\ & \WideNor0~0_combout\)) ) ) # ( !digit_var(0) & ( !\WideNor0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~4_combout\,
	datac => \ALT_INV_WideNor0~0_combout\,
	datad => \ALT_INV_WideNor0~2_combout\,
	dataf => ALT_INV_digit_var(0),
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X40_Y4_N36
\Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = ( !\Selector2~1_combout\ & ( (!\Selector1~2_combout\ & (!\Selector0~1_combout\ & !\Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector1~2_combout\,
	datac => \ALT_INV_Selector0~1_combout\,
	datad => \ALT_INV_Selector3~0_combout\,
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \Equal10~0_combout\);

-- Location: LABCELL_X41_Y4_N33
\Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = ( \Selector0~1_combout\ & ( \estado.b~q\ ) ) # ( !\Selector0~1_combout\ & ( (\estado.b~q\ & (((!\Selector3~0_combout\) # (\Selector1~2_combout\)) # (\Selector2~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101010101010001010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.b~q\,
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_Selector1~2_combout\,
	datad => \ALT_INV_Selector3~0_combout\,
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => \Selector13~1_combout\);

-- Location: LABCELL_X40_Y4_N6
\num_erros[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \num_erros[3]~0_combout\ = ( \Selector1~2_combout\ & ( \led_erro1~0_combout\ ) ) # ( !\Selector1~2_combout\ & ( (\led_erro1~0_combout\ & (((\Selector2~1_combout\) # (\Selector0~1_combout\)) # (\Selector3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_Selector0~1_combout\,
	datac => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_led_erro1~0_combout\,
	dataf => \ALT_INV_Selector1~2_combout\,
	combout => \num_erros[3]~0_combout\);

-- Location: LABCELL_X40_Y4_N39
\num_erros[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \num_erros[3]~1_combout\ = ( !\estado.d~q\ & ( \estado.a~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.a~q\,
	dataf => \ALT_INV_estado.d~q\,
	combout => \num_erros[3]~1_combout\);

-- Location: LABCELL_X40_Y4_N48
\num_erros[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \num_erros[3]~2_combout\ = ( \Selector3~0_combout\ & ( \num_erros[3]~1_combout\ & ( (!\estado.c~q\ & (!\Selector0~1_combout\ & (!\Selector2~1_combout\ & !\Selector1~2_combout\))) ) ) ) # ( !\Selector3~0_combout\ & ( \num_erros[3]~1_combout\ & ( 
-- (\estado.c~q\ & (!\Selector0~1_combout\ & (\Selector2~1_combout\ & !\Selector1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.c~q\,
	datab => \ALT_INV_Selector0~1_combout\,
	datac => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_Selector3~0_combout\,
	dataf => \ALT_INV_num_erros[3]~1_combout\,
	combout => \num_erros[3]~2_combout\);

-- Location: LABCELL_X41_Y4_N54
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( !num_erros(0) & ( !\estado.d~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.d~q\,
	dataf => ALT_INV_num_erros(0),
	combout => \Selector20~0_combout\);

-- Location: LABCELL_X40_Y4_N45
\num_erros[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \num_erros[3]~3_combout\ = ( !\num_erros[3]~2_combout\ & ( ((\estado.d~q\) # (\num_erros[3]~0_combout\)) # (\estado.a~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado.a~q\,
	datac => \ALT_INV_num_erros[3]~0_combout\,
	datad => \ALT_INV_estado.d~q\,
	dataf => \ALT_INV_num_erros[3]~2_combout\,
	combout => \num_erros[3]~3_combout\);

-- Location: FF_X40_Y4_N14
\num_erros[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector20~0_combout\,
	sload => VCC,
	ena => \num_erros[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_erros(0));

-- Location: LABCELL_X40_Y4_N9
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( num_erros(0) & ( (!num_erros(1) & !\estado.d~q\) ) ) # ( !num_erros(0) & ( (num_erros(1) & !\estado.d~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_num_erros(1),
	datad => \ALT_INV_estado.d~q\,
	dataf => ALT_INV_num_erros(0),
	combout => \Selector19~0_combout\);

-- Location: FF_X40_Y4_N53
\num_erros[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector19~0_combout\,
	sload => VCC,
	ena => \num_erros[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_erros(1));

-- Location: LABCELL_X41_Y4_N30
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( num_erros(1) & ( num_erros(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_num_erros(0),
	dataf => ALT_INV_num_erros(1),
	combout => \Add0~0_combout\);

-- Location: LABCELL_X40_Y4_N0
\num_erros[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \num_erros[2]~4_combout\ = ( num_erros(2) & ( \Add0~0_combout\ & ( ((!\estado.d~q\ & (!\estado.a~q\ & !\num_erros[3]~0_combout\))) # (\num_erros[3]~2_combout\) ) ) ) # ( !num_erros(2) & ( \Add0~0_combout\ & ( (!\estado.d~q\ & (!\num_erros[3]~2_combout\ & 
-- ((\num_erros[3]~0_combout\) # (\estado.a~q\)))) ) ) ) # ( num_erros(2) & ( !\Add0~0_combout\ & ( (!\estado.d~q\) # (\num_erros[3]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111010111100100000101000001000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.d~q\,
	datab => \ALT_INV_estado.a~q\,
	datac => \ALT_INV_num_erros[3]~2_combout\,
	datad => \ALT_INV_num_erros[3]~0_combout\,
	datae => ALT_INV_num_erros(2),
	dataf => \ALT_INV_Add0~0_combout\,
	combout => \num_erros[2]~4_combout\);

-- Location: FF_X40_Y4_N2
\num_erros[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \num_erros[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_erros(2));

-- Location: LABCELL_X41_Y4_N21
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( num_erros(1) & ( (num_erros(2) & num_erros(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_num_erros(2),
	datad => ALT_INV_num_erros(0),
	dataf => ALT_INV_num_erros(1),
	combout => \Add0~1_combout\);

-- Location: LABCELL_X40_Y4_N3
\num_erros[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \num_erros[3]~5_combout\ = ( num_erros(3) & ( \Add0~1_combout\ & ( ((!\estado.d~q\ & (!\estado.a~q\ & !\num_erros[3]~0_combout\))) # (\num_erros[3]~2_combout\) ) ) ) # ( !num_erros(3) & ( \Add0~1_combout\ & ( (!\estado.d~q\ & (!\num_erros[3]~2_combout\ & 
-- ((\num_erros[3]~0_combout\) # (\estado.a~q\)))) ) ) ) # ( num_erros(3) & ( !\Add0~1_combout\ & ( (!\estado.d~q\) # (\num_erros[3]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101111111100101010000000001000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.d~q\,
	datab => \ALT_INV_estado.a~q\,
	datac => \ALT_INV_num_erros[3]~0_combout\,
	datad => \ALT_INV_num_erros[3]~2_combout\,
	datae => ALT_INV_num_erros(3),
	dataf => \ALT_INV_Add0~1_combout\,
	combout => \num_erros[3]~5_combout\);

-- Location: FF_X40_Y4_N5
\num_erros[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \num_erros[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_erros(3));

-- Location: LABCELL_X40_Y4_N27
\led_erro1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led_erro1~0_combout\ = ( num_erros(1) & ( (!num_erros(3) & (!num_erros(0) & !num_erros(2))) ) ) # ( !num_erros(1) & ( (!num_erros(3) & !num_erros(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_num_erros(3),
	datac => ALT_INV_num_erros(0),
	datad => ALT_INV_num_erros(2),
	dataf => ALT_INV_num_erros(1),
	combout => \led_erro1~0_combout\);

-- Location: LABCELL_X40_Y4_N57
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \Selector2~1_combout\ & ( (\estado.c~q\ & (((\Selector3~0_combout\) # (\Selector1~2_combout\)) # (\Selector0~1_combout\))) ) ) # ( !\Selector2~1_combout\ & ( \estado.c~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~1_combout\,
	datab => \ALT_INV_Selector1~2_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_estado.c~q\,
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \Selector13~0_combout\);

-- Location: LABCELL_X40_Y4_N42
\Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = ( !\Selector13~0_combout\ & ( (!\Selector13~1_combout\ & (((\Equal10~0_combout\ & \led_erro1~0_combout\)) # (\estado.a~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110000001100000111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal10~0_combout\,
	datab => \ALT_INV_estado.a~q\,
	datac => \ALT_INV_Selector13~1_combout\,
	datad => \ALT_INV_led_erro1~0_combout\,
	dataf => \ALT_INV_Selector13~0_combout\,
	combout => \Selector13~2_combout\);

-- Location: FF_X40_Y4_N44
\estado.a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.a~q\);

-- Location: LABCELL_X41_Y4_N0
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( num_erros(1) & ( (!\estado.a~q\ & (!num_erros(3) & (!num_erros(2) & !num_erros(0)))) ) ) # ( !num_erros(1) & ( (!\estado.a~q\ & (!num_erros(3) & !num_erros(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.a~q\,
	datab => ALT_INV_num_erros(3),
	datac => ALT_INV_num_erros(2),
	datad => ALT_INV_num_erros(0),
	dataf => ALT_INV_num_erros(1),
	combout => \Selector14~0_combout\);

-- Location: LABCELL_X41_Y4_N18
\Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = ( !\Selector0~1_combout\ & ( (!\Selector1~2_combout\ & (!\Selector2~1_combout\ & (!\Selector3~0_combout\ & \Selector14~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~2_combout\,
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector14~0_combout\,
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => \Selector14~1_combout\);

-- Location: FF_X41_Y4_N20
\estado.b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.b~q\);

-- Location: LABCELL_X40_Y4_N54
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \estado.b~q\ & ( (!\Selector0~1_combout\ & (!\Selector1~2_combout\ & (\Selector3~0_combout\ & !\Selector2~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~1_combout\,
	datab => \ALT_INV_Selector1~2_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	dataf => \ALT_INV_estado.b~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X40_Y4_N23
\estado.c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector15~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.c~q\);

-- Location: LABCELL_X40_Y4_N18
\estado.d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.d~0_combout\ = ( \estado.d~q\ & ( \Selector2~1_combout\ ) ) # ( !\estado.d~q\ & ( \Selector2~1_combout\ & ( (\estado.c~q\ & (!\Selector1~2_combout\ & (!\Selector3~0_combout\ & !\Selector0~1_combout\))) ) ) ) # ( \estado.d~q\ & ( 
-- !\Selector2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.c~q\,
	datab => \ALT_INV_Selector1~2_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector0~1_combout\,
	datae => \ALT_INV_estado.d~q\,
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \estado.d~0_combout\);

-- Location: FF_X40_Y4_N20
\estado.d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \estado.d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.d~q\);

-- Location: LABCELL_X39_Y4_N36
\led_acerto~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led_acerto~0_combout\ = ( !\Selector0~1_combout\ & ( \Selector3~0_combout\ & ( (\Selector2~1_combout\ & (\estado.d~q\ & !\Selector1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector2~1_combout\,
	datab => \ALT_INV_estado.d~q\,
	datac => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_Selector0~1_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \led_acerto~0_combout\);

-- Location: FF_X39_Y4_N37
\led_acerto~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \led_acerto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_acerto~reg0_q\);

-- Location: LABCELL_X39_Y4_N15
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !num_erros(1) & ( (!num_erros(3) & (!num_erros(0) & !num_erros(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_num_erros(3),
	datac => ALT_INV_num_erros(0),
	datad => ALT_INV_num_erros(2),
	dataf => ALT_INV_num_erros(1),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X39_Y4_N42
\Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = ( \led_erro1~0_combout\ & ( \estado.b~q\ & ( ((!\Selector3~0_combout\) # ((\Selector0~1_combout\) # (\Selector2~1_combout\))) # (\Selector1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~2_combout\,
	datab => \ALT_INV_Selector3~0_combout\,
	datac => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_Selector0~1_combout\,
	datae => \ALT_INV_led_erro1~0_combout\,
	dataf => \ALT_INV_estado.b~q\,
	combout => \Selector4~2_combout\);

-- Location: LABCELL_X39_Y4_N0
\Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ( \estado.c~q\ & ( \led_erro1~0_combout\ & ( (!\Selector2~1_combout\) # (((\Selector0~1_combout\) # (\Selector1~2_combout\)) # (\Selector3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector2~1_combout\,
	datab => \ALT_INV_Selector3~0_combout\,
	datac => \ALT_INV_Selector1~2_combout\,
	datad => \ALT_INV_Selector0~1_combout\,
	datae => \ALT_INV_estado.c~q\,
	dataf => \ALT_INV_led_erro1~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LABCELL_X40_Y4_N24
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\estado.a~q\ & (!\estado.c~q\ & !\estado.b~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado.a~q\,
	datac => \ALT_INV_estado.c~q\,
	datad => \ALT_INV_estado.b~q\,
	combout => \Selector21~0_combout\);

-- Location: LABCELL_X39_Y4_N30
\Selector21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = ( \Selector1~2_combout\ & ( \Selector3~0_combout\ & ( (\Selector21~0_combout\ & !\estado.d~q\) ) ) ) # ( !\Selector1~2_combout\ & ( \Selector3~0_combout\ & ( (\Selector21~0_combout\ & ((!\estado.d~q\) # ((!\Selector0~1_combout\ & 
-- \Selector2~1_combout\)))) ) ) ) # ( \Selector1~2_combout\ & ( !\Selector3~0_combout\ & ( (\Selector21~0_combout\ & !\estado.d~q\) ) ) ) # ( !\Selector1~2_combout\ & ( !\Selector3~0_combout\ & ( (\Selector21~0_combout\ & !\estado.d~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000100011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~1_combout\,
	datab => \ALT_INV_Selector21~0_combout\,
	datac => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_estado.d~q\,
	datae => \ALT_INV_Selector1~2_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: LABCELL_X39_Y4_N54
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \led_erro1~0_combout\ & ( \estado.d~q\ & ( (((!\Selector2~1_combout\) # (!\Selector3~0_combout\)) # (\Selector0~1_combout\)) # (\Selector1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~2_combout\,
	datab => \ALT_INV_Selector0~1_combout\,
	datac => \ALT_INV_Selector2~1_combout\,
	datad => \ALT_INV_Selector3~0_combout\,
	datae => \ALT_INV_led_erro1~0_combout\,
	dataf => \ALT_INV_estado.d~q\,
	combout => \Selector4~0_combout\);

-- Location: LABCELL_X39_Y4_N24
\Selector4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = ( \led_erro1~0_combout\ & ( \Selector14~0_combout\ & ( (((\Selector3~0_combout\) # (\Selector1~2_combout\)) # (\Selector0~1_combout\)) # (\Selector2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector2~1_combout\,
	datab => \ALT_INV_Selector0~1_combout\,
	datac => \ALT_INV_Selector1~2_combout\,
	datad => \ALT_INV_Selector3~0_combout\,
	datae => \ALT_INV_led_erro1~0_combout\,
	dataf => \ALT_INV_Selector14~0_combout\,
	combout => \Selector4~3_combout\);

-- Location: LABCELL_X39_Y4_N18
\Selector4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = ( \Selector4~0_combout\ & ( \Selector4~3_combout\ ) ) # ( !\Selector4~0_combout\ & ( \Selector4~3_combout\ ) ) # ( \Selector4~0_combout\ & ( !\Selector4~3_combout\ ) ) # ( !\Selector4~0_combout\ & ( !\Selector4~3_combout\ & ( 
-- (((!\LessThan0~0_combout\ & !\Selector21~1_combout\)) # (\Selector4~1_combout\)) # (\Selector4~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_Selector4~2_combout\,
	datac => \ALT_INV_Selector4~1_combout\,
	datad => \ALT_INV_Selector21~1_combout\,
	datae => \ALT_INV_Selector4~0_combout\,
	dataf => \ALT_INV_Selector4~3_combout\,
	combout => \Selector4~4_combout\);

-- Location: FF_X39_Y4_N19
\led_erro1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_erro1~reg0_q\);

-- Location: LABCELL_X39_Y4_N9
\Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = ( !num_erros(3) & ( num_erros(1) & ( (!num_erros(0) & !num_erros(2)) ) ) ) # ( !num_erros(3) & ( !num_erros(1) & ( (num_erros(0) & !num_erros(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_num_erros(0),
	datad => ALT_INV_num_erros(2),
	datae => ALT_INV_num_erros(3),
	dataf => ALT_INV_num_erros(1),
	combout => \Equal13~0_combout\);

-- Location: LABCELL_X39_Y4_N3
\Selector21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = ( \estado.c~q\ & ( \Equal13~0_combout\ & ( (!\Selector2~1_combout\) # (((\Selector1~2_combout\) # (\Selector0~1_combout\)) # (\Selector3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector2~1_combout\,
	datab => \ALT_INV_Selector3~0_combout\,
	datac => \ALT_INV_Selector0~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_estado.c~q\,
	dataf => \ALT_INV_Equal13~0_combout\,
	combout => \Selector21~3_combout\);

-- Location: LABCELL_X39_Y4_N57
\Selector21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = ( \estado.d~q\ & ( \Equal13~0_combout\ & ( (((!\Selector3~0_combout\) # (!\Selector2~1_combout\)) # (\Selector0~1_combout\)) # (\Selector1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~2_combout\,
	datab => \ALT_INV_Selector0~1_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	datae => \ALT_INV_estado.d~q\,
	dataf => \ALT_INV_Equal13~0_combout\,
	combout => \Selector21~2_combout\);

-- Location: LABCELL_X39_Y4_N27
\Selector21~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~5_combout\ = ( \Equal13~0_combout\ & ( \Selector14~0_combout\ & ( (((\Selector1~2_combout\) # (\Selector3~0_combout\)) # (\Selector0~1_combout\)) # (\Selector2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector2~1_combout\,
	datab => \ALT_INV_Selector0~1_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_Equal13~0_combout\,
	dataf => \ALT_INV_Selector14~0_combout\,
	combout => \Selector21~5_combout\);

-- Location: LABCELL_X39_Y4_N45
\Selector21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~4_combout\ = ( \estado.b~q\ & ( \Equal13~0_combout\ & ( ((!\Selector3~0_combout\) # ((\Selector2~1_combout\) # (\Selector0~1_combout\))) # (\Selector1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~2_combout\,
	datab => \ALT_INV_Selector3~0_combout\,
	datac => \ALT_INV_Selector0~1_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	datae => \ALT_INV_estado.b~q\,
	dataf => \ALT_INV_Equal13~0_combout\,
	combout => \Selector21~4_combout\);

-- Location: LABCELL_X39_Y4_N48
\Selector21~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~6_combout\ = ( \led_erro2~reg0_q\ & ( \Selector21~1_combout\ & ( (((\Selector21~4_combout\) # (\Selector21~5_combout\)) # (\Selector21~2_combout\)) # (\Selector21~3_combout\) ) ) ) # ( !\led_erro2~reg0_q\ & ( \Selector21~1_combout\ & ( 
-- (((\Selector21~4_combout\) # (\Selector21~5_combout\)) # (\Selector21~2_combout\)) # (\Selector21~3_combout\) ) ) ) # ( \led_erro2~reg0_q\ & ( !\Selector21~1_combout\ ) ) # ( !\led_erro2~reg0_q\ & ( !\Selector21~1_combout\ & ( (((\Selector21~4_combout\) # 
-- (\Selector21~5_combout\)) # (\Selector21~2_combout\)) # (\Selector21~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector21~3_combout\,
	datab => \ALT_INV_Selector21~2_combout\,
	datac => \ALT_INV_Selector21~5_combout\,
	datad => \ALT_INV_Selector21~4_combout\,
	datae => \ALT_INV_led_erro2~reg0_q\,
	dataf => \ALT_INV_Selector21~1_combout\,
	combout => \Selector21~6_combout\);

-- Location: FF_X39_Y4_N50
\led_erro2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector21~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_erro2~reg0_q\);

-- Location: LABCELL_X41_Y4_N57
\Equal13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = ( num_erros(1) & ( (!num_erros(0) & (!num_erros(3) & !num_erros(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_num_erros(0),
	datab => ALT_INV_num_erros(3),
	datac => ALT_INV_num_erros(2),
	dataf => ALT_INV_num_erros(1),
	combout => \Equal13~1_combout\);

-- Location: LABCELL_X41_Y4_N24
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( \Equal13~1_combout\ & ( \Selector0~1_combout\ & ( \estado.d~q\ ) ) ) # ( \Equal13~1_combout\ & ( !\Selector0~1_combout\ & ( (\estado.d~q\ & ((!\Selector2~1_combout\) # ((!\Selector3~0_combout\) # (\Selector1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101000101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.d~q\,
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_Equal13~1_combout\,
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => \Selector22~0_combout\);

-- Location: LABCELL_X41_Y4_N42
\Selector22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = ( \Equal13~1_combout\ & ( \Selector0~1_combout\ & ( \estado.c~q\ ) ) ) # ( \Equal13~1_combout\ & ( !\Selector0~1_combout\ & ( (\estado.c~q\ & (((!\Selector2~1_combout\) # (\Selector1~2_combout\)) # (\Selector3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110001001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_estado.c~q\,
	datac => \ALT_INV_Selector1~2_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	datae => \ALT_INV_Equal13~1_combout\,
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => \Selector22~1_combout\);

-- Location: LABCELL_X41_Y4_N48
\Selector22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = ( \Selector14~0_combout\ & ( \Equal13~1_combout\ & ( (((\Selector1~2_combout\) # (\Selector0~1_combout\)) # (\Selector2~1_combout\)) # (\Selector3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_Selector0~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_Selector14~0_combout\,
	dataf => \ALT_INV_Equal13~1_combout\,
	combout => \Selector22~3_combout\);

-- Location: LABCELL_X41_Y4_N12
\Selector22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = ( \Selector2~1_combout\ & ( \Equal13~1_combout\ & ( \estado.b~q\ ) ) ) # ( !\Selector2~1_combout\ & ( \Equal13~1_combout\ & ( (\estado.b~q\ & ((!\Selector3~0_combout\) # ((\Selector1~2_combout\) # (\Selector0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.b~q\,
	datab => \ALT_INV_Selector3~0_combout\,
	datac => \ALT_INV_Selector0~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_Selector2~1_combout\,
	dataf => \ALT_INV_Equal13~1_combout\,
	combout => \Selector22~2_combout\);

-- Location: LABCELL_X41_Y4_N36
\Selector22~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~4_combout\ = ( \led_erro3~reg0_q\ & ( \Selector21~1_combout\ & ( (((\Selector22~2_combout\) # (\Selector22~3_combout\)) # (\Selector22~1_combout\)) # (\Selector22~0_combout\) ) ) ) # ( !\led_erro3~reg0_q\ & ( \Selector21~1_combout\ & ( 
-- (((\Selector22~2_combout\) # (\Selector22~3_combout\)) # (\Selector22~1_combout\)) # (\Selector22~0_combout\) ) ) ) # ( \led_erro3~reg0_q\ & ( !\Selector21~1_combout\ ) ) # ( !\led_erro3~reg0_q\ & ( !\Selector21~1_combout\ & ( (((\Selector22~2_combout\) # 
-- (\Selector22~3_combout\)) # (\Selector22~1_combout\)) # (\Selector22~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector22~0_combout\,
	datab => \ALT_INV_Selector22~1_combout\,
	datac => \ALT_INV_Selector22~3_combout\,
	datad => \ALT_INV_Selector22~2_combout\,
	datae => \ALT_INV_led_erro3~reg0_q\,
	dataf => \ALT_INV_Selector21~1_combout\,
	combout => \Selector22~4_combout\);

-- Location: FF_X41_Y4_N37
\led_erro3~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_erro3~reg0_q\);

-- Location: LABCELL_X41_Y4_N3
\display7seg2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display7seg2~0_combout\ = ( num_erros(0) & ( (!\estado.a~q\ & (((num_erros(2)) # (num_erros(1))) # (num_erros(3)))) ) ) # ( !num_erros(0) & ( (!\estado.a~q\ & ((num_erros(2)) # (num_erros(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.a~q\,
	datab => ALT_INV_num_erros(3),
	datac => ALT_INV_num_erros(1),
	datad => ALT_INV_num_erros(2),
	dataf => ALT_INV_num_erros(0),
	combout => \display7seg2~0_combout\);

-- Location: MLABCELL_X42_Y4_N24
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \Selector21~0_combout\ & ( \display7seg2~0_combout\ ) ) # ( \Selector21~0_combout\ & ( !\display7seg2~0_combout\ ) ) # ( !\Selector21~0_combout\ & ( !\display7seg2~0_combout\ & ( (!\Selector0~1_combout\ & 
-- ((!\Selector2~1_combout\ & ((!\Selector1~2_combout\))) # (\Selector2~1_combout\ & (\Selector3~0_combout\ & \Selector1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000010000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_Selector0~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_Selector21~0_combout\,
	dataf => \ALT_INV_display7seg2~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X42_Y4_N25
\display7seg1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg1[6]~reg0_q\);

-- Location: MLABCELL_X42_Y4_N18
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \Selector21~0_combout\ & ( \display7seg2~0_combout\ ) ) # ( !\Selector21~0_combout\ & ( \display7seg2~0_combout\ ) ) # ( !\Selector21~0_combout\ & ( !\display7seg2~0_combout\ & ( (!\Selector0~1_combout\ & 
-- ((!\Selector3~0_combout\ & (\Selector2~1_combout\ & !\Selector1~2_combout\)) # (\Selector3~0_combout\ & ((!\Selector1~2_combout\) # (\Selector2~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_Selector0~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_Selector21~0_combout\,
	dataf => \ALT_INV_display7seg2~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X42_Y4_N19
\display7seg1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg1[5]~reg0_q\);

-- Location: MLABCELL_X42_Y4_N36
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \Selector2~1_combout\ & ( \Selector14~0_combout\ & ( \Selector3~0_combout\ ) ) ) # ( !\Selector2~1_combout\ & ( \Selector14~0_combout\ & ( (\Selector3~0_combout\) # (\Selector1~2_combout\) ) ) ) # ( \Selector2~1_combout\ & ( 
-- !\Selector14~0_combout\ & ( (\Selector3~0_combout\ & ((\estado.b~q\) # (\estado.c~q\))) ) ) ) # ( !\Selector2~1_combout\ & ( !\Selector14~0_combout\ & ( (!\estado.c~q\ & (\estado.b~q\ & ((\Selector3~0_combout\) # (\Selector1~2_combout\)))) # (\estado.c~q\ 
-- & (((\Selector3~0_combout\)) # (\Selector1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100111111000001010000111100111111001111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.c~q\,
	datab => \ALT_INV_Selector1~2_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_estado.b~q\,
	datae => \ALT_INV_Selector2~1_combout\,
	dataf => \ALT_INV_Selector14~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X42_Y4_N37
\display7seg1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg1[4]~reg0_q\);

-- Location: MLABCELL_X42_Y4_N42
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \Selector21~0_combout\ & ( \display7seg2~0_combout\ ) ) # ( \Selector21~0_combout\ & ( !\display7seg2~0_combout\ ) ) # ( !\Selector21~0_combout\ & ( !\display7seg2~0_combout\ & ( (!\Selector0~1_combout\ & ((!\Selector3~0_combout\ 
-- & (!\Selector2~1_combout\ & \Selector1~2_combout\)) # (\Selector3~0_combout\ & (!\Selector2~1_combout\ $ (\Selector1~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010010000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_Selector0~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_Selector21~0_combout\,
	dataf => \ALT_INV_display7seg2~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X42_Y4_N43
\display7seg1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg1[3]~reg0_q\);

-- Location: MLABCELL_X42_Y4_N12
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \estado.c~q\ & ( \Selector14~0_combout\ & ( (\Selector2~1_combout\ & (!\Selector3~0_combout\ & !\Selector1~2_combout\)) ) ) ) # ( !\estado.c~q\ & ( \Selector14~0_combout\ & ( (\Selector2~1_combout\ & (!\Selector3~0_combout\ & 
-- !\Selector1~2_combout\)) ) ) ) # ( \estado.c~q\ & ( !\Selector14~0_combout\ & ( (\Selector2~1_combout\ & (!\Selector3~0_combout\ & !\Selector1~2_combout\)) ) ) ) # ( !\estado.c~q\ & ( !\Selector14~0_combout\ & ( (\estado.b~q\ & (\Selector2~1_combout\ & 
-- (!\Selector3~0_combout\ & !\Selector1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.b~q\,
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_estado.c~q\,
	dataf => \ALT_INV_Selector14~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X42_Y4_N14
\display7seg1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg1[2]~reg0_q\);

-- Location: MLABCELL_X42_Y4_N30
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \Selector21~0_combout\ & ( \display7seg2~0_combout\ ) ) # ( !\Selector21~0_combout\ & ( \display7seg2~0_combout\ ) ) # ( !\Selector21~0_combout\ & ( !\display7seg2~0_combout\ & ( (\Selector1~2_combout\ & (!\Selector3~0_combout\ $ 
-- (!\Selector2~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector1~2_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	datae => \ALT_INV_Selector21~0_combout\,
	dataf => \ALT_INV_display7seg2~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X42_Y4_N31
\display7seg1[1]~reg0\ : dffeas
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
	q => \display7seg1[1]~reg0_q\);

-- Location: MLABCELL_X42_Y4_N0
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \Selector21~0_combout\ & ( \display7seg2~0_combout\ ) ) # ( !\Selector21~0_combout\ & ( \display7seg2~0_combout\ ) ) # ( !\Selector21~0_combout\ & ( !\display7seg2~0_combout\ & ( (!\Selector2~1_combout\ & (!\Selector0~1_combout\ 
-- & (!\Selector3~0_combout\ $ (!\Selector1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \ALT_INV_Selector0~1_combout\,
	datad => \ALT_INV_Selector1~2_combout\,
	datae => \ALT_INV_Selector21~0_combout\,
	dataf => \ALT_INV_display7seg2~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X42_Y4_N1
\display7seg1[0]~reg0\ : dffeas
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
	q => \display7seg1[0]~reg0_q\);

-- Location: MLABCELL_X42_Y4_N54
\display7seg2[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display7seg2[5]~reg0feeder_combout\ = ( \display7seg2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_display7seg2~0_combout\,
	combout => \display7seg2[5]~reg0feeder_combout\);

-- Location: FF_X42_Y4_N56
\display7seg2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \display7seg2[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg2[5]~reg0_q\);

-- Location: MLABCELL_X42_Y4_N57
\display7seg2[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display7seg2[3]~reg0feeder_combout\ = ( \display7seg2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_display7seg2~0_combout\,
	combout => \display7seg2[3]~reg0feeder_combout\);

-- Location: FF_X42_Y4_N58
\display7seg2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \display7seg2[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg2[3]~reg0_q\);

-- Location: LABCELL_X41_Y4_N6
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \estado.d~q\ & ( num_erros(0) ) ) # ( !\estado.d~q\ & ( num_erros(0) & ( (!\estado.a~q\ & (((num_erros(2)) # (num_erros(1))) # (num_erros(3)))) ) ) ) # ( \estado.d~q\ & ( !num_erros(0) ) ) # ( !\estado.d~q\ & ( !num_erros(0) & ( 
-- (!\estado.a~q\ & ((num_erros(2)) # (num_erros(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010111111111111111100101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.a~q\,
	datab => ALT_INV_num_erros(3),
	datac => ALT_INV_num_erros(1),
	datad => ALT_INV_num_erros(2),
	datae => \ALT_INV_estado.d~q\,
	dataf => ALT_INV_num_erros(0),
	combout => \Selector12~0_combout\);

-- Location: FF_X41_Y4_N10
\display7seg2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg2[2]~reg0_q\);

-- Location: FF_X41_Y4_N29
\display7seg2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg2[1]~reg0_q\);

-- Location: FF_X42_Y4_N46
\display7seg2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \display7seg2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg2[0]~reg0_q\);

-- Location: MLABCELL_X42_Y4_N51
\display7seg3[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display7seg3[5]~reg0feeder_combout\ = ( \display7seg2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_display7seg2~0_combout\,
	combout => \display7seg3[5]~reg0feeder_combout\);

-- Location: FF_X42_Y4_N52
\display7seg3[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \display7seg3[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg3[5]~reg0_q\);

-- Location: LABCELL_X35_Y4_N51
\display7seg3[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display7seg3[3]~reg0feeder_combout\ = ( \Selector12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector12~0_combout\,
	combout => \display7seg3[3]~reg0feeder_combout\);

-- Location: FF_X35_Y4_N52
\display7seg3[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \display7seg3[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg3[3]~reg0_q\);

-- Location: LABCELL_X35_Y4_N48
\display7seg3[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display7seg3[2]~reg0feeder_combout\ = ( \Selector12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector12~0_combout\,
	combout => \display7seg3[2]~reg0feeder_combout\);

-- Location: FF_X35_Y4_N49
\display7seg3[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \display7seg3[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg3[2]~reg0_q\);

-- Location: FF_X41_Y4_N46
\display7seg3[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \display7seg2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg3[1]~reg0_q\);

-- Location: MLABCELL_X42_Y4_N9
\display7seg3[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display7seg3[0]~reg0feeder_combout\ = ( \display7seg2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_display7seg2~0_combout\,
	combout => \display7seg3[0]~reg0feeder_combout\);

-- Location: FF_X42_Y4_N10
\display7seg3[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \display7seg3[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg3[0]~reg0_q\);

-- Location: FF_X41_Y4_N40
\display7seg4[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \estado.d~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg4[6]~reg0_q\);

-- Location: FF_X41_Y4_N53
\display7seg4[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \display7seg2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg4[2]~reg0_q\);

-- Location: FF_X42_Y4_N41
\display7seg4[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \display7seg2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display7seg4[1]~reg0_q\);

-- Location: LABCELL_X29_Y41_N3
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


