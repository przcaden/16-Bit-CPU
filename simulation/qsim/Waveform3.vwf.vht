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
-- Generated on "04/27/2022 22:26:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_vhd_vec_tst IS
END ALU_vhd_vec_tst;
ARCHITECTURE ALU_arch OF ALU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL carry : STD_LOGIC;
SIGNAL funct : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL input_bus1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL input_bus2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL overflow : STD_LOGIC;
SIGNAL parity : STD_LOGIC;
SIGNAL result : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL shift : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL sign : STD_LOGIC;
SIGNAL zero : STD_LOGIC;
COMPONENT ALU
	PORT (
	carry : OUT STD_LOGIC;
	funct : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	input_bus1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	input_bus2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	overflow : OUT STD_LOGIC;
	parity : OUT STD_LOGIC;
	result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	shift : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	sign : OUT STD_LOGIC;
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU
	PORT MAP (
-- list connections between master ports and signals
	carry => carry,
	funct => funct,
	input_bus1 => input_bus1,
	input_bus2 => input_bus2,
	overflow => overflow,
	parity => parity,
	result => result,
	shift => shift,
	sign => sign,
	zero => zero
	);
-- funct[2]
t_prcs_funct_2: PROCESS
BEGIN
	funct(2) <= '0';
	WAIT FOR 130000 ps;
	funct(2) <= '1';
	WAIT FOR 50000 ps;
	funct(2) <= '0';
WAIT;
END PROCESS t_prcs_funct_2;
-- funct[1]
t_prcs_funct_1: PROCESS
BEGIN
	funct(1) <= '0';
	WAIT FOR 90000 ps;
	funct(1) <= '1';
	WAIT FOR 90000 ps;
	funct(1) <= '0';
WAIT;
END PROCESS t_prcs_funct_1;
-- funct[0]
t_prcs_funct_0: PROCESS
BEGIN
	funct(0) <= '0';
	WAIT FOR 50000 ps;
	funct(0) <= '1';
	WAIT FOR 40000 ps;
	funct(0) <= '0';
WAIT;
END PROCESS t_prcs_funct_0;
-- input_bus1[15]
t_prcs_input_bus1_15: PROCESS
BEGIN
	input_bus1(15) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_15;
-- input_bus1[14]
t_prcs_input_bus1_14: PROCESS
BEGIN
	input_bus1(14) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_14;
-- input_bus1[13]
t_prcs_input_bus1_13: PROCESS
BEGIN
	input_bus1(13) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_13;
-- input_bus1[12]
t_prcs_input_bus1_12: PROCESS
BEGIN
	input_bus1(12) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_12;
-- input_bus1[11]
t_prcs_input_bus1_11: PROCESS
BEGIN
	input_bus1(11) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_11;
-- input_bus1[10]
t_prcs_input_bus1_10: PROCESS
BEGIN
	input_bus1(10) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_10;
-- input_bus1[9]
t_prcs_input_bus1_9: PROCESS
BEGIN
	input_bus1(9) <= '0';
	WAIT FOR 130000 ps;
	input_bus1(9) <= '1';
	WAIT FOR 50000 ps;
	input_bus1(9) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_9;
-- input_bus1[8]
t_prcs_input_bus1_8: PROCESS
BEGIN
	input_bus1(8) <= '0';
	WAIT FOR 130000 ps;
	input_bus1(8) <= '1';
	WAIT FOR 50000 ps;
	input_bus1(8) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_8;
-- input_bus1[7]
t_prcs_input_bus1_7: PROCESS
BEGIN
	input_bus1(7) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_7;
-- input_bus1[6]
t_prcs_input_bus1_6: PROCESS
BEGIN
	input_bus1(6) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_6;
-- input_bus1[5]
t_prcs_input_bus1_5: PROCESS
BEGIN
	input_bus1(5) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_5;
-- input_bus1[4]
t_prcs_input_bus1_4: PROCESS
BEGIN
	input_bus1(4) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_4;
-- input_bus1[3]
t_prcs_input_bus1_3: PROCESS
BEGIN
	input_bus1(3) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_3;
-- input_bus1[2]
t_prcs_input_bus1_2: PROCESS
BEGIN
	input_bus1(2) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_2;
-- input_bus1[1]
t_prcs_input_bus1_1: PROCESS
BEGIN
	input_bus1(1) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_1;
-- input_bus1[0]
t_prcs_input_bus1_0: PROCESS
BEGIN
	input_bus1(0) <= '1';
	WAIT FOR 50000 ps;
	input_bus1(0) <= '0';
WAIT;
END PROCESS t_prcs_input_bus1_0;
-- input_bus2[15]
t_prcs_input_bus2_15: PROCESS
BEGIN
	input_bus2(15) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_15;
-- input_bus2[14]
t_prcs_input_bus2_14: PROCESS
BEGIN
	input_bus2(14) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_14;
-- input_bus2[13]
t_prcs_input_bus2_13: PROCESS
BEGIN
	input_bus2(13) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_13;
-- input_bus2[12]
t_prcs_input_bus2_12: PROCESS
BEGIN
	input_bus2(12) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_12;
-- input_bus2[11]
t_prcs_input_bus2_11: PROCESS
BEGIN
	input_bus2(11) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_11;
-- input_bus2[10]
t_prcs_input_bus2_10: PROCESS
BEGIN
	input_bus2(10) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_10;
-- input_bus2[9]
t_prcs_input_bus2_9: PROCESS
BEGIN
	input_bus2(9) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_9;
-- input_bus2[8]
t_prcs_input_bus2_8: PROCESS
BEGIN
	input_bus2(8) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_8;
-- input_bus2[7]
t_prcs_input_bus2_7: PROCESS
BEGIN
	input_bus2(7) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_7;
-- input_bus2[6]
t_prcs_input_bus2_6: PROCESS
BEGIN
	input_bus2(6) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_6;
-- input_bus2[5]
t_prcs_input_bus2_5: PROCESS
BEGIN
	input_bus2(5) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_5;
-- input_bus2[4]
t_prcs_input_bus2_4: PROCESS
BEGIN
	input_bus2(4) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_4;
-- input_bus2[3]
t_prcs_input_bus2_3: PROCESS
BEGIN
	input_bus2(3) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_3;
-- input_bus2[2]
t_prcs_input_bus2_2: PROCESS
BEGIN
	input_bus2(2) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_2;
-- input_bus2[1]
t_prcs_input_bus2_1: PROCESS
BEGIN
	input_bus2(1) <= '1';
	WAIT FOR 50000 ps;
	input_bus2(1) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_1;
-- input_bus2[0]
t_prcs_input_bus2_0: PROCESS
BEGIN
	input_bus2(0) <= '1';
	WAIT FOR 50000 ps;
	input_bus2(0) <= '0';
WAIT;
END PROCESS t_prcs_input_bus2_0;
-- shift[2]
t_prcs_shift_2: PROCESS
BEGIN
	shift(2) <= '0';
WAIT;
END PROCESS t_prcs_shift_2;
-- shift[1]
t_prcs_shift_1: PROCESS
BEGIN
	shift(1) <= '0';
	WAIT FOR 130000 ps;
	shift(1) <= '1';
	WAIT FOR 50000 ps;
	shift(1) <= '0';
WAIT;
END PROCESS t_prcs_shift_1;
-- shift[0]
t_prcs_shift_0: PROCESS
BEGIN
	shift(0) <= '0';
WAIT;
END PROCESS t_prcs_shift_0;
END ALU_arch;
