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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/23/2022 15:29:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fechadura
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fechadura_vhd_vec_tst IS
END fechadura_vhd_vec_tst;
ARCHITECTURE fechadura_arch OF fechadura_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL led_acerto : STD_LOGIC;
SIGNAL led_erro : STD_LOGIC;
SIGNAL switches : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT fechadura
	PORT (
	clock : IN STD_LOGIC;
	led_acerto : OUT STD_LOGIC;
	led_erro : OUT STD_LOGIC;
	switches : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fechadura
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	led_acerto => led_acerto,
	led_erro => led_erro,
	switches => switches
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		clock <= '0';
		WAIT FOR 60000 ps;
		clock <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
-- switches[9]
t_prcs_switches_9: PROCESS
BEGIN
	switches(9) <= '0';
WAIT;
END PROCESS t_prcs_switches_9;
-- switches[8]
t_prcs_switches_8: PROCESS
BEGIN
	switches(8) <= '0';
WAIT;
END PROCESS t_prcs_switches_8;
-- switches[7]
t_prcs_switches_7: PROCESS
BEGIN
	switches(7) <= '0';
WAIT;
END PROCESS t_prcs_switches_7;
-- switches[6]
t_prcs_switches_6: PROCESS
BEGIN
	switches(6) <= '0';
WAIT;
END PROCESS t_prcs_switches_6;
-- switches[5]
t_prcs_switches_5: PROCESS
BEGIN
	switches(5) <= '0';
WAIT;
END PROCESS t_prcs_switches_5;
-- switches[4]
t_prcs_switches_4: PROCESS
BEGIN
	switches(4) <= '0';
WAIT;
END PROCESS t_prcs_switches_4;
-- switches[3]
t_prcs_switches_3: PROCESS
BEGIN
	switches(3) <= '0';
	WAIT FOR 400000 ps;
	switches(3) <= '1';
	WAIT FOR 100000 ps;
	switches(3) <= '0';
WAIT;
END PROCESS t_prcs_switches_3;
-- switches[2]
t_prcs_switches_2: PROCESS
BEGIN
	switches(2) <= '0';
	WAIT FOR 260000 ps;
	switches(2) <= '1';
	WAIT FOR 120000 ps;
	switches(2) <= '0';
WAIT;
END PROCESS t_prcs_switches_2;
-- switches[1]
t_prcs_switches_1: PROCESS
BEGIN
	switches(1) <= '0';
	WAIT FOR 140000 ps;
	switches(1) <= '1';
	WAIT FOR 100000 ps;
	switches(1) <= '0';
WAIT;
END PROCESS t_prcs_switches_1;
-- switches[0]
t_prcs_switches_0: PROCESS
BEGIN
	switches(0) <= '0';
	WAIT FOR 20000 ps;
	switches(0) <= '1';
	WAIT FOR 90000 ps;
	switches(0) <= '0';
WAIT;
END PROCESS t_prcs_switches_0;
END fechadura_arch;
