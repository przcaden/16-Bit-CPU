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
-- Generated on "04/17/2022 23:38:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          D_Latch_Clr
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY D_Latch_Clr_vhd_vec_tst IS
END D_Latch_Clr_vhd_vec_tst;
ARCHITECTURE D_Latch_Clr_arch OF D_Latch_Clr_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clr : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL g : STD_LOGIC;
SIGNAL p : STD_LOGIC;
SIGNAL q : STD_LOGIC;
COMPONENT D_Latch_Clr
	PORT (
	Clr : IN STD_LOGIC;
	d : IN STD_LOGIC;
	g : IN STD_LOGIC;
	p : BUFFER STD_LOGIC;
	q : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : D_Latch_Clr
	PORT MAP (
-- list connections between master ports and signals
	Clr => Clr,
	d => d,
	g => g,
	p => p,
	q => q
	);

-- Clr
t_prcs_Clr: PROCESS
BEGIN
	Clr <= '0';
	WAIT FOR 20000 ps;
	Clr <= '1';
WAIT;
END PROCESS t_prcs_Clr;

-- d
t_prcs_d: PROCESS
BEGIN
	d <= '1';
	WAIT FOR 270000 ps;
	d <= '0';
WAIT;
END PROCESS t_prcs_d;

-- g
t_prcs_g: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		g <= '0';
		WAIT FOR 40000 ps;
		g <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	g <= '0';
WAIT;
END PROCESS t_prcs_g;
END D_Latch_Clr_arch;
