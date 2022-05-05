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
-- Generated on "03/28/2022 10:40:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RightShifter16bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RightShifter16bit_vhd_vec_tst IS
END RightShifter16bit_vhd_vec_tst;
ARCHITECTURE RightShifter16bit_arch OF RightShifter16bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL le : STD_LOGIC;
SIGNAL p0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL s0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL she : STD_LOGIC;
SIGNAL si : STD_LOGIC;
SIGNAL so : STD_LOGIC;
COMPONENT RightShifter16bit
	PORT (
	Clk : IN STD_LOGIC;
	le : IN STD_LOGIC;
	p0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	s0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	she : IN STD_LOGIC;
	si : IN STD_LOGIC;
	so : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RightShifter16bit
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	le => le,
	p0 => p0,
	s0 => s0,
	she => she,
	si => si,
	so => so
	);

-- le
t_prcs_le: PROCESS
BEGIN
	le <= '1';
	WAIT FOR 100000 ps;
	le <= '0';
WAIT;
END PROCESS t_prcs_le;

-- she
t_prcs_she: PROCESS
BEGIN
	she <= '1';
WAIT;
END PROCESS t_prcs_she;

-- si
t_prcs_si: PROCESS
BEGIN
	si <= '0';
WAIT;
END PROCESS t_prcs_si;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Clk <= '0';
		WAIT FOR 40000 ps;
		Clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	Clk <= '0';
WAIT;
END PROCESS t_prcs_Clk;
-- s0[15]
t_prcs_s0_15: PROCESS
BEGIN
	s0(15) <= '0';
WAIT;
END PROCESS t_prcs_s0_15;
-- s0[14]
t_prcs_s0_14: PROCESS
BEGIN
	s0(14) <= '0';
WAIT;
END PROCESS t_prcs_s0_14;
-- s0[13]
t_prcs_s0_13: PROCESS
BEGIN
	s0(13) <= '0';
WAIT;
END PROCESS t_prcs_s0_13;
-- s0[12]
t_prcs_s0_12: PROCESS
BEGIN
	s0(12) <= '0';
WAIT;
END PROCESS t_prcs_s0_12;
-- s0[11]
t_prcs_s0_11: PROCESS
BEGIN
	s0(11) <= '0';
WAIT;
END PROCESS t_prcs_s0_11;
-- s0[10]
t_prcs_s0_10: PROCESS
BEGIN
	s0(10) <= '0';
WAIT;
END PROCESS t_prcs_s0_10;
-- s0[9]
t_prcs_s0_9: PROCESS
BEGIN
	s0(9) <= '0';
WAIT;
END PROCESS t_prcs_s0_9;
-- s0[8]
t_prcs_s0_8: PROCESS
BEGIN
	s0(8) <= '0';
WAIT;
END PROCESS t_prcs_s0_8;
-- s0[7]
t_prcs_s0_7: PROCESS
BEGIN
	s0(7) <= '0';
WAIT;
END PROCESS t_prcs_s0_7;
-- s0[6]
t_prcs_s0_6: PROCESS
BEGIN
	s0(6) <= '0';
WAIT;
END PROCESS t_prcs_s0_6;
-- s0[5]
t_prcs_s0_5: PROCESS
BEGIN
	s0(5) <= '0';
WAIT;
END PROCESS t_prcs_s0_5;
-- s0[4]
t_prcs_s0_4: PROCESS
BEGIN
	s0(4) <= '0';
WAIT;
END PROCESS t_prcs_s0_4;
-- s0[3]
t_prcs_s0_3: PROCESS
BEGIN
	s0(3) <= '0';
WAIT;
END PROCESS t_prcs_s0_3;
-- s0[2]
t_prcs_s0_2: PROCESS
BEGIN
	s0(2) <= '1';
	WAIT FOR 100000 ps;
	s0(2) <= '0';
WAIT;
END PROCESS t_prcs_s0_2;
-- s0[1]
t_prcs_s0_1: PROCESS
BEGIN
	s0(1) <= '0';
WAIT;
END PROCESS t_prcs_s0_1;
-- s0[0]
t_prcs_s0_0: PROCESS
BEGIN
	s0(0) <= '0';
WAIT;
END PROCESS t_prcs_s0_0;
END RightShifter16bit_arch;
