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
-- Generated on "04/20/2022 15:37:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          IR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY IR_vhd_vec_tst IS
END IR_vhd_vec_tst;
ARCHITECTURE IR_arch OF IR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL instr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ir_address : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL ir_immediate : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL ir_opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ir_rd : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ir_rs : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ir_rt : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ir_shift : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT IR
	PORT (
	clk : IN STD_LOGIC;
	instr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	ir_address : BUFFER STD_LOGIC_VECTOR(11 DOWNTO 0);
	ir_immediate : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	ir_opcode : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	ir_rd : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	ir_rs : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	ir_rt : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	ir_shift : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : IR
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	instr => instr,
	ir_address => ir_address,
	ir_immediate => ir_immediate,
	ir_opcode => ir_opcode,
	ir_rd => ir_rd,
	ir_rs => ir_rs,
	ir_rt => ir_rt,
	ir_shift => ir_shift
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		clk <= '0';
		WAIT FOR 80000 ps;
		clk <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- instr[15]
t_prcs_instr_15: PROCESS
BEGIN
	instr(15) <= '0';
	WAIT FOR 80000 ps;
	instr(15) <= '1';
	WAIT FOR 160000 ps;
	instr(15) <= '0';
WAIT;
END PROCESS t_prcs_instr_15;
-- instr[14]
t_prcs_instr_14: PROCESS
BEGIN
	instr(14) <= '0';
	WAIT FOR 80000 ps;
	instr(14) <= '1';
	WAIT FOR 160000 ps;
	instr(14) <= '0';
WAIT;
END PROCESS t_prcs_instr_14;
-- instr[13]
t_prcs_instr_13: PROCESS
BEGIN
	instr(13) <= '0';
	WAIT FOR 80000 ps;
	instr(13) <= '1';
	WAIT FOR 320000 ps;
	instr(13) <= '0';
WAIT;
END PROCESS t_prcs_instr_13;
-- instr[12]
t_prcs_instr_12: PROCESS
BEGIN
	instr(12) <= '0';
	WAIT FOR 240000 ps;
	instr(12) <= '1';
	WAIT FOR 320000 ps;
	instr(12) <= '0';
WAIT;
END PROCESS t_prcs_instr_12;
-- instr[11]
t_prcs_instr_11: PROCESS
BEGIN
	instr(11) <= '0';
	WAIT FOR 80000 ps;
	instr(11) <= '1';
	WAIT FOR 320000 ps;
	instr(11) <= '0';
WAIT;
END PROCESS t_prcs_instr_11;
-- instr[10]
t_prcs_instr_10: PROCESS
BEGIN
	instr(10) <= '0';
	WAIT FOR 240000 ps;
	instr(10) <= '1';
	WAIT FOR 160000 ps;
	instr(10) <= '0';
WAIT;
END PROCESS t_prcs_instr_10;
-- instr[9]
t_prcs_instr_9: PROCESS
BEGIN
	instr(9) <= '0';
	WAIT FOR 240000 ps;
	instr(9) <= '1';
	WAIT FOR 160000 ps;
	instr(9) <= '0';
WAIT;
END PROCESS t_prcs_instr_9;
-- instr[8]
t_prcs_instr_8: PROCESS
BEGIN
	instr(8) <= '0';
	WAIT FOR 80000 ps;
	instr(8) <= '1';
	WAIT FOR 160000 ps;
	instr(8) <= '0';
	WAIT FOR 160000 ps;
	instr(8) <= '1';
	WAIT FOR 160000 ps;
	instr(8) <= '0';
WAIT;
END PROCESS t_prcs_instr_8;
-- instr[7]
t_prcs_instr_7: PROCESS
BEGIN
	instr(7) <= '0';
	WAIT FOR 400000 ps;
	instr(7) <= '1';
	WAIT FOR 160000 ps;
	instr(7) <= '0';
WAIT;
END PROCESS t_prcs_instr_7;
-- instr[6]
t_prcs_instr_6: PROCESS
BEGIN
	instr(6) <= '0';
	WAIT FOR 400000 ps;
	instr(6) <= '1';
	WAIT FOR 160000 ps;
	instr(6) <= '0';
WAIT;
END PROCESS t_prcs_instr_6;
-- instr[5]
t_prcs_instr_5: PROCESS
BEGIN
	instr(5) <= '0';
	WAIT FOR 80000 ps;
	instr(5) <= '1';
	WAIT FOR 320000 ps;
	instr(5) <= '0';
WAIT;
END PROCESS t_prcs_instr_5;
-- instr[4]
t_prcs_instr_4: PROCESS
BEGIN
	instr(4) <= '0';
WAIT;
END PROCESS t_prcs_instr_4;
-- instr[3]
t_prcs_instr_3: PROCESS
BEGIN
	instr(3) <= '0';
	WAIT FOR 240000 ps;
	instr(3) <= '1';
	WAIT FOR 160000 ps;
	instr(3) <= '0';
WAIT;
END PROCESS t_prcs_instr_3;
-- instr[2]
t_prcs_instr_2: PROCESS
BEGIN
	instr(2) <= '0';
	WAIT FOR 80000 ps;
	instr(2) <= '1';
	WAIT FOR 160000 ps;
	instr(2) <= '0';
	WAIT FOR 160000 ps;
	instr(2) <= '1';
	WAIT FOR 160000 ps;
	instr(2) <= '0';
WAIT;
END PROCESS t_prcs_instr_2;
-- instr[1]
t_prcs_instr_1: PROCESS
BEGIN
	instr(1) <= '0';
	WAIT FOR 240000 ps;
	instr(1) <= '1';
	WAIT FOR 160000 ps;
	instr(1) <= '0';
WAIT;
END PROCESS t_prcs_instr_1;
-- instr[0]
t_prcs_instr_0: PROCESS
BEGIN
	instr(0) <= '0';
WAIT;
END PROCESS t_prcs_instr_0;
END IR_arch;
