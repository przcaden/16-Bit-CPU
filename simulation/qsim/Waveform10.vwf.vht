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
-- Generated on "04/17/2022 23:43:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DFlipFlop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DFlipFlop_vhd_vec_tst IS
END DFlipFlop_vhd_vec_tst;
ARCHITECTURE DFlipFlop_arch OF DFlipFlop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL Clr : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL q2 : STD_LOGIC;
COMPONENT DFlipFlop
	PORT (
	Clk : IN STD_LOGIC;
	Clr : IN STD_LOGIC;
	d : IN STD_LOGIC;
	q2 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DFlipFlop
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	Clr => Clr,
	d => d,
	q2 => q2
	);

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
	d <= '0';
	WAIT FOR 70000 ps;
	d <= '1';
	WAIT FOR 20000 ps;
	d <= '0';
	WAIT FOR 140000 ps;
	d <= '1';
	WAIT FOR 180000 ps;
	d <= '0';
WAIT;
END PROCESS t_prcs_d;
END DFlipFlop_arch;
