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
-- Generated on "04/20/2022 15:30:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Decoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Decoder_vhd_vec_tst IS
END Decoder_vhd_vec_tst;
ARCHITECTURE Decoder_arch OF Decoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_func : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL alu_of : STD_LOGIC;
SIGNAL alu_sel : STD_LOGIC;
SIGNAL alu_zf : STD_LOGIC;
SIGNAL cf_strb : STD_LOGIC;
SIGNAL of_strb : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pc_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL pf_strb : STD_LOGIC;
SIGNAL ram_oe : STD_LOGIC;
SIGNAL ram_rw : STD_LOGIC;
SIGNAL ram_strb : STD_LOGIC;
SIGNAL rf_dsel : STD_LOGIC;
SIGNAL rf_oe : STD_LOGIC;
SIGNAL rf_strb : STD_LOGIC;
SIGNAL rf_wsel : STD_LOGIC;
SIGNAL sf_strb : STD_LOGIC;
SIGNAL zf_strb : STD_LOGIC;
COMPONENT Decoder
	PORT (
	alu_func : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	alu_of : IN STD_LOGIC;
	alu_sel : OUT STD_LOGIC;
	alu_zf : IN STD_LOGIC;
	cf_strb : OUT STD_LOGIC;
	of_strb : OUT STD_LOGIC;
	opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	pc_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	pf_strb : OUT STD_LOGIC;
	ram_oe : OUT STD_LOGIC;
	ram_rw : OUT STD_LOGIC;
	ram_strb : OUT STD_LOGIC;
	rf_dsel : OUT STD_LOGIC;
	rf_oe : OUT STD_LOGIC;
	rf_strb : OUT STD_LOGIC;
	rf_wsel : OUT STD_LOGIC;
	sf_strb : OUT STD_LOGIC;
	zf_strb : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Decoder
	PORT MAP (
-- list connections between master ports and signals
	alu_func => alu_func,
	alu_of => alu_of,
	alu_sel => alu_sel,
	alu_zf => alu_zf,
	cf_strb => cf_strb,
	of_strb => of_strb,
	opcode => opcode,
	pc_sel => pc_sel,
	pf_strb => pf_strb,
	ram_oe => ram_oe,
	ram_rw => ram_rw,
	ram_strb => ram_strb,
	rf_dsel => rf_dsel,
	rf_oe => rf_oe,
	rf_strb => rf_strb,
	rf_wsel => rf_wsel,
	sf_strb => sf_strb,
	zf_strb => zf_strb
	);
-- opcode[3]
t_prcs_opcode_3: PROCESS
BEGIN
	opcode(3) <= '0';
	WAIT FOR 640000 ps;
	opcode(3) <= '1';
WAIT;
END PROCESS t_prcs_opcode_3;
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
	opcode(2) <= '0';
	WAIT FOR 320000 ps;
	opcode(2) <= '1';
	WAIT FOR 320000 ps;
	opcode(2) <= '0';
	WAIT FOR 290000 ps;
	opcode(2) <= '1';
WAIT;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
	opcode(1) <= '0';
	WAIT FOR 160000 ps;
	opcode(1) <= '1';
	WAIT FOR 160000 ps;
	opcode(1) <= '0';
	WAIT FOR 160000 ps;
	opcode(1) <= '1';
	WAIT FOR 160000 ps;
	opcode(1) <= '0';
	WAIT FOR 160000 ps;
	opcode(1) <= '1';
	WAIT FOR 130000 ps;
	opcode(1) <= '0';
WAIT;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
	opcode(0) <= '0';
	WAIT FOR 80000 ps;
	opcode(0) <= '1';
	WAIT FOR 80000 ps;
	opcode(0) <= '0';
	WAIT FOR 80000 ps;
	opcode(0) <= '1';
	WAIT FOR 80000 ps;
	opcode(0) <= '0';
	WAIT FOR 80000 ps;
	opcode(0) <= '1';
	WAIT FOR 80000 ps;
	opcode(0) <= '0';
	WAIT FOR 80000 ps;
	opcode(0) <= '1';
	WAIT FOR 80000 ps;
	opcode(0) <= '0';
	WAIT FOR 80000 ps;
	opcode(0) <= '1';
	WAIT FOR 80000 ps;
	opcode(0) <= '0';
	WAIT FOR 70000 ps;
	opcode(0) <= '1';
	WAIT FOR 60000 ps;
	opcode(0) <= '0';
WAIT;
END PROCESS t_prcs_opcode_0;

-- alu_of
t_prcs_alu_of: PROCESS
BEGIN
	alu_of <= '1';
WAIT;
END PROCESS t_prcs_alu_of;

-- alu_zf
t_prcs_alu_zf: PROCESS
BEGIN
	alu_zf <= '1';
WAIT;
END PROCESS t_prcs_alu_zf;
END Decoder_arch;
