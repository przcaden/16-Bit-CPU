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
-- Generated on "04/28/2022 20:41:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RegFile
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RegFile_vhd_vec_tst IS
END RegFile_vhd_vec_tst;
ARCHITECTURE RegFile_arch OF RegFile_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL A_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL B_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL B_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL ClrN : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL In_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT RegFile
	PORT (
	A_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	A_sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	B_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	B_sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	clock : IN STD_LOGIC;
	ClrN : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	In_sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RegFile
	PORT MAP (
-- list connections between master ports and signals
	A_out => A_out,
	A_sel => A_sel,
	B_out => B_out,
	B_sel => B_sel,
	clock => clock,
	ClrN => ClrN,
	data_in => data_in,
	In_sel => In_sel
	);

-- ClrN
t_prcs_ClrN: PROCESS
BEGIN
	ClrN <= '0';
	WAIT FOR 40000 ps;
	ClrN <= '1';
WAIT;
END PROCESS t_prcs_ClrN;

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		clock <= '0';
		WAIT FOR 80000 ps;
		clock <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
-- data_in[15]
t_prcs_data_in_15: PROCESS
BEGIN
	data_in(15) <= '0';
WAIT;
END PROCESS t_prcs_data_in_15;
-- data_in[14]
t_prcs_data_in_14: PROCESS
BEGIN
	data_in(14) <= '0';
WAIT;
END PROCESS t_prcs_data_in_14;
-- data_in[13]
t_prcs_data_in_13: PROCESS
BEGIN
	data_in(13) <= '0';
WAIT;
END PROCESS t_prcs_data_in_13;
-- data_in[12]
t_prcs_data_in_12: PROCESS
BEGIN
	data_in(12) <= '0';
WAIT;
END PROCESS t_prcs_data_in_12;
-- data_in[11]
t_prcs_data_in_11: PROCESS
BEGIN
	data_in(11) <= '0';
	WAIT FOR 80000 ps;
	data_in(11) <= '1';
	WAIT FOR 160000 ps;
	data_in(11) <= '0';
WAIT;
END PROCESS t_prcs_data_in_11;
-- data_in[10]
t_prcs_data_in_10: PROCESS
BEGIN
	data_in(10) <= '0';
WAIT;
END PROCESS t_prcs_data_in_10;
-- data_in[9]
t_prcs_data_in_9: PROCESS
BEGIN
	data_in(9) <= '0';
	WAIT FOR 240000 ps;
	data_in(9) <= '1';
	WAIT FOR 160000 ps;
	data_in(9) <= '0';
WAIT;
END PROCESS t_prcs_data_in_9;
-- data_in[8]
t_prcs_data_in_8: PROCESS
BEGIN
	data_in(8) <= '0';
WAIT;
END PROCESS t_prcs_data_in_8;
-- data_in[7]
t_prcs_data_in_7: PROCESS
BEGIN
	data_in(7) <= '0';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	data_in(6) <= '0';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	data_in(5) <= '0';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	data_in(4) <= '0';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '0';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	data_in(2) <= '0';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
	data_in(1) <= '0';
WAIT;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
	data_in(0) <= '0';
	WAIT FOR 80000 ps;
	data_in(0) <= '1';
	WAIT FOR 320000 ps;
	data_in(0) <= '0';
WAIT;
END PROCESS t_prcs_data_in_0;
-- A_sel[2]
t_prcs_A_sel_2: PROCESS
BEGIN
	A_sel(2) <= '0';
WAIT;
END PROCESS t_prcs_A_sel_2;
-- A_sel[1]
t_prcs_A_sel_1: PROCESS
BEGIN
	A_sel(1) <= '0';
	WAIT FOR 400000 ps;
	A_sel(1) <= '1';
	WAIT FOR 160000 ps;
	A_sel(1) <= '0';
WAIT;
END PROCESS t_prcs_A_sel_1;
-- A_sel[0]
t_prcs_A_sel_0: PROCESS
BEGIN
	A_sel(0) <= '0';
	WAIT FOR 400000 ps;
	A_sel(0) <= '1';
	WAIT FOR 160000 ps;
	A_sel(0) <= '0';
WAIT;
END PROCESS t_prcs_A_sel_0;
-- B_sel[2]
t_prcs_B_sel_2: PROCESS
BEGIN
	B_sel(2) <= '0';
	WAIT FOR 400000 ps;
	B_sel(2) <= '1';
	WAIT FOR 160000 ps;
	B_sel(2) <= '0';
WAIT;
END PROCESS t_prcs_B_sel_2;
-- B_sel[1]
t_prcs_B_sel_1: PROCESS
BEGIN
	B_sel(1) <= '0';
WAIT;
END PROCESS t_prcs_B_sel_1;
-- B_sel[0]
t_prcs_B_sel_0: PROCESS
BEGIN
	B_sel(0) <= '0';
	WAIT FOR 400000 ps;
	B_sel(0) <= '1';
	WAIT FOR 160000 ps;
	B_sel(0) <= '0';
WAIT;
END PROCESS t_prcs_B_sel_0;
-- In_sel[2]
t_prcs_In_sel_2: PROCESS
BEGIN
	In_sel(2) <= '0';
	WAIT FOR 240000 ps;
	In_sel(2) <= '1';
	WAIT FOR 160000 ps;
	In_sel(2) <= '0';
WAIT;
END PROCESS t_prcs_In_sel_2;
-- In_sel[1]
t_prcs_In_sel_1: PROCESS
BEGIN
	In_sel(1) <= '0';
	WAIT FOR 80000 ps;
	In_sel(1) <= '1';
	WAIT FOR 160000 ps;
	In_sel(1) <= '0';
WAIT;
END PROCESS t_prcs_In_sel_1;
-- In_sel[0]
t_prcs_In_sel_0: PROCESS
BEGIN
	In_sel(0) <= '0';
	WAIT FOR 80000 ps;
	In_sel(0) <= '1';
	WAIT FOR 320000 ps;
	In_sel(0) <= '0';
WAIT;
END PROCESS t_prcs_In_sel_0;
END RegFile_arch;
