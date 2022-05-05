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
-- Generated on "04/22/2022 19:21:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Reg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Reg_vhd_vec_tst IS
END Reg_vhd_vec_tst;
ARCHITECTURE Reg_arch OF Reg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL ClrN : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Q : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT Reg
	PORT (
	clock : IN STD_LOGIC;
	ClrN : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Reg
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	ClrN => ClrN,
	D => D,
	Q => Q
	);

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

-- ClrN
t_prcs_ClrN: PROCESS
BEGIN
	ClrN <= '0';
	WAIT FOR 30000 ps;
	ClrN <= '1';
WAIT;
END PROCESS t_prcs_ClrN;
-- D[15]
t_prcs_D_15: PROCESS
BEGIN
	D(15) <= '0';
	WAIT FOR 220000 ps;
	D(15) <= '1';
	WAIT FOR 40000 ps;
	D(15) <= '0';
WAIT;
END PROCESS t_prcs_D_15;
-- D[14]
t_prcs_D_14: PROCESS
BEGIN
	D(14) <= '0';
	WAIT FOR 220000 ps;
	D(14) <= '1';
	WAIT FOR 40000 ps;
	D(14) <= '0';
WAIT;
END PROCESS t_prcs_D_14;
-- D[13]
t_prcs_D_13: PROCESS
BEGIN
	D(13) <= '0';
	WAIT FOR 220000 ps;
	D(13) <= '1';
	WAIT FOR 40000 ps;
	D(13) <= '0';
WAIT;
END PROCESS t_prcs_D_13;
-- D[12]
t_prcs_D_12: PROCESS
BEGIN
	D(12) <= '0';
	WAIT FOR 220000 ps;
	D(12) <= '1';
	WAIT FOR 40000 ps;
	D(12) <= '0';
WAIT;
END PROCESS t_prcs_D_12;
-- D[11]
t_prcs_D_11: PROCESS
BEGIN
	D(11) <= '0';
	WAIT FOR 220000 ps;
	D(11) <= '1';
	WAIT FOR 40000 ps;
	D(11) <= '0';
WAIT;
END PROCESS t_prcs_D_11;
-- D[10]
t_prcs_D_10: PROCESS
BEGIN
	D(10) <= '0';
	WAIT FOR 50000 ps;
	D(10) <= '1';
	WAIT FOR 130000 ps;
	D(10) <= '0';
	WAIT FOR 40000 ps;
	D(10) <= '1';
	WAIT FOR 40000 ps;
	D(10) <= '0';
WAIT;
END PROCESS t_prcs_D_10;
-- D[9]
t_prcs_D_9: PROCESS
BEGIN
	D(9) <= '0';
	WAIT FOR 50000 ps;
	D(9) <= '1';
	WAIT FOR 130000 ps;
	D(9) <= '0';
	WAIT FOR 40000 ps;
	D(9) <= '1';
	WAIT FOR 40000 ps;
	D(9) <= '0';
WAIT;
END PROCESS t_prcs_D_9;
-- D[8]
t_prcs_D_8: PROCESS
BEGIN
	D(8) <= '0';
	WAIT FOR 50000 ps;
	D(8) <= '1';
	WAIT FOR 130000 ps;
	D(8) <= '0';
	WAIT FOR 40000 ps;
	D(8) <= '1';
	WAIT FOR 40000 ps;
	D(8) <= '0';
WAIT;
END PROCESS t_prcs_D_8;
-- D[7]
t_prcs_D_7: PROCESS
BEGIN
	D(7) <= '0';
	WAIT FOR 50000 ps;
	D(7) <= '1';
	WAIT FOR 130000 ps;
	D(7) <= '0';
	WAIT FOR 40000 ps;
	D(7) <= '1';
	WAIT FOR 40000 ps;
	D(7) <= '0';
WAIT;
END PROCESS t_prcs_D_7;
-- D[6]
t_prcs_D_6: PROCESS
BEGIN
	D(6) <= '0';
	WAIT FOR 50000 ps;
	D(6) <= '1';
	WAIT FOR 130000 ps;
	D(6) <= '0';
	WAIT FOR 40000 ps;
	D(6) <= '1';
	WAIT FOR 40000 ps;
	D(6) <= '0';
WAIT;
END PROCESS t_prcs_D_6;
-- D[5]
t_prcs_D_5: PROCESS
BEGIN
	D(5) <= '0';
	WAIT FOR 50000 ps;
	D(5) <= '1';
	WAIT FOR 130000 ps;
	D(5) <= '0';
	WAIT FOR 40000 ps;
	D(5) <= '1';
	WAIT FOR 40000 ps;
	D(5) <= '0';
WAIT;
END PROCESS t_prcs_D_5;
-- D[4]
t_prcs_D_4: PROCESS
BEGIN
	D(4) <= '0';
	WAIT FOR 50000 ps;
	D(4) <= '1';
	WAIT FOR 130000 ps;
	D(4) <= '0';
	WAIT FOR 40000 ps;
	D(4) <= '1';
	WAIT FOR 40000 ps;
	D(4) <= '0';
WAIT;
END PROCESS t_prcs_D_4;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
	WAIT FOR 50000 ps;
	D(3) <= '1';
	WAIT FOR 130000 ps;
	D(3) <= '0';
	WAIT FOR 40000 ps;
	D(3) <= '1';
	WAIT FOR 40000 ps;
	D(3) <= '0';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
	WAIT FOR 50000 ps;
	D(2) <= '1';
	WAIT FOR 130000 ps;
	D(2) <= '0';
	WAIT FOR 40000 ps;
	D(2) <= '1';
	WAIT FOR 40000 ps;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
	WAIT FOR 50000 ps;
	D(1) <= '1';
	WAIT FOR 130000 ps;
	D(1) <= '0';
	WAIT FOR 40000 ps;
	D(1) <= '1';
	WAIT FOR 40000 ps;
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
	WAIT FOR 50000 ps;
	D(0) <= '1';
	WAIT FOR 130000 ps;
	D(0) <= '0';
	WAIT FOR 40000 ps;
	D(0) <= '1';
	WAIT FOR 40000 ps;
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;
END Reg_arch;
