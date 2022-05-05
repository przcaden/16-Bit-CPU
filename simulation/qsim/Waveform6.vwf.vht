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
-- Generated on "04/27/2022 22:43:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ROM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM_vhd_vec_tst IS
END ROM_vhd_vec_tst;
ARCHITECTURE ROM_arch OF ROM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL data : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ROM
	PORT (
	addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ROM
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	data => data
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
	WAIT FOR 120000 ps;
	addr(3) <= '1';
	WAIT FOR 90000 ps;
	addr(3) <= '0';
WAIT;
END PROCESS t_prcs_addr_3;
-- addr[2]
t_prcs_addr_2: PROCESS
BEGIN
	addr(2) <= '0';
	WAIT FOR 60000 ps;
	addr(2) <= '1';
	WAIT FOR 60000 ps;
	addr(2) <= '0';
	WAIT FOR 60000 ps;
	addr(2) <= '1';
	WAIT FOR 30000 ps;
	addr(2) <= '0';
WAIT;
END PROCESS t_prcs_addr_2;
-- addr[1]
t_prcs_addr_1: PROCESS
BEGIN
	addr(1) <= '0';
	WAIT FOR 30000 ps;
	addr(1) <= '1';
	WAIT FOR 30000 ps;
	addr(1) <= '0';
	WAIT FOR 30000 ps;
	addr(1) <= '1';
	WAIT FOR 30000 ps;
	addr(1) <= '0';
	WAIT FOR 30000 ps;
	addr(1) <= '1';
	WAIT FOR 30000 ps;
	addr(1) <= '0';
WAIT;
END PROCESS t_prcs_addr_1;
-- addr[0]
t_prcs_addr_0: PROCESS
BEGIN
	addr(0) <= '0';
WAIT;
END PROCESS t_prcs_addr_0;
END ROM_arch;
