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
-- Generated on "04/28/2022 16:27:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_vec_tst IS
END CPU_vhd_vec_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL alufunc : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL aluu_sel : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL file_dsel : STD_LOGIC;
SIGNAL file_wsel : STD_LOGIC;
SIGNAL imm : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL led : STD_LOGIC;
SIGNAL op : STD_LOGIC;
SIGNAL pc_mux : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pcsel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ram_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ram_mux : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ram_out_en : STD_LOGIC;
SIGNAL rd : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL readwrite : STD_LOGIC;
SIGNAL rf_out_en : STD_LOGIC;
SIGNAL rom_addr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rs : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL rs_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rt : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL rt_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL seg0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL shift : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT CPU
	PORT (
	alu_out : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	alufunc : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	aluu_sel : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	file_dsel : BUFFER STD_LOGIC;
	file_wsel : BUFFER STD_LOGIC;
	imm : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	led : BUFFER STD_LOGIC;
	op : BUFFER STD_LOGIC;
	pc_mux : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	pcsel : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	ram_data : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	ram_mux : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	ram_out_en : BUFFER STD_LOGIC;
	rd : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	readwrite : BUFFER STD_LOGIC;
	rf_out_en : BUFFER STD_LOGIC;
	rom_addr : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	rs : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	rs_out : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	rt : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	rt_out : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	seg0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	shift : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	alu_out => alu_out,
	alufunc => alufunc,
	aluu_sel => aluu_sel,
	clk => clk,
	file_dsel => file_dsel,
	file_wsel => file_wsel,
	imm => imm,
	led => led,
	op => op,
	pc_mux => pc_mux,
	pcsel => pcsel,
	ram_data => ram_data,
	ram_mux => ram_mux,
	ram_out_en => ram_out_en,
	rd => rd,
	readwrite => readwrite,
	rf_out_en => rf_out_en,
	rom_addr => rom_addr,
	rs => rs,
	rs_out => rs_out,
	rt => rt,
	rt_out => rt_out,
	seg0 => seg0,
	seg1 => seg1,
	seg2 => seg2,
	seg3 => seg3,
	shift => shift
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- ram_data[15]
t_prcs_ram_data_15: PROCESS
BEGIN
	ram_data(15) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_15;
-- ram_data[14]
t_prcs_ram_data_14: PROCESS
BEGIN
	ram_data(14) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_14;
-- ram_data[13]
t_prcs_ram_data_13: PROCESS
BEGIN
	ram_data(13) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_13;
-- ram_data[12]
t_prcs_ram_data_12: PROCESS
BEGIN
	ram_data(12) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_12;
-- ram_data[11]
t_prcs_ram_data_11: PROCESS
BEGIN
	ram_data(11) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_11;
-- ram_data[10]
t_prcs_ram_data_10: PROCESS
BEGIN
	ram_data(10) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_10;
-- ram_data[9]
t_prcs_ram_data_9: PROCESS
BEGIN
	ram_data(9) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_9;
-- ram_data[8]
t_prcs_ram_data_8: PROCESS
BEGIN
	ram_data(8) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_8;
-- ram_data[7]
t_prcs_ram_data_7: PROCESS
BEGIN
	ram_data(7) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_7;
-- ram_data[6]
t_prcs_ram_data_6: PROCESS
BEGIN
	ram_data(6) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_6;
-- ram_data[5]
t_prcs_ram_data_5: PROCESS
BEGIN
	ram_data(5) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_5;
-- ram_data[4]
t_prcs_ram_data_4: PROCESS
BEGIN
	ram_data(4) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_4;
-- ram_data[3]
t_prcs_ram_data_3: PROCESS
BEGIN
	ram_data(3) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_3;
-- ram_data[2]
t_prcs_ram_data_2: PROCESS
BEGIN
	ram_data(2) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_2;
-- ram_data[1]
t_prcs_ram_data_1: PROCESS
BEGIN
	ram_data(1) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_1;
-- ram_data[0]
t_prcs_ram_data_0: PROCESS
BEGIN
	ram_data(0) <= 'Z';
WAIT;
END PROCESS t_prcs_ram_data_0;
END CPU_arch;
