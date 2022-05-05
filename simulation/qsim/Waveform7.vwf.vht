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
-- Generated on "04/18/2022 17:19:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RAM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM_vhd_vec_tst IS
END RAM_vhd_vec_tst;
ARCHITECTURE RAM_arch OF RAM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rd : STD_LOGIC;
SIGNAL wr_en : STD_LOGIC;
COMPONENT RAM
	PORT (
	addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	data : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rd : IN STD_LOGIC;
	wr_en : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RAM
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk => clk,
	data => data,
	rd => rd,
	wr_en => wr_en
	);
-- addr[15]
t_prcs_addr_15: PROCESS
BEGIN
	addr(15) <= '0';
WAIT;
END PROCESS t_prcs_addr_15;
-- addr[14]
t_prcs_addr_14: PROCESS
BEGIN
	addr(14) <= '0';
WAIT;
END PROCESS t_prcs_addr_14;
-- addr[13]
t_prcs_addr_13: PROCESS
BEGIN
	addr(13) <= '0';
WAIT;
END PROCESS t_prcs_addr_13;
-- addr[12]
t_prcs_addr_12: PROCESS
BEGIN
	addr(12) <= '0';
WAIT;
END PROCESS t_prcs_addr_12;
-- addr[11]
t_prcs_addr_11: PROCESS
BEGIN
	addr(11) <= '0';
WAIT;
END PROCESS t_prcs_addr_11;
-- addr[10]
t_prcs_addr_10: PROCESS
BEGIN
	addr(10) <= '0';
WAIT;
END PROCESS t_prcs_addr_10;
-- addr[9]
t_prcs_addr_9: PROCESS
BEGIN
	addr(9) <= '0';
WAIT;
END PROCESS t_prcs_addr_9;
-- addr[8]
t_prcs_addr_8: PROCESS
BEGIN
	addr(8) <= '0';
WAIT;
END PROCESS t_prcs_addr_8;
-- addr[7]
t_prcs_addr_7: PROCESS
BEGIN
	addr(7) <= '0';
WAIT;
END PROCESS t_prcs_addr_7;
-- addr[6]
t_prcs_addr_6: PROCESS
BEGIN
	addr(6) <= '0';
WAIT;
END PROCESS t_prcs_addr_6;
-- addr[5]
t_prcs_addr_5: PROCESS
BEGIN
	addr(5) <= '0';
WAIT;
END PROCESS t_prcs_addr_5;
-- addr[4]
t_prcs_addr_4: PROCESS
BEGIN
	addr(4) <= '0';
WAIT;
END PROCESS t_prcs_addr_4;
-- addr[3]
t_prcs_addr_3: PROCESS
BEGIN
	addr(3) <= '0';
WAIT;
END PROCESS t_prcs_addr_3;
-- addr[2]
t_prcs_addr_2: PROCESS
BEGIN
	addr(2) <= '0';
WAIT;
END PROCESS t_prcs_addr_2;
-- addr[1]
t_prcs_addr_1: PROCESS
BEGIN
	addr(1) <= '0';
	WAIT FOR 10000 ps;
	addr(1) <= '1';
	WAIT FOR 80000 ps;
	addr(1) <= '0';
	WAIT FOR 50000 ps;
	addr(1) <= '1';
	WAIT FOR 80000 ps;
	addr(1) <= '0';
	WAIT FOR 90000 ps;
	addr(1) <= '1';
	WAIT FOR 30000 ps;
	addr(1) <= '0';
WAIT;
END PROCESS t_prcs_addr_1;
-- addr[0]
t_prcs_addr_0: PROCESS
BEGIN
	addr(0) <= '0';
	WAIT FOR 10000 ps;
	addr(0) <= '1';
	WAIT FOR 80000 ps;
	addr(0) <= '0';
	WAIT FOR 50000 ps;
	addr(0) <= '1';
	WAIT FOR 80000 ps;
	addr(0) <= '0';
	WAIT FOR 90000 ps;
	addr(0) <= '1';
	WAIT FOR 30000 ps;
	addr(0) <= '0';
WAIT;
END PROCESS t_prcs_addr_0;
-- data[15]
t_prcs_data_15: PROCESS
BEGIN
	data(15) <= '0';
	WAIT FOR 90000 ps;
	data(15) <= 'Z';
WAIT;
END PROCESS t_prcs_data_15;
-- data[14]
t_prcs_data_14: PROCESS
BEGIN
	data(14) <= '0';
	WAIT FOR 90000 ps;
	data(14) <= 'Z';
WAIT;
END PROCESS t_prcs_data_14;
-- data[13]
t_prcs_data_13: PROCESS
BEGIN
	data(13) <= '0';
	WAIT FOR 90000 ps;
	data(13) <= 'Z';
WAIT;
END PROCESS t_prcs_data_13;
-- data[12]
t_prcs_data_12: PROCESS
BEGIN
	data(12) <= '0';
	WAIT FOR 90000 ps;
	data(12) <= 'Z';
WAIT;
END PROCESS t_prcs_data_12;
-- data[11]
t_prcs_data_11: PROCESS
BEGIN
	data(11) <= '0';
	WAIT FOR 90000 ps;
	data(11) <= 'Z';
WAIT;
END PROCESS t_prcs_data_11;
-- data[10]
t_prcs_data_10: PROCESS
BEGIN
	data(10) <= '0';
	WAIT FOR 90000 ps;
	data(10) <= 'Z';
WAIT;
END PROCESS t_prcs_data_10;
-- data[9]
t_prcs_data_9: PROCESS
BEGIN
	data(9) <= '0';
	WAIT FOR 10000 ps;
	data(9) <= '1';
	WAIT FOR 80000 ps;
	data(9) <= 'Z';
WAIT;
END PROCESS t_prcs_data_9;
-- data[8]
t_prcs_data_8: PROCESS
BEGIN
	data(8) <= '0';
	WAIT FOR 90000 ps;
	data(8) <= 'Z';
WAIT;
END PROCESS t_prcs_data_8;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= '0';
	WAIT FOR 90000 ps;
	data(7) <= 'Z';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '0';
	WAIT FOR 90000 ps;
	data(6) <= 'Z';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= '0';
	WAIT FOR 90000 ps;
	data(5) <= 'Z';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
	WAIT FOR 90000 ps;
	data(4) <= 'Z';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '0';
	WAIT FOR 90000 ps;
	data(3) <= 'Z';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '0';
	WAIT FOR 90000 ps;
	data(2) <= 'Z';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '0';
	WAIT FOR 10000 ps;
	data(1) <= '1';
	WAIT FOR 80000 ps;
	data(1) <= 'Z';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '0';
	WAIT FOR 10000 ps;
	data(0) <= '1';
	WAIT FOR 80000 ps;
	data(0) <= 'Z';
WAIT;
END PROCESS t_prcs_data_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- wr_en
t_prcs_wr_en: PROCESS
BEGIN
	wr_en <= '1';
	WAIT FOR 100000 ps;
	wr_en <= '0';
WAIT;
END PROCESS t_prcs_wr_en;

-- rd
t_prcs_rd: PROCESS
BEGIN
	rd <= '0';
	WAIT FOR 140000 ps;
	rd <= '1';
	WAIT FOR 100000 ps;
	rd <= '0';
WAIT;
END PROCESS t_prcs_rd;
END RAM_arch;
