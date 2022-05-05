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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "04/28/2022 20:41:51"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RegFile IS
    PORT (
	clock : IN std_logic;
	ClrN : IN std_logic;
	A_sel : IN std_logic_vector(2 DOWNTO 0);
	B_sel : IN std_logic_vector(2 DOWNTO 0);
	In_sel : IN std_logic_vector(2 DOWNTO 0);
	data_in : IN std_logic_vector(15 DOWNTO 0);
	A_out : OUT std_logic_vector(15 DOWNTO 0);
	B_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END RegFile;

ARCHITECTURE structure OF RegFile IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_ClrN : std_logic;
SIGNAL ww_A_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_B_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_In_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_A_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \A_out[0]~output_o\ : std_logic;
SIGNAL \A_out[1]~output_o\ : std_logic;
SIGNAL \A_out[2]~output_o\ : std_logic;
SIGNAL \A_out[3]~output_o\ : std_logic;
SIGNAL \A_out[4]~output_o\ : std_logic;
SIGNAL \A_out[5]~output_o\ : std_logic;
SIGNAL \A_out[6]~output_o\ : std_logic;
SIGNAL \A_out[7]~output_o\ : std_logic;
SIGNAL \A_out[8]~output_o\ : std_logic;
SIGNAL \A_out[9]~output_o\ : std_logic;
SIGNAL \A_out[10]~output_o\ : std_logic;
SIGNAL \A_out[11]~output_o\ : std_logic;
SIGNAL \A_out[12]~output_o\ : std_logic;
SIGNAL \A_out[13]~output_o\ : std_logic;
SIGNAL \A_out[14]~output_o\ : std_logic;
SIGNAL \A_out[15]~output_o\ : std_logic;
SIGNAL \B_out[0]~output_o\ : std_logic;
SIGNAL \B_out[1]~output_o\ : std_logic;
SIGNAL \B_out[2]~output_o\ : std_logic;
SIGNAL \B_out[3]~output_o\ : std_logic;
SIGNAL \B_out[4]~output_o\ : std_logic;
SIGNAL \B_out[5]~output_o\ : std_logic;
SIGNAL \B_out[6]~output_o\ : std_logic;
SIGNAL \B_out[7]~output_o\ : std_logic;
SIGNAL \B_out[8]~output_o\ : std_logic;
SIGNAL \B_out[9]~output_o\ : std_logic;
SIGNAL \B_out[10]~output_o\ : std_logic;
SIGNAL \B_out[11]~output_o\ : std_logic;
SIGNAL \B_out[12]~output_o\ : std_logic;
SIGNAL \B_out[13]~output_o\ : std_logic;
SIGNAL \B_out[14]~output_o\ : std_logic;
SIGNAL \B_out[15]~output_o\ : std_logic;
SIGNAL \A_sel[1]~input_o\ : std_logic;
SIGNAL \A_sel[0]~input_o\ : std_logic;
SIGNAL \ClrN~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \In_sel[2]~input_o\ : std_logic;
SIGNAL \In_sel[0]~input_o\ : std_logic;
SIGNAL \In_sel[1]~input_o\ : std_logic;
SIGNAL \en[1]~4_combout\ : std_logic;
SIGNAL \R1|REG0|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG0|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG0|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG0|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux15~1_combout\ : std_logic;
SIGNAL \en[3]~5_combout\ : std_logic;
SIGNAL \R3|REG0|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG0|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \en[4]~0_combout\ : std_logic;
SIGNAL \R4|REG0|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG0|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \en[5]~1_combout\ : std_logic;
SIGNAL \R5|REG0|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG0|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \en[6]~2_combout\ : std_logic;
SIGNAL \R6|REG0|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG0|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \en[7]~3_combout\ : std_logic;
SIGNAL \R7|REG0|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG0|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux15~0_combout\ : std_logic;
SIGNAL \A_sel[2]~input_o\ : std_logic;
SIGNAL \en[2]~6_combout\ : std_logic;
SIGNAL \R2|REG0|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG0|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux15~2_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \R1|REG1|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG1|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG1|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG1|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux14~1_combout\ : std_logic;
SIGNAL \R3|REG1|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG1|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG1|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG1|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG1|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG1|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG1|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG1|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG1|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG1|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux14~0_combout\ : std_logic;
SIGNAL \R2|REG1|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG1|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux14~2_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \R1|REG2|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG2|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG2|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG2|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux13~1_combout\ : std_logic;
SIGNAL \R3|REG2|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG2|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG2|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG2|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG2|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG2|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG2|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG2|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG2|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG2|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux13~0_combout\ : std_logic;
SIGNAL \R2|REG2|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG2|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux13~2_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \R1|REG3|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG3|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG3|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG3|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux12~1_combout\ : std_logic;
SIGNAL \R3|REG3|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG3|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG3|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG3|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG3|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG3|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG3|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG3|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG3|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG3|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux12~0_combout\ : std_logic;
SIGNAL \R2|REG3|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG3|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux12~2_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \R1|REG4|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG4|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG4|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG4|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux11~1_combout\ : std_logic;
SIGNAL \R3|REG4|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG4|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG4|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG4|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG4|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG4|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG4|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG4|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG4|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG4|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux11~0_combout\ : std_logic;
SIGNAL \R2|REG4|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG4|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux11~2_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \R1|REG5|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG5|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG5|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG5|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux10~1_combout\ : std_logic;
SIGNAL \R3|REG5|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG5|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG5|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG5|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG5|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG5|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG5|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG5|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG5|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG5|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux10~0_combout\ : std_logic;
SIGNAL \R2|REG5|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG5|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux10~2_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \R1|REG6|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG6|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG6|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG6|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux9~1_combout\ : std_logic;
SIGNAL \R3|REG6|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG6|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG6|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG6|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG6|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG6|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG6|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG6|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG6|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG6|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux9~0_combout\ : std_logic;
SIGNAL \R2|REG6|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG6|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux9~2_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \R1|REG7|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG7|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG7|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG7|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux8~1_combout\ : std_logic;
SIGNAL \R3|REG7|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG7|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG7|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG7|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG7|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG7|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG7|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG7|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG7|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG7|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux8~0_combout\ : std_logic;
SIGNAL \R2|REG7|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG7|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux8~2_combout\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \R1|REG8|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG8|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG8|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG8|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux7~1_combout\ : std_logic;
SIGNAL \R3|REG8|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG8|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG8|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG8|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG8|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG8|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG8|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG8|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG8|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG8|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux7~0_combout\ : std_logic;
SIGNAL \R2|REG8|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG8|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux7~2_combout\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \R1|REG9|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG9|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG9|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG9|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux6~1_combout\ : std_logic;
SIGNAL \R3|REG9|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG9|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG9|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG9|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG9|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG9|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG9|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG9|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG9|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG9|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux6~0_combout\ : std_logic;
SIGNAL \R2|REG9|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG9|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux6~2_combout\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \R1|REG10|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG10|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG10|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG10|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux5~1_combout\ : std_logic;
SIGNAL \R3|REG10|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG10|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG10|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG10|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG10|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG10|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG10|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG10|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG10|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG10|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux5~0_combout\ : std_logic;
SIGNAL \R2|REG10|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG10|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux5~2_combout\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \R1|REG11|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG11|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG11|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG11|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux4~1_combout\ : std_logic;
SIGNAL \R3|REG11|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG11|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG11|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG11|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG11|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG11|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG11|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG11|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG11|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG11|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux4~0_combout\ : std_logic;
SIGNAL \R2|REG11|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG11|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux4~2_combout\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \R1|REG12|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG12|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG12|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG12|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux3~1_combout\ : std_logic;
SIGNAL \R3|REG12|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG12|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG12|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG12|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG12|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG12|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG12|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG12|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG12|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG12|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux3~0_combout\ : std_logic;
SIGNAL \R2|REG12|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG12|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux3~2_combout\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \R1|REG13|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG13|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG13|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG13|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux2~1_combout\ : std_logic;
SIGNAL \R3|REG13|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG13|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG13|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG13|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG13|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG13|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG13|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG13|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG13|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG13|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux2~0_combout\ : std_logic;
SIGNAL \R2|REG13|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG13|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux2~2_combout\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \R1|REG14|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG14|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG14|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG14|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux1~1_combout\ : std_logic;
SIGNAL \R3|REG14|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG14|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG14|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG14|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG14|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG14|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG14|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG14|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG14|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG14|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux1~0_combout\ : std_logic;
SIGNAL \R2|REG14|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG14|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux1~2_combout\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \R1|REG15|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG15|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG15|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG15|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux0~1_combout\ : std_logic;
SIGNAL \R3|REG15|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG15|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG15|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG15|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG15|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG15|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG15|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG15|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG15|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG15|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux0~0_combout\ : std_logic;
SIGNAL \R2|REG15|Add0|qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG15|Add1|qsignal~0_combout\ : std_logic;
SIGNAL \muxa|Mux0~2_combout\ : std_logic;
SIGNAL \B_sel[1]~input_o\ : std_logic;
SIGNAL \B_sel[0]~input_o\ : std_logic;
SIGNAL \muxb|Mux15~1_combout\ : std_logic;
SIGNAL \muxb|Mux15~0_combout\ : std_logic;
SIGNAL \B_sel[2]~input_o\ : std_logic;
SIGNAL \muxb|Mux15~2_combout\ : std_logic;
SIGNAL \muxb|Mux14~1_combout\ : std_logic;
SIGNAL \muxb|Mux14~0_combout\ : std_logic;
SIGNAL \muxb|Mux14~2_combout\ : std_logic;
SIGNAL \muxb|Mux13~1_combout\ : std_logic;
SIGNAL \muxb|Mux13~0_combout\ : std_logic;
SIGNAL \muxb|Mux13~2_combout\ : std_logic;
SIGNAL \muxb|Mux12~1_combout\ : std_logic;
SIGNAL \muxb|Mux12~0_combout\ : std_logic;
SIGNAL \muxb|Mux12~2_combout\ : std_logic;
SIGNAL \muxb|Mux11~1_combout\ : std_logic;
SIGNAL \muxb|Mux11~0_combout\ : std_logic;
SIGNAL \muxb|Mux11~2_combout\ : std_logic;
SIGNAL \muxb|Mux10~1_combout\ : std_logic;
SIGNAL \muxb|Mux10~0_combout\ : std_logic;
SIGNAL \muxb|Mux10~2_combout\ : std_logic;
SIGNAL \muxb|Mux9~1_combout\ : std_logic;
SIGNAL \muxb|Mux9~0_combout\ : std_logic;
SIGNAL \muxb|Mux9~2_combout\ : std_logic;
SIGNAL \muxb|Mux8~1_combout\ : std_logic;
SIGNAL \muxb|Mux8~0_combout\ : std_logic;
SIGNAL \muxb|Mux8~2_combout\ : std_logic;
SIGNAL \muxb|Mux7~1_combout\ : std_logic;
SIGNAL \muxb|Mux7~0_combout\ : std_logic;
SIGNAL \muxb|Mux7~2_combout\ : std_logic;
SIGNAL \muxb|Mux6~1_combout\ : std_logic;
SIGNAL \muxb|Mux6~0_combout\ : std_logic;
SIGNAL \muxb|Mux6~2_combout\ : std_logic;
SIGNAL \muxb|Mux5~1_combout\ : std_logic;
SIGNAL \muxb|Mux5~0_combout\ : std_logic;
SIGNAL \muxb|Mux5~2_combout\ : std_logic;
SIGNAL \muxb|Mux4~1_combout\ : std_logic;
SIGNAL \muxb|Mux4~0_combout\ : std_logic;
SIGNAL \muxb|Mux4~2_combout\ : std_logic;
SIGNAL \muxb|Mux3~1_combout\ : std_logic;
SIGNAL \muxb|Mux3~0_combout\ : std_logic;
SIGNAL \muxb|Mux3~2_combout\ : std_logic;
SIGNAL \muxb|Mux2~1_combout\ : std_logic;
SIGNAL \muxb|Mux2~0_combout\ : std_logic;
SIGNAL \muxb|Mux2~2_combout\ : std_logic;
SIGNAL \muxb|Mux1~1_combout\ : std_logic;
SIGNAL \muxb|Mux1~0_combout\ : std_logic;
SIGNAL \muxb|Mux1~2_combout\ : std_logic;
SIGNAL \muxb|Mux0~1_combout\ : std_logic;
SIGNAL \muxb|Mux0~0_combout\ : std_logic;
SIGNAL \muxb|Mux0~2_combout\ : std_logic;
SIGNAL en : std_logic_vector(7 DOWNTO 0);
SIGNAL \muxb|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \muxa|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \R2|REG11|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG11|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG11|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG11|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG11|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG11|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG11|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG11|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG10|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG10|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG10|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG10|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG10|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG10|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG10|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG10|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG9|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG9|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG9|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG9|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG9|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG9|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG9|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG9|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG8|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG8|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG8|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG8|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG8|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG8|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG8|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG8|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG7|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG7|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG7|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG7|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG7|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG7|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG7|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG7|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG6|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG6|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG6|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG6|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG6|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG6|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG6|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG6|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG5|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG5|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG5|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG5|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG5|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG5|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG5|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG5|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG4|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG4|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG4|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG4|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG4|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG4|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG4|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG4|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG3|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG3|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG3|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG3|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG3|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG3|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG3|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG3|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG2|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG2|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG2|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG2|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG2|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG2|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG2|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG2|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG1|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG1|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG1|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG1|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG1|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG1|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG1|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG1|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG0|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG0|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG0|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG0|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG0|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG0|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG0|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG0|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \muxb|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \R0|REG10|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG10|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG10|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG10|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG10|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG10|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG9|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG9|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG9|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG9|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG9|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG9|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG9|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG9|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG8|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG8|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG8|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG8|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG8|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG8|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG8|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG8|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG7|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG7|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG7|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG7|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG7|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG7|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG7|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG7|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG6|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG6|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG6|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG6|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG6|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG6|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG6|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG6|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG5|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG5|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG5|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG5|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG5|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG5|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG5|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG5|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG4|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG4|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG4|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG4|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG4|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG4|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG4|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG4|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG3|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG3|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG3|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG3|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG3|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG3|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG3|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG3|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG2|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG2|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG2|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG2|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG2|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG2|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG2|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG2|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG1|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG1|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG1|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG1|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG1|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG1|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG1|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG1|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG0|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \ALT_INV_en[2]~6_combout\ : std_logic;
SIGNAL \R3|REG0|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \ALT_INV_en[3]~5_combout\ : std_logic;
SIGNAL \R0|REG0|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL ALT_INV_en : std_logic_vector(0 DOWNTO 0);
SIGNAL \R1|REG0|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \ALT_INV_en[1]~4_combout\ : std_logic;
SIGNAL \R7|REG0|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \ALT_INV_en[7]~3_combout\ : std_logic;
SIGNAL \R6|REG0|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \ALT_INV_en[6]~2_combout\ : std_logic;
SIGNAL \R5|REG0|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \ALT_INV_en[5]~1_combout\ : std_logic;
SIGNAL \R4|REG0|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \ALT_INV_en[4]~0_combout\ : std_logic;
SIGNAL \R2|REG15|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG15|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG15|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG15|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG15|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG15|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG15|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG15|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG14|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG14|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG14|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG14|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG14|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG14|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG14|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG14|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG13|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG13|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG13|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG13|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG13|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG13|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG13|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG13|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG12|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG12|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG12|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG12|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG12|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG12|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG12|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG12|Add1|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \ALT_INV_data_in[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_In_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_In_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_In_sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_ClrN~input_o\ : std_logic;
SIGNAL \ALT_INV_B_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_sel[2]~input_o\ : std_logic;
SIGNAL \R2|REG15|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG15|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG15|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG15|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG15|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG15|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG15|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG15|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG14|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG14|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG14|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG14|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG14|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG14|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG14|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG14|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG13|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG13|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG13|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG13|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG13|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG13|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG13|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG13|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG12|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG12|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG12|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG12|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG12|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG12|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG12|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG12|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG11|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG11|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R0|REG11|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R1|REG11|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R7|REG11|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R6|REG11|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R5|REG11|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R4|REG11|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R2|REG10|Add0|ALT_INV_qsignal~0_combout\ : std_logic;
SIGNAL \R3|REG10|Add0|ALT_INV_qsignal~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_ClrN <= ClrN;
ww_A_sel <= A_sel;
ww_B_sel <= B_sel;
ww_In_sel <= In_sel;
ww_data_in <= data_in;
A_out <= ww_A_out;
B_out <= ww_B_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\muxb|ALT_INV_Mux15~0_combout\ <= NOT \muxb|Mux15~0_combout\;
\muxa|ALT_INV_Mux0~1_combout\ <= NOT \muxa|Mux0~1_combout\;
\muxa|ALT_INV_Mux0~0_combout\ <= NOT \muxa|Mux0~0_combout\;
\muxa|ALT_INV_Mux1~1_combout\ <= NOT \muxa|Mux1~1_combout\;
\muxa|ALT_INV_Mux1~0_combout\ <= NOT \muxa|Mux1~0_combout\;
\muxa|ALT_INV_Mux2~1_combout\ <= NOT \muxa|Mux2~1_combout\;
\muxa|ALT_INV_Mux2~0_combout\ <= NOT \muxa|Mux2~0_combout\;
\muxa|ALT_INV_Mux3~1_combout\ <= NOT \muxa|Mux3~1_combout\;
\muxa|ALT_INV_Mux3~0_combout\ <= NOT \muxa|Mux3~0_combout\;
\muxa|ALT_INV_Mux4~1_combout\ <= NOT \muxa|Mux4~1_combout\;
\muxa|ALT_INV_Mux4~0_combout\ <= NOT \muxa|Mux4~0_combout\;
\muxa|ALT_INV_Mux5~1_combout\ <= NOT \muxa|Mux5~1_combout\;
\muxa|ALT_INV_Mux5~0_combout\ <= NOT \muxa|Mux5~0_combout\;
\muxa|ALT_INV_Mux6~1_combout\ <= NOT \muxa|Mux6~1_combout\;
\muxa|ALT_INV_Mux6~0_combout\ <= NOT \muxa|Mux6~0_combout\;
\muxa|ALT_INV_Mux7~1_combout\ <= NOT \muxa|Mux7~1_combout\;
\muxa|ALT_INV_Mux7~0_combout\ <= NOT \muxa|Mux7~0_combout\;
\muxa|ALT_INV_Mux8~1_combout\ <= NOT \muxa|Mux8~1_combout\;
\muxa|ALT_INV_Mux8~0_combout\ <= NOT \muxa|Mux8~0_combout\;
\muxa|ALT_INV_Mux9~1_combout\ <= NOT \muxa|Mux9~1_combout\;
\muxa|ALT_INV_Mux9~0_combout\ <= NOT \muxa|Mux9~0_combout\;
\muxa|ALT_INV_Mux10~1_combout\ <= NOT \muxa|Mux10~1_combout\;
\muxa|ALT_INV_Mux10~0_combout\ <= NOT \muxa|Mux10~0_combout\;
\muxa|ALT_INV_Mux11~1_combout\ <= NOT \muxa|Mux11~1_combout\;
\muxa|ALT_INV_Mux11~0_combout\ <= NOT \muxa|Mux11~0_combout\;
\muxa|ALT_INV_Mux12~1_combout\ <= NOT \muxa|Mux12~1_combout\;
\muxa|ALT_INV_Mux12~0_combout\ <= NOT \muxa|Mux12~0_combout\;
\muxa|ALT_INV_Mux13~1_combout\ <= NOT \muxa|Mux13~1_combout\;
\muxa|ALT_INV_Mux13~0_combout\ <= NOT \muxa|Mux13~0_combout\;
\muxa|ALT_INV_Mux14~1_combout\ <= NOT \muxa|Mux14~1_combout\;
\muxa|ALT_INV_Mux14~0_combout\ <= NOT \muxa|Mux14~0_combout\;
\muxa|ALT_INV_Mux15~1_combout\ <= NOT \muxa|Mux15~1_combout\;
\muxa|ALT_INV_Mux15~0_combout\ <= NOT \muxa|Mux15~0_combout\;
\R2|REG11|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG11|Add1|qsignal~0_combout\;
\R3|REG11|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG11|Add1|qsignal~0_combout\;
\R0|REG11|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG11|Add1|qsignal~0_combout\;
\R1|REG11|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG11|Add1|qsignal~0_combout\;
\R7|REG11|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG11|Add1|qsignal~0_combout\;
\R6|REG11|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG11|Add1|qsignal~0_combout\;
\R5|REG11|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG11|Add1|qsignal~0_combout\;
\R4|REG11|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG11|Add1|qsignal~0_combout\;
\R2|REG10|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG10|Add1|qsignal~0_combout\;
\R3|REG10|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG10|Add1|qsignal~0_combout\;
\R0|REG10|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG10|Add1|qsignal~0_combout\;
\R1|REG10|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG10|Add1|qsignal~0_combout\;
\R7|REG10|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG10|Add1|qsignal~0_combout\;
\R6|REG10|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG10|Add1|qsignal~0_combout\;
\R5|REG10|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG10|Add1|qsignal~0_combout\;
\R4|REG10|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG10|Add1|qsignal~0_combout\;
\R2|REG9|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG9|Add1|qsignal~0_combout\;
\R3|REG9|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG9|Add1|qsignal~0_combout\;
\R0|REG9|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG9|Add1|qsignal~0_combout\;
\R1|REG9|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG9|Add1|qsignal~0_combout\;
\R7|REG9|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG9|Add1|qsignal~0_combout\;
\R6|REG9|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG9|Add1|qsignal~0_combout\;
\R5|REG9|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG9|Add1|qsignal~0_combout\;
\R4|REG9|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG9|Add1|qsignal~0_combout\;
\R2|REG8|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG8|Add1|qsignal~0_combout\;
\R3|REG8|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG8|Add1|qsignal~0_combout\;
\R0|REG8|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG8|Add1|qsignal~0_combout\;
\R1|REG8|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG8|Add1|qsignal~0_combout\;
\R7|REG8|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG8|Add1|qsignal~0_combout\;
\R6|REG8|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG8|Add1|qsignal~0_combout\;
\R5|REG8|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG8|Add1|qsignal~0_combout\;
\R4|REG8|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG8|Add1|qsignal~0_combout\;
\R2|REG7|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG7|Add1|qsignal~0_combout\;
\R3|REG7|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG7|Add1|qsignal~0_combout\;
\R0|REG7|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG7|Add1|qsignal~0_combout\;
\R1|REG7|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG7|Add1|qsignal~0_combout\;
\R7|REG7|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG7|Add1|qsignal~0_combout\;
\R6|REG7|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG7|Add1|qsignal~0_combout\;
\R5|REG7|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG7|Add1|qsignal~0_combout\;
\R4|REG7|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG7|Add1|qsignal~0_combout\;
\R2|REG6|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG6|Add1|qsignal~0_combout\;
\R3|REG6|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG6|Add1|qsignal~0_combout\;
\R0|REG6|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG6|Add1|qsignal~0_combout\;
\R1|REG6|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG6|Add1|qsignal~0_combout\;
\R7|REG6|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG6|Add1|qsignal~0_combout\;
\R6|REG6|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG6|Add1|qsignal~0_combout\;
\R5|REG6|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG6|Add1|qsignal~0_combout\;
\R4|REG6|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG6|Add1|qsignal~0_combout\;
\R2|REG5|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG5|Add1|qsignal~0_combout\;
\R3|REG5|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG5|Add1|qsignal~0_combout\;
\R0|REG5|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG5|Add1|qsignal~0_combout\;
\R1|REG5|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG5|Add1|qsignal~0_combout\;
\R7|REG5|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG5|Add1|qsignal~0_combout\;
\R6|REG5|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG5|Add1|qsignal~0_combout\;
\R5|REG5|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG5|Add1|qsignal~0_combout\;
\R4|REG5|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG5|Add1|qsignal~0_combout\;
\R2|REG4|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG4|Add1|qsignal~0_combout\;
\R3|REG4|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG4|Add1|qsignal~0_combout\;
\R0|REG4|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG4|Add1|qsignal~0_combout\;
\R1|REG4|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG4|Add1|qsignal~0_combout\;
\R7|REG4|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG4|Add1|qsignal~0_combout\;
\R6|REG4|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG4|Add1|qsignal~0_combout\;
\R5|REG4|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG4|Add1|qsignal~0_combout\;
\R4|REG4|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG4|Add1|qsignal~0_combout\;
\R2|REG3|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG3|Add1|qsignal~0_combout\;
\R3|REG3|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG3|Add1|qsignal~0_combout\;
\R0|REG3|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG3|Add1|qsignal~0_combout\;
\R1|REG3|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG3|Add1|qsignal~0_combout\;
\R7|REG3|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG3|Add1|qsignal~0_combout\;
\R6|REG3|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG3|Add1|qsignal~0_combout\;
\R5|REG3|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG3|Add1|qsignal~0_combout\;
\R4|REG3|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG3|Add1|qsignal~0_combout\;
\R2|REG2|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG2|Add1|qsignal~0_combout\;
\R3|REG2|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG2|Add1|qsignal~0_combout\;
\R0|REG2|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG2|Add1|qsignal~0_combout\;
\R1|REG2|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG2|Add1|qsignal~0_combout\;
\R7|REG2|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG2|Add1|qsignal~0_combout\;
\R6|REG2|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG2|Add1|qsignal~0_combout\;
\R5|REG2|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG2|Add1|qsignal~0_combout\;
\R4|REG2|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG2|Add1|qsignal~0_combout\;
\R2|REG1|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG1|Add1|qsignal~0_combout\;
\R3|REG1|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG1|Add1|qsignal~0_combout\;
\R0|REG1|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG1|Add1|qsignal~0_combout\;
\R1|REG1|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG1|Add1|qsignal~0_combout\;
\R7|REG1|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG1|Add1|qsignal~0_combout\;
\R6|REG1|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG1|Add1|qsignal~0_combout\;
\R5|REG1|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG1|Add1|qsignal~0_combout\;
\R4|REG1|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG1|Add1|qsignal~0_combout\;
\R2|REG0|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG0|Add1|qsignal~0_combout\;
\R3|REG0|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG0|Add1|qsignal~0_combout\;
\R0|REG0|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG0|Add1|qsignal~0_combout\;
\R1|REG0|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG0|Add1|qsignal~0_combout\;
\R7|REG0|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG0|Add1|qsignal~0_combout\;
\R6|REG0|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG0|Add1|qsignal~0_combout\;
\R5|REG0|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG0|Add1|qsignal~0_combout\;
\R4|REG0|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG0|Add1|qsignal~0_combout\;
\muxb|ALT_INV_Mux0~1_combout\ <= NOT \muxb|Mux0~1_combout\;
\muxb|ALT_INV_Mux0~0_combout\ <= NOT \muxb|Mux0~0_combout\;
\muxb|ALT_INV_Mux1~1_combout\ <= NOT \muxb|Mux1~1_combout\;
\muxb|ALT_INV_Mux1~0_combout\ <= NOT \muxb|Mux1~0_combout\;
\muxb|ALT_INV_Mux2~1_combout\ <= NOT \muxb|Mux2~1_combout\;
\muxb|ALT_INV_Mux2~0_combout\ <= NOT \muxb|Mux2~0_combout\;
\muxb|ALT_INV_Mux3~1_combout\ <= NOT \muxb|Mux3~1_combout\;
\muxb|ALT_INV_Mux3~0_combout\ <= NOT \muxb|Mux3~0_combout\;
\muxb|ALT_INV_Mux4~1_combout\ <= NOT \muxb|Mux4~1_combout\;
\muxb|ALT_INV_Mux4~0_combout\ <= NOT \muxb|Mux4~0_combout\;
\muxb|ALT_INV_Mux5~1_combout\ <= NOT \muxb|Mux5~1_combout\;
\muxb|ALT_INV_Mux5~0_combout\ <= NOT \muxb|Mux5~0_combout\;
\muxb|ALT_INV_Mux6~1_combout\ <= NOT \muxb|Mux6~1_combout\;
\muxb|ALT_INV_Mux6~0_combout\ <= NOT \muxb|Mux6~0_combout\;
\muxb|ALT_INV_Mux7~1_combout\ <= NOT \muxb|Mux7~1_combout\;
\muxb|ALT_INV_Mux7~0_combout\ <= NOT \muxb|Mux7~0_combout\;
\muxb|ALT_INV_Mux8~1_combout\ <= NOT \muxb|Mux8~1_combout\;
\muxb|ALT_INV_Mux8~0_combout\ <= NOT \muxb|Mux8~0_combout\;
\muxb|ALT_INV_Mux9~1_combout\ <= NOT \muxb|Mux9~1_combout\;
\muxb|ALT_INV_Mux9~0_combout\ <= NOT \muxb|Mux9~0_combout\;
\muxb|ALT_INV_Mux10~1_combout\ <= NOT \muxb|Mux10~1_combout\;
\muxb|ALT_INV_Mux10~0_combout\ <= NOT \muxb|Mux10~0_combout\;
\muxb|ALT_INV_Mux11~1_combout\ <= NOT \muxb|Mux11~1_combout\;
\muxb|ALT_INV_Mux11~0_combout\ <= NOT \muxb|Mux11~0_combout\;
\muxb|ALT_INV_Mux12~1_combout\ <= NOT \muxb|Mux12~1_combout\;
\muxb|ALT_INV_Mux12~0_combout\ <= NOT \muxb|Mux12~0_combout\;
\muxb|ALT_INV_Mux13~1_combout\ <= NOT \muxb|Mux13~1_combout\;
\muxb|ALT_INV_Mux13~0_combout\ <= NOT \muxb|Mux13~0_combout\;
\muxb|ALT_INV_Mux14~1_combout\ <= NOT \muxb|Mux14~1_combout\;
\muxb|ALT_INV_Mux14~0_combout\ <= NOT \muxb|Mux14~0_combout\;
\muxb|ALT_INV_Mux15~1_combout\ <= NOT \muxb|Mux15~1_combout\;
\R0|REG10|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG10|Add0|qsignal~0_combout\;
\R1|REG10|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG10|Add0|qsignal~0_combout\;
\R7|REG10|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG10|Add0|qsignal~0_combout\;
\R6|REG10|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG10|Add0|qsignal~0_combout\;
\R5|REG10|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG10|Add0|qsignal~0_combout\;
\R4|REG10|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG10|Add0|qsignal~0_combout\;
\R2|REG9|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG9|Add0|qsignal~0_combout\;
\R3|REG9|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG9|Add0|qsignal~0_combout\;
\R0|REG9|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG9|Add0|qsignal~0_combout\;
\R1|REG9|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG9|Add0|qsignal~0_combout\;
\R7|REG9|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG9|Add0|qsignal~0_combout\;
\R6|REG9|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG9|Add0|qsignal~0_combout\;
\R5|REG9|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG9|Add0|qsignal~0_combout\;
\R4|REG9|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG9|Add0|qsignal~0_combout\;
\R2|REG8|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG8|Add0|qsignal~0_combout\;
\R3|REG8|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG8|Add0|qsignal~0_combout\;
\R0|REG8|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG8|Add0|qsignal~0_combout\;
\R1|REG8|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG8|Add0|qsignal~0_combout\;
\R7|REG8|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG8|Add0|qsignal~0_combout\;
\R6|REG8|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG8|Add0|qsignal~0_combout\;
\R5|REG8|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG8|Add0|qsignal~0_combout\;
\R4|REG8|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG8|Add0|qsignal~0_combout\;
\R2|REG7|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG7|Add0|qsignal~0_combout\;
\R3|REG7|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG7|Add0|qsignal~0_combout\;
\R0|REG7|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG7|Add0|qsignal~0_combout\;
\R1|REG7|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG7|Add0|qsignal~0_combout\;
\R7|REG7|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG7|Add0|qsignal~0_combout\;
\R6|REG7|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG7|Add0|qsignal~0_combout\;
\R5|REG7|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG7|Add0|qsignal~0_combout\;
\R4|REG7|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG7|Add0|qsignal~0_combout\;
\R2|REG6|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG6|Add0|qsignal~0_combout\;
\R3|REG6|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG6|Add0|qsignal~0_combout\;
\R0|REG6|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG6|Add0|qsignal~0_combout\;
\R1|REG6|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG6|Add0|qsignal~0_combout\;
\R7|REG6|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG6|Add0|qsignal~0_combout\;
\R6|REG6|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG6|Add0|qsignal~0_combout\;
\R5|REG6|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG6|Add0|qsignal~0_combout\;
\R4|REG6|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG6|Add0|qsignal~0_combout\;
\R2|REG5|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG5|Add0|qsignal~0_combout\;
\R3|REG5|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG5|Add0|qsignal~0_combout\;
\R0|REG5|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG5|Add0|qsignal~0_combout\;
\R1|REG5|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG5|Add0|qsignal~0_combout\;
\R7|REG5|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG5|Add0|qsignal~0_combout\;
\R6|REG5|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG5|Add0|qsignal~0_combout\;
\R5|REG5|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG5|Add0|qsignal~0_combout\;
\R4|REG5|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG5|Add0|qsignal~0_combout\;
\R2|REG4|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG4|Add0|qsignal~0_combout\;
\R3|REG4|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG4|Add0|qsignal~0_combout\;
\R0|REG4|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG4|Add0|qsignal~0_combout\;
\R1|REG4|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG4|Add0|qsignal~0_combout\;
\R7|REG4|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG4|Add0|qsignal~0_combout\;
\R6|REG4|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG4|Add0|qsignal~0_combout\;
\R5|REG4|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG4|Add0|qsignal~0_combout\;
\R4|REG4|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG4|Add0|qsignal~0_combout\;
\R2|REG3|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG3|Add0|qsignal~0_combout\;
\R3|REG3|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG3|Add0|qsignal~0_combout\;
\R0|REG3|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG3|Add0|qsignal~0_combout\;
\R1|REG3|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG3|Add0|qsignal~0_combout\;
\R7|REG3|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG3|Add0|qsignal~0_combout\;
\R6|REG3|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG3|Add0|qsignal~0_combout\;
\R5|REG3|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG3|Add0|qsignal~0_combout\;
\R4|REG3|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG3|Add0|qsignal~0_combout\;
\R2|REG2|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG2|Add0|qsignal~0_combout\;
\R3|REG2|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG2|Add0|qsignal~0_combout\;
\R0|REG2|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG2|Add0|qsignal~0_combout\;
\R1|REG2|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG2|Add0|qsignal~0_combout\;
\R7|REG2|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG2|Add0|qsignal~0_combout\;
\R6|REG2|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG2|Add0|qsignal~0_combout\;
\R5|REG2|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG2|Add0|qsignal~0_combout\;
\R4|REG2|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG2|Add0|qsignal~0_combout\;
\R2|REG1|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG1|Add0|qsignal~0_combout\;
\R3|REG1|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG1|Add0|qsignal~0_combout\;
\R0|REG1|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG1|Add0|qsignal~0_combout\;
\R1|REG1|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG1|Add0|qsignal~0_combout\;
\R7|REG1|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG1|Add0|qsignal~0_combout\;
\R6|REG1|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG1|Add0|qsignal~0_combout\;
\R5|REG1|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG1|Add0|qsignal~0_combout\;
\R4|REG1|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG1|Add0|qsignal~0_combout\;
\R2|REG0|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG0|Add0|qsignal~0_combout\;
\ALT_INV_en[2]~6_combout\ <= NOT \en[2]~6_combout\;
\R3|REG0|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG0|Add0|qsignal~0_combout\;
\ALT_INV_en[3]~5_combout\ <= NOT \en[3]~5_combout\;
\R0|REG0|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG0|Add0|qsignal~0_combout\;
ALT_INV_en(0) <= NOT en(0);
\R1|REG0|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG0|Add0|qsignal~0_combout\;
\ALT_INV_en[1]~4_combout\ <= NOT \en[1]~4_combout\;
\R7|REG0|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG0|Add0|qsignal~0_combout\;
\ALT_INV_en[7]~3_combout\ <= NOT \en[7]~3_combout\;
\R6|REG0|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG0|Add0|qsignal~0_combout\;
\ALT_INV_en[6]~2_combout\ <= NOT \en[6]~2_combout\;
\R5|REG0|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG0|Add0|qsignal~0_combout\;
\ALT_INV_en[5]~1_combout\ <= NOT \en[5]~1_combout\;
\R4|REG0|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG0|Add0|qsignal~0_combout\;
\ALT_INV_en[4]~0_combout\ <= NOT \en[4]~0_combout\;
\R2|REG15|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG15|Add1|qsignal~0_combout\;
\R3|REG15|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG15|Add1|qsignal~0_combout\;
\R0|REG15|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG15|Add1|qsignal~0_combout\;
\R1|REG15|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG15|Add1|qsignal~0_combout\;
\R7|REG15|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG15|Add1|qsignal~0_combout\;
\R6|REG15|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG15|Add1|qsignal~0_combout\;
\R5|REG15|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG15|Add1|qsignal~0_combout\;
\R4|REG15|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG15|Add1|qsignal~0_combout\;
\R2|REG14|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG14|Add1|qsignal~0_combout\;
\R3|REG14|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG14|Add1|qsignal~0_combout\;
\R0|REG14|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG14|Add1|qsignal~0_combout\;
\R1|REG14|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG14|Add1|qsignal~0_combout\;
\R7|REG14|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG14|Add1|qsignal~0_combout\;
\R6|REG14|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG14|Add1|qsignal~0_combout\;
\R5|REG14|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG14|Add1|qsignal~0_combout\;
\R4|REG14|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG14|Add1|qsignal~0_combout\;
\R2|REG13|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG13|Add1|qsignal~0_combout\;
\R3|REG13|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG13|Add1|qsignal~0_combout\;
\R0|REG13|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG13|Add1|qsignal~0_combout\;
\R1|REG13|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG13|Add1|qsignal~0_combout\;
\R7|REG13|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG13|Add1|qsignal~0_combout\;
\R6|REG13|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG13|Add1|qsignal~0_combout\;
\R5|REG13|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG13|Add1|qsignal~0_combout\;
\R4|REG13|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG13|Add1|qsignal~0_combout\;
\R2|REG12|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG12|Add1|qsignal~0_combout\;
\R3|REG12|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG12|Add1|qsignal~0_combout\;
\R0|REG12|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG12|Add1|qsignal~0_combout\;
\R1|REG12|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG12|Add1|qsignal~0_combout\;
\R7|REG12|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG12|Add1|qsignal~0_combout\;
\R6|REG12|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG12|Add1|qsignal~0_combout\;
\R5|REG12|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG12|Add1|qsignal~0_combout\;
\R4|REG12|Add1|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG12|Add1|qsignal~0_combout\;
\ALT_INV_data_in[15]~input_o\ <= NOT \data_in[15]~input_o\;
\ALT_INV_data_in[14]~input_o\ <= NOT \data_in[14]~input_o\;
\ALT_INV_data_in[13]~input_o\ <= NOT \data_in[13]~input_o\;
\ALT_INV_data_in[12]~input_o\ <= NOT \data_in[12]~input_o\;
\ALT_INV_data_in[11]~input_o\ <= NOT \data_in[11]~input_o\;
\ALT_INV_data_in[10]~input_o\ <= NOT \data_in[10]~input_o\;
\ALT_INV_data_in[9]~input_o\ <= NOT \data_in[9]~input_o\;
\ALT_INV_data_in[8]~input_o\ <= NOT \data_in[8]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_data_in[6]~input_o\ <= NOT \data_in[6]~input_o\;
\ALT_INV_data_in[5]~input_o\ <= NOT \data_in[5]~input_o\;
\ALT_INV_data_in[4]~input_o\ <= NOT \data_in[4]~input_o\;
\ALT_INV_data_in[3]~input_o\ <= NOT \data_in[3]~input_o\;
\ALT_INV_data_in[2]~input_o\ <= NOT \data_in[2]~input_o\;
\ALT_INV_data_in[1]~input_o\ <= NOT \data_in[1]~input_o\;
\ALT_INV_In_sel[1]~input_o\ <= NOT \In_sel[1]~input_o\;
\ALT_INV_In_sel[0]~input_o\ <= NOT \In_sel[0]~input_o\;
\ALT_INV_In_sel[2]~input_o\ <= NOT \In_sel[2]~input_o\;
\ALT_INV_data_in[0]~input_o\ <= NOT \data_in[0]~input_o\;
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;
\ALT_INV_ClrN~input_o\ <= NOT \ClrN~input_o\;
\ALT_INV_B_sel[1]~input_o\ <= NOT \B_sel[1]~input_o\;
\ALT_INV_B_sel[0]~input_o\ <= NOT \B_sel[0]~input_o\;
\ALT_INV_B_sel[2]~input_o\ <= NOT \B_sel[2]~input_o\;
\ALT_INV_A_sel[1]~input_o\ <= NOT \A_sel[1]~input_o\;
\ALT_INV_A_sel[0]~input_o\ <= NOT \A_sel[0]~input_o\;
\ALT_INV_A_sel[2]~input_o\ <= NOT \A_sel[2]~input_o\;
\R2|REG15|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG15|Add0|qsignal~0_combout\;
\R3|REG15|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG15|Add0|qsignal~0_combout\;
\R0|REG15|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG15|Add0|qsignal~0_combout\;
\R1|REG15|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG15|Add0|qsignal~0_combout\;
\R7|REG15|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG15|Add0|qsignal~0_combout\;
\R6|REG15|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG15|Add0|qsignal~0_combout\;
\R5|REG15|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG15|Add0|qsignal~0_combout\;
\R4|REG15|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG15|Add0|qsignal~0_combout\;
\R2|REG14|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG14|Add0|qsignal~0_combout\;
\R3|REG14|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG14|Add0|qsignal~0_combout\;
\R0|REG14|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG14|Add0|qsignal~0_combout\;
\R1|REG14|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG14|Add0|qsignal~0_combout\;
\R7|REG14|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG14|Add0|qsignal~0_combout\;
\R6|REG14|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG14|Add0|qsignal~0_combout\;
\R5|REG14|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG14|Add0|qsignal~0_combout\;
\R4|REG14|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG14|Add0|qsignal~0_combout\;
\R2|REG13|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG13|Add0|qsignal~0_combout\;
\R3|REG13|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG13|Add0|qsignal~0_combout\;
\R0|REG13|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG13|Add0|qsignal~0_combout\;
\R1|REG13|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG13|Add0|qsignal~0_combout\;
\R7|REG13|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG13|Add0|qsignal~0_combout\;
\R6|REG13|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG13|Add0|qsignal~0_combout\;
\R5|REG13|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG13|Add0|qsignal~0_combout\;
\R4|REG13|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG13|Add0|qsignal~0_combout\;
\R2|REG12|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG12|Add0|qsignal~0_combout\;
\R3|REG12|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG12|Add0|qsignal~0_combout\;
\R0|REG12|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG12|Add0|qsignal~0_combout\;
\R1|REG12|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG12|Add0|qsignal~0_combout\;
\R7|REG12|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG12|Add0|qsignal~0_combout\;
\R6|REG12|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG12|Add0|qsignal~0_combout\;
\R5|REG12|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG12|Add0|qsignal~0_combout\;
\R4|REG12|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG12|Add0|qsignal~0_combout\;
\R2|REG11|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG11|Add0|qsignal~0_combout\;
\R3|REG11|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG11|Add0|qsignal~0_combout\;
\R0|REG11|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R0|REG11|Add0|qsignal~0_combout\;
\R1|REG11|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R1|REG11|Add0|qsignal~0_combout\;
\R7|REG11|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R7|REG11|Add0|qsignal~0_combout\;
\R6|REG11|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R6|REG11|Add0|qsignal~0_combout\;
\R5|REG11|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R5|REG11|Add0|qsignal~0_combout\;
\R4|REG11|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R4|REG11|Add0|qsignal~0_combout\;
\R2|REG10|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R2|REG10|Add0|qsignal~0_combout\;
\R3|REG10|Add0|ALT_INV_qsignal~0_combout\ <= NOT \R3|REG10|Add0|qsignal~0_combout\;

\A_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux15~2_combout\,
	devoe => ww_devoe,
	o => \A_out[0]~output_o\);

\A_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux14~2_combout\,
	devoe => ww_devoe,
	o => \A_out[1]~output_o\);

\A_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux13~2_combout\,
	devoe => ww_devoe,
	o => \A_out[2]~output_o\);

\A_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux12~2_combout\,
	devoe => ww_devoe,
	o => \A_out[3]~output_o\);

\A_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux11~2_combout\,
	devoe => ww_devoe,
	o => \A_out[4]~output_o\);

\A_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux10~2_combout\,
	devoe => ww_devoe,
	o => \A_out[5]~output_o\);

\A_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux9~2_combout\,
	devoe => ww_devoe,
	o => \A_out[6]~output_o\);

\A_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \A_out[7]~output_o\);

\A_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \A_out[8]~output_o\);

\A_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \A_out[9]~output_o\);

\A_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \A_out[10]~output_o\);

\A_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \A_out[11]~output_o\);

\A_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \A_out[12]~output_o\);

\A_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \A_out[13]~output_o\);

\A_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \A_out[14]~output_o\);

\A_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxa|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \A_out[15]~output_o\);

\B_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux15~2_combout\,
	devoe => ww_devoe,
	o => \B_out[0]~output_o\);

\B_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux14~2_combout\,
	devoe => ww_devoe,
	o => \B_out[1]~output_o\);

\B_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux13~2_combout\,
	devoe => ww_devoe,
	o => \B_out[2]~output_o\);

\B_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux12~2_combout\,
	devoe => ww_devoe,
	o => \B_out[3]~output_o\);

\B_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux11~2_combout\,
	devoe => ww_devoe,
	o => \B_out[4]~output_o\);

\B_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux10~2_combout\,
	devoe => ww_devoe,
	o => \B_out[5]~output_o\);

\B_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux9~2_combout\,
	devoe => ww_devoe,
	o => \B_out[6]~output_o\);

\B_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \B_out[7]~output_o\);

\B_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \B_out[8]~output_o\);

\B_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \B_out[9]~output_o\);

\B_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \B_out[10]~output_o\);

\B_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \B_out[11]~output_o\);

\B_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \B_out[12]~output_o\);

\B_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \B_out[13]~output_o\);

\B_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \B_out[14]~output_o\);

\B_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxb|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \B_out[15]~output_o\);

\A_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_sel(1),
	o => \A_sel[1]~input_o\);

\A_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_sel(0),
	o => \A_sel[0]~input_o\);

\ClrN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ClrN,
	o => \ClrN~input_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

\In_sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_In_sel(2),
	o => \In_sel[2]~input_o\);

\In_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_In_sel(0),
	o => \In_sel[0]~input_o\);

\In_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_In_sel(1),
	o => \In_sel[1]~input_o\);

\en[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \en[1]~4_combout\ = (!\In_sel[2]~input_o\ & (\In_sel[0]~input_o\ & !\In_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_In_sel[2]~input_o\,
	datab => \ALT_INV_In_sel[0]~input_o\,
	datac => \ALT_INV_In_sel[1]~input_o\,
	combout => \en[1]~4_combout\);

\R1|REG0|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG0|Add0|qsignal~0_combout\ = ( \data_in[0]~input_o\ & ( \en[1]~4_combout\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( !\data_in[0]~input_o\ & ( \en[1]~4_combout\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\) # (\R1|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( \data_in[0]~input_o\ & ( !\en[1]~4_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG0|Add0|qsignal~0_combout\)))) ) 
-- ) ) # ( !\data_in[0]~input_o\ & ( !\en[1]~4_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG0|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111110111001101111111111100111111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG0|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_data_in[0]~input_o\,
	dataf => \ALT_INV_en[1]~4_combout\,
	combout => \R1|REG0|Add0|qsignal~0_combout\);

\R1|REG0|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG0|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG0|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG0|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG0|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG0|Add1|qsignal~0_combout\);

\en[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- en(0) = (!\In_sel[2]~input_o\ & (!\In_sel[0]~input_o\ & !\In_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_In_sel[2]~input_o\,
	datab => \ALT_INV_In_sel[0]~input_o\,
	datac => \ALT_INV_In_sel[1]~input_o\,
	combout => en(0));

\R0|REG0|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG0|Add0|qsignal~0_combout\ = ( \data_in[0]~input_o\ & ( en(0) & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( !\data_in[0]~input_o\ & ( en(0) & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R0|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( \data_in[0]~input_o\ & ( !en(0) & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG0|Add0|qsignal~0_combout\)))) ) ) ) # ( !\data_in[0]~input_o\ & ( 
-- !en(0) & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG0|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111110111001101111111111100111111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG0|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_data_in[0]~input_o\,
	dataf => ALT_INV_en(0),
	combout => \R0|REG0|Add0|qsignal~0_combout\);

\R0|REG0|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG0|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG0|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG0|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG0|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG0|Add1|qsignal~0_combout\);

\muxa|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux15~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG0|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG0|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG0|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux15~1_combout\);

\en[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \en[3]~5_combout\ = (!\In_sel[2]~input_o\ & (\In_sel[0]~input_o\ & \In_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_In_sel[2]~input_o\,
	datab => \ALT_INV_In_sel[0]~input_o\,
	datac => \ALT_INV_In_sel[1]~input_o\,
	combout => \en[3]~5_combout\);

\R3|REG0|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG0|Add0|qsignal~0_combout\ = ( \data_in[0]~input_o\ & ( \en[3]~5_combout\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( !\data_in[0]~input_o\ & ( \en[3]~5_combout\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\) # (\R3|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( \data_in[0]~input_o\ & ( !\en[3]~5_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG0|Add0|qsignal~0_combout\)))) ) 
-- ) ) # ( !\data_in[0]~input_o\ & ( !\en[3]~5_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG0|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111110111001101111111111100111111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG0|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_data_in[0]~input_o\,
	dataf => \ALT_INV_en[3]~5_combout\,
	combout => \R3|REG0|Add0|qsignal~0_combout\);

\R3|REG0|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG0|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG0|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG0|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG0|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG0|Add1|qsignal~0_combout\);

\en[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \en[4]~0_combout\ = (\In_sel[2]~input_o\ & (!\In_sel[0]~input_o\ & !\In_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_In_sel[2]~input_o\,
	datab => \ALT_INV_In_sel[0]~input_o\,
	datac => \ALT_INV_In_sel[1]~input_o\,
	combout => \en[4]~0_combout\);

\R4|REG0|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG0|Add0|qsignal~0_combout\ = ( \data_in[0]~input_o\ & ( \en[4]~0_combout\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( !\data_in[0]~input_o\ & ( \en[4]~0_combout\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\) # (\R4|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( \data_in[0]~input_o\ & ( !\en[4]~0_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG0|Add0|qsignal~0_combout\)))) ) 
-- ) ) # ( !\data_in[0]~input_o\ & ( !\en[4]~0_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG0|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111110111001101111111111100111111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG0|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_data_in[0]~input_o\,
	dataf => \ALT_INV_en[4]~0_combout\,
	combout => \R4|REG0|Add0|qsignal~0_combout\);

\R4|REG0|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG0|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG0|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG0|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG0|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG0|Add1|qsignal~0_combout\);

\en[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \en[5]~1_combout\ = (\In_sel[2]~input_o\ & (\In_sel[0]~input_o\ & !\In_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_In_sel[2]~input_o\,
	datab => \ALT_INV_In_sel[0]~input_o\,
	datac => \ALT_INV_In_sel[1]~input_o\,
	combout => \en[5]~1_combout\);

\R5|REG0|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG0|Add0|qsignal~0_combout\ = ( \data_in[0]~input_o\ & ( \en[5]~1_combout\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( !\data_in[0]~input_o\ & ( \en[5]~1_combout\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\) # (\R5|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( \data_in[0]~input_o\ & ( !\en[5]~1_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG0|Add0|qsignal~0_combout\)))) ) 
-- ) ) # ( !\data_in[0]~input_o\ & ( !\en[5]~1_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG0|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111110111001101111111111100111111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG0|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_data_in[0]~input_o\,
	dataf => \ALT_INV_en[5]~1_combout\,
	combout => \R5|REG0|Add0|qsignal~0_combout\);

\R5|REG0|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG0|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG0|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG0|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG0|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG0|Add1|qsignal~0_combout\);

\en[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \en[6]~2_combout\ = (\In_sel[2]~input_o\ & (!\In_sel[0]~input_o\ & \In_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_In_sel[2]~input_o\,
	datab => \ALT_INV_In_sel[0]~input_o\,
	datac => \ALT_INV_In_sel[1]~input_o\,
	combout => \en[6]~2_combout\);

\R6|REG0|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG0|Add0|qsignal~0_combout\ = ( \data_in[0]~input_o\ & ( \en[6]~2_combout\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( !\data_in[0]~input_o\ & ( \en[6]~2_combout\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\) # (\R6|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( \data_in[0]~input_o\ & ( !\en[6]~2_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG0|Add0|qsignal~0_combout\)))) ) 
-- ) ) # ( !\data_in[0]~input_o\ & ( !\en[6]~2_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG0|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111110111001101111111111100111111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG0|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_data_in[0]~input_o\,
	dataf => \ALT_INV_en[6]~2_combout\,
	combout => \R6|REG0|Add0|qsignal~0_combout\);

\R6|REG0|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG0|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG0|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG0|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG0|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG0|Add1|qsignal~0_combout\);

\en[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \en[7]~3_combout\ = (\In_sel[2]~input_o\ & (\In_sel[0]~input_o\ & \In_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_In_sel[2]~input_o\,
	datab => \ALT_INV_In_sel[0]~input_o\,
	datac => \ALT_INV_In_sel[1]~input_o\,
	combout => \en[7]~3_combout\);

\R7|REG0|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG0|Add0|qsignal~0_combout\ = ( \data_in[0]~input_o\ & ( \en[7]~3_combout\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( !\data_in[0]~input_o\ & ( \en[7]~3_combout\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\) # (\R7|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( \data_in[0]~input_o\ & ( !\en[7]~3_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG0|Add0|qsignal~0_combout\)))) ) 
-- ) ) # ( !\data_in[0]~input_o\ & ( !\en[7]~3_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG0|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111110111001101111111111100111111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG0|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_data_in[0]~input_o\,
	dataf => \ALT_INV_en[7]~3_combout\,
	combout => \R7|REG0|Add0|qsignal~0_combout\);

\R7|REG0|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG0|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG0|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG0|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG0|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG0|Add1|qsignal~0_combout\);

\muxa|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux15~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG0|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG0|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG0|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG0|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux15~0_combout\);

\A_sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_sel(2),
	o => \A_sel[2]~input_o\);

\en[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \en[2]~6_combout\ = (!\In_sel[2]~input_o\ & (!\In_sel[0]~input_o\ & \In_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_In_sel[2]~input_o\,
	datab => \ALT_INV_In_sel[0]~input_o\,
	datac => \ALT_INV_In_sel[1]~input_o\,
	combout => \en[2]~6_combout\);

\R2|REG0|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG0|Add0|qsignal~0_combout\ = ( \data_in[0]~input_o\ & ( \en[2]~6_combout\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( !\data_in[0]~input_o\ & ( \en[2]~6_combout\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\) # (\R2|REG0|Add0|qsignal~0_combout\)) ) ) ) # ( \data_in[0]~input_o\ & ( !\en[2]~6_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG0|Add0|qsignal~0_combout\)))) ) 
-- ) ) # ( !\data_in[0]~input_o\ & ( !\en[2]~6_combout\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG0|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG0|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111110111001101111111111100111111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG0|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_data_in[0]~input_o\,
	dataf => \ALT_INV_en[2]~6_combout\,
	combout => \R2|REG0|Add0|qsignal~0_combout\);

\R2|REG0|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG0|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG0|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG0|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG0|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG0|Add1|qsignal~0_combout\);

\muxa|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux15~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux15~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG0|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux15~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux15~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG0|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux15~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux15~1_combout\,
	datac => \R3|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux15~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG0|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux15~2_combout\);

\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

\R1|REG1|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG1|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R1|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG1|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R1|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[1]~4_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG1|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG1|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[1]~input_o\,
	combout => \R1|REG1|Add0|qsignal~0_combout\);

\R1|REG1|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG1|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG1|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG1|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG1|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG1|Add1|qsignal~0_combout\);

\R0|REG1|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG1|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG1|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG1|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG1|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[1]~input_o\,
	combout => \R0|REG1|Add0|qsignal~0_combout\);

\R0|REG1|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG1|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG1|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG1|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG1|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG1|Add1|qsignal~0_combout\);

\muxa|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux14~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG1|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG1|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG1|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux14~1_combout\);

\R3|REG1|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG1|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R3|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG1|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R3|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[3]~5_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG1|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG1|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[1]~input_o\,
	combout => \R3|REG1|Add0|qsignal~0_combout\);

\R3|REG1|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG1|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG1|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG1|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG1|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG1|Add1|qsignal~0_combout\);

\R4|REG1|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG1|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R4|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG1|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R4|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[4]~0_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG1|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG1|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[1]~input_o\,
	combout => \R4|REG1|Add0|qsignal~0_combout\);

\R4|REG1|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG1|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG1|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG1|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG1|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG1|Add1|qsignal~0_combout\);

\R5|REG1|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG1|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R5|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG1|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R5|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[5]~1_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG1|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG1|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[1]~input_o\,
	combout => \R5|REG1|Add0|qsignal~0_combout\);

\R5|REG1|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG1|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG1|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG1|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG1|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG1|Add1|qsignal~0_combout\);

\R6|REG1|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG1|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R6|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG1|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R6|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[6]~2_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG1|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG1|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[1]~input_o\,
	combout => \R6|REG1|Add0|qsignal~0_combout\);

\R6|REG1|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG1|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG1|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG1|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG1|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG1|Add1|qsignal~0_combout\);

\R7|REG1|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG1|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R7|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG1|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R7|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[7]~3_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG1|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG1|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[1]~input_o\,
	combout => \R7|REG1|Add0|qsignal~0_combout\);

\R7|REG1|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG1|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG1|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG1|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG1|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG1|Add1|qsignal~0_combout\);

\muxa|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux14~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG1|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG1|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG1|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG1|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux14~0_combout\);

\R2|REG1|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG1|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R2|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG1|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R2|REG1|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[2]~6_combout\ & ( !\data_in[1]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG1|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG1|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG1|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[1]~input_o\,
	combout => \R2|REG1|Add0|qsignal~0_combout\);

\R2|REG1|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG1|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG1|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG1|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG1|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG1|Add1|qsignal~0_combout\);

\muxa|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux14~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux14~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG1|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux14~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux14~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG1|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux14~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux14~1_combout\,
	datac => \R3|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux14~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG1|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux14~2_combout\);

\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

\R1|REG2|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG2|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R1|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG2|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R1|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[1]~4_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG2|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG2|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[2]~input_o\,
	combout => \R1|REG2|Add0|qsignal~0_combout\);

\R1|REG2|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG2|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG2|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG2|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG2|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG2|Add1|qsignal~0_combout\);

\R0|REG2|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG2|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG2|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG2|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG2|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[2]~input_o\,
	combout => \R0|REG2|Add0|qsignal~0_combout\);

\R0|REG2|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG2|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG2|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG2|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG2|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG2|Add1|qsignal~0_combout\);

\muxa|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux13~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG2|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG2|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG2|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux13~1_combout\);

\R3|REG2|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG2|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R3|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG2|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R3|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[3]~5_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG2|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG2|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[2]~input_o\,
	combout => \R3|REG2|Add0|qsignal~0_combout\);

\R3|REG2|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG2|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG2|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG2|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG2|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG2|Add1|qsignal~0_combout\);

\R4|REG2|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG2|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R4|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG2|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R4|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[4]~0_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG2|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG2|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[2]~input_o\,
	combout => \R4|REG2|Add0|qsignal~0_combout\);

\R4|REG2|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG2|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG2|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG2|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG2|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG2|Add1|qsignal~0_combout\);

\R5|REG2|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG2|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R5|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG2|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R5|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[5]~1_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG2|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG2|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[2]~input_o\,
	combout => \R5|REG2|Add0|qsignal~0_combout\);

\R5|REG2|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG2|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG2|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG2|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG2|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG2|Add1|qsignal~0_combout\);

\R6|REG2|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG2|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R6|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG2|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R6|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[6]~2_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG2|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG2|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[2]~input_o\,
	combout => \R6|REG2|Add0|qsignal~0_combout\);

\R6|REG2|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG2|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG2|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG2|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG2|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG2|Add1|qsignal~0_combout\);

\R7|REG2|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG2|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R7|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG2|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R7|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[7]~3_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG2|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG2|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[2]~input_o\,
	combout => \R7|REG2|Add0|qsignal~0_combout\);

\R7|REG2|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG2|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG2|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG2|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG2|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG2|Add1|qsignal~0_combout\);

\muxa|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux13~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG2|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG2|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG2|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG2|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux13~0_combout\);

\R2|REG2|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG2|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R2|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG2|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R2|REG2|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[2]~6_combout\ & ( !\data_in[2]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG2|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG2|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG2|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[2]~input_o\,
	combout => \R2|REG2|Add0|qsignal~0_combout\);

\R2|REG2|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG2|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG2|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG2|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG2|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG2|Add1|qsignal~0_combout\);

\muxa|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux13~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux13~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG2|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux13~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux13~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG2|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux13~1_combout\,
	datac => \R3|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux13~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG2|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux13~2_combout\);

\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

\R1|REG3|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG3|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R1|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG3|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R1|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[1]~4_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG3|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG3|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \R1|REG3|Add0|qsignal~0_combout\);

\R1|REG3|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG3|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG3|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG3|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG3|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG3|Add1|qsignal~0_combout\);

\R0|REG3|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG3|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG3|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG3|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG3|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \R0|REG3|Add0|qsignal~0_combout\);

\R0|REG3|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG3|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG3|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG3|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG3|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG3|Add1|qsignal~0_combout\);

\muxa|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux12~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG3|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG3|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG3|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux12~1_combout\);

\R3|REG3|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG3|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R3|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG3|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R3|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[3]~5_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG3|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG3|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \R3|REG3|Add0|qsignal~0_combout\);

\R3|REG3|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG3|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG3|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG3|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG3|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG3|Add1|qsignal~0_combout\);

\R4|REG3|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG3|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R4|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG3|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R4|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[4]~0_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG3|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG3|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \R4|REG3|Add0|qsignal~0_combout\);

\R4|REG3|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG3|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG3|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG3|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG3|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG3|Add1|qsignal~0_combout\);

\R5|REG3|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG3|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R5|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG3|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R5|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[5]~1_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG3|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG3|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \R5|REG3|Add0|qsignal~0_combout\);

\R5|REG3|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG3|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG3|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG3|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG3|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG3|Add1|qsignal~0_combout\);

\R6|REG3|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG3|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R6|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG3|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R6|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[6]~2_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG3|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG3|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \R6|REG3|Add0|qsignal~0_combout\);

\R6|REG3|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG3|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG3|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG3|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG3|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG3|Add1|qsignal~0_combout\);

\R7|REG3|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG3|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R7|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG3|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R7|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[7]~3_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG3|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG3|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \R7|REG3|Add0|qsignal~0_combout\);

\R7|REG3|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG3|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG3|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG3|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG3|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG3|Add1|qsignal~0_combout\);

\muxa|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux12~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG3|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG3|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG3|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG3|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux12~0_combout\);

\R2|REG3|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG3|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R2|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG3|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R2|REG3|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[2]~6_combout\ & ( !\data_in[3]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG3|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG3|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG3|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \R2|REG3|Add0|qsignal~0_combout\);

\R2|REG3|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG3|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG3|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG3|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG3|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG3|Add1|qsignal~0_combout\);

\muxa|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux12~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux12~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG3|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux12~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux12~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG3|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux12~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux12~1_combout\,
	datac => \R3|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux12~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG3|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux12~2_combout\);

\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

\R1|REG4|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG4|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R1|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG4|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R1|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[1]~4_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG4|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG4|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[4]~input_o\,
	combout => \R1|REG4|Add0|qsignal~0_combout\);

\R1|REG4|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG4|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG4|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG4|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG4|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG4|Add1|qsignal~0_combout\);

\R0|REG4|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG4|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG4|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG4|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG4|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[4]~input_o\,
	combout => \R0|REG4|Add0|qsignal~0_combout\);

\R0|REG4|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG4|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG4|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG4|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG4|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG4|Add1|qsignal~0_combout\);

\muxa|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux11~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG4|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG4|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG4|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux11~1_combout\);

\R3|REG4|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG4|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R3|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG4|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R3|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[3]~5_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG4|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG4|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[4]~input_o\,
	combout => \R3|REG4|Add0|qsignal~0_combout\);

\R3|REG4|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG4|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG4|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG4|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG4|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG4|Add1|qsignal~0_combout\);

\R4|REG4|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG4|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R4|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG4|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R4|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[4]~0_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG4|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG4|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[4]~input_o\,
	combout => \R4|REG4|Add0|qsignal~0_combout\);

\R4|REG4|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG4|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG4|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG4|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG4|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG4|Add1|qsignal~0_combout\);

\R5|REG4|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG4|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R5|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG4|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R5|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[5]~1_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG4|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG4|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[4]~input_o\,
	combout => \R5|REG4|Add0|qsignal~0_combout\);

\R5|REG4|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG4|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG4|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG4|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG4|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG4|Add1|qsignal~0_combout\);

\R6|REG4|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG4|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R6|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG4|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R6|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[6]~2_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG4|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG4|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[4]~input_o\,
	combout => \R6|REG4|Add0|qsignal~0_combout\);

\R6|REG4|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG4|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG4|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG4|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG4|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG4|Add1|qsignal~0_combout\);

\R7|REG4|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG4|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R7|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG4|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R7|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[7]~3_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG4|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG4|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[4]~input_o\,
	combout => \R7|REG4|Add0|qsignal~0_combout\);

\R7|REG4|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG4|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG4|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG4|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG4|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG4|Add1|qsignal~0_combout\);

\muxa|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux11~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG4|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG4|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG4|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG4|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux11~0_combout\);

\R2|REG4|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG4|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R2|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG4|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R2|REG4|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[2]~6_combout\ & ( !\data_in[4]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG4|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG4|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG4|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[4]~input_o\,
	combout => \R2|REG4|Add0|qsignal~0_combout\);

\R2|REG4|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG4|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG4|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG4|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG4|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG4|Add1|qsignal~0_combout\);

\muxa|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux11~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux11~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG4|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux11~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux11~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG4|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux11~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux11~1_combout\,
	datac => \R3|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux11~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG4|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux11~2_combout\);

\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

\R1|REG5|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG5|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R1|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG5|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R1|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[1]~4_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG5|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG5|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[5]~input_o\,
	combout => \R1|REG5|Add0|qsignal~0_combout\);

\R1|REG5|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG5|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG5|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG5|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG5|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG5|Add1|qsignal~0_combout\);

\R0|REG5|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG5|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG5|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG5|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG5|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[5]~input_o\,
	combout => \R0|REG5|Add0|qsignal~0_combout\);

\R0|REG5|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG5|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG5|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG5|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG5|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG5|Add1|qsignal~0_combout\);

\muxa|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux10~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG5|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG5|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG5|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux10~1_combout\);

\R3|REG5|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG5|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R3|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG5|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R3|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[3]~5_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG5|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG5|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[5]~input_o\,
	combout => \R3|REG5|Add0|qsignal~0_combout\);

\R3|REG5|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG5|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG5|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG5|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG5|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG5|Add1|qsignal~0_combout\);

\R4|REG5|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG5|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R4|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG5|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R4|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[4]~0_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG5|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG5|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[5]~input_o\,
	combout => \R4|REG5|Add0|qsignal~0_combout\);

\R4|REG5|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG5|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG5|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG5|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG5|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG5|Add1|qsignal~0_combout\);

\R5|REG5|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG5|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R5|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG5|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R5|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[5]~1_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG5|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG5|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[5]~input_o\,
	combout => \R5|REG5|Add0|qsignal~0_combout\);

\R5|REG5|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG5|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG5|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG5|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG5|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG5|Add1|qsignal~0_combout\);

\R6|REG5|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG5|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R6|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG5|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R6|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[6]~2_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG5|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG5|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[5]~input_o\,
	combout => \R6|REG5|Add0|qsignal~0_combout\);

\R6|REG5|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG5|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG5|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG5|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG5|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG5|Add1|qsignal~0_combout\);

\R7|REG5|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG5|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R7|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG5|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R7|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[7]~3_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG5|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG5|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[5]~input_o\,
	combout => \R7|REG5|Add0|qsignal~0_combout\);

\R7|REG5|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG5|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG5|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG5|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG5|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG5|Add1|qsignal~0_combout\);

\muxa|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux10~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG5|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG5|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG5|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG5|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux10~0_combout\);

\R2|REG5|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG5|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R2|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG5|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R2|REG5|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[2]~6_combout\ & ( !\data_in[5]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG5|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG5|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG5|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[5]~input_o\,
	combout => \R2|REG5|Add0|qsignal~0_combout\);

\R2|REG5|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG5|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG5|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG5|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG5|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG5|Add1|qsignal~0_combout\);

\muxa|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux10~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux10~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG5|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux10~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux10~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG5|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux10~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux10~1_combout\,
	datac => \R3|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux10~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG5|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux10~2_combout\);

\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

\R1|REG6|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG6|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R1|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG6|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R1|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[1]~4_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG6|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG6|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[6]~input_o\,
	combout => \R1|REG6|Add0|qsignal~0_combout\);

\R1|REG6|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG6|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG6|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG6|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG6|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG6|Add1|qsignal~0_combout\);

\R0|REG6|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG6|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG6|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG6|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG6|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[6]~input_o\,
	combout => \R0|REG6|Add0|qsignal~0_combout\);

\R0|REG6|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG6|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG6|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG6|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG6|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG6|Add1|qsignal~0_combout\);

\muxa|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux9~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG6|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG6|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG6|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux9~1_combout\);

\R3|REG6|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG6|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R3|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG6|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R3|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[3]~5_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG6|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG6|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[6]~input_o\,
	combout => \R3|REG6|Add0|qsignal~0_combout\);

\R3|REG6|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG6|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG6|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG6|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG6|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG6|Add1|qsignal~0_combout\);

\R4|REG6|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG6|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R4|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG6|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R4|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[4]~0_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG6|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG6|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[6]~input_o\,
	combout => \R4|REG6|Add0|qsignal~0_combout\);

\R4|REG6|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG6|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG6|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG6|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG6|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG6|Add1|qsignal~0_combout\);

\R5|REG6|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG6|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R5|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG6|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R5|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[5]~1_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG6|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG6|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[6]~input_o\,
	combout => \R5|REG6|Add0|qsignal~0_combout\);

\R5|REG6|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG6|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG6|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG6|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG6|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG6|Add1|qsignal~0_combout\);

\R6|REG6|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG6|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R6|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG6|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R6|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[6]~2_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG6|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG6|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[6]~input_o\,
	combout => \R6|REG6|Add0|qsignal~0_combout\);

\R6|REG6|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG6|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG6|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG6|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG6|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG6|Add1|qsignal~0_combout\);

\R7|REG6|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG6|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R7|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG6|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R7|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[7]~3_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG6|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG6|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[6]~input_o\,
	combout => \R7|REG6|Add0|qsignal~0_combout\);

\R7|REG6|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG6|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG6|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG6|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG6|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG6|Add1|qsignal~0_combout\);

\muxa|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux9~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG6|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG6|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG6|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG6|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux9~0_combout\);

\R2|REG6|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG6|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R2|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG6|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R2|REG6|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[2]~6_combout\ & ( !\data_in[6]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG6|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG6|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG6|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[6]~input_o\,
	combout => \R2|REG6|Add0|qsignal~0_combout\);

\R2|REG6|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG6|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG6|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG6|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG6|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG6|Add1|qsignal~0_combout\);

\muxa|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux9~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux9~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG6|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux9~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux9~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG6|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux9~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux9~1_combout\,
	datac => \R3|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux9~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG6|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux9~2_combout\);

\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

\R1|REG7|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG7|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R1|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG7|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R1|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[1]~4_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG7|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG7|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[7]~input_o\,
	combout => \R1|REG7|Add0|qsignal~0_combout\);

\R1|REG7|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG7|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG7|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG7|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG7|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG7|Add1|qsignal~0_combout\);

\R0|REG7|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG7|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG7|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG7|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG7|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[7]~input_o\,
	combout => \R0|REG7|Add0|qsignal~0_combout\);

\R0|REG7|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG7|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG7|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG7|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG7|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG7|Add1|qsignal~0_combout\);

\muxa|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux8~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG7|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG7|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG7|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux8~1_combout\);

\R3|REG7|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG7|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R3|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG7|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R3|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[3]~5_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG7|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG7|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[7]~input_o\,
	combout => \R3|REG7|Add0|qsignal~0_combout\);

\R3|REG7|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG7|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG7|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG7|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG7|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG7|Add1|qsignal~0_combout\);

\R4|REG7|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG7|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R4|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG7|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R4|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[4]~0_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG7|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG7|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[7]~input_o\,
	combout => \R4|REG7|Add0|qsignal~0_combout\);

\R4|REG7|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG7|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG7|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG7|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG7|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG7|Add1|qsignal~0_combout\);

\R5|REG7|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG7|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R5|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG7|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R5|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[5]~1_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG7|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG7|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[7]~input_o\,
	combout => \R5|REG7|Add0|qsignal~0_combout\);

\R5|REG7|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG7|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG7|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG7|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG7|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG7|Add1|qsignal~0_combout\);

\R6|REG7|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG7|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R6|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG7|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R6|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[6]~2_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG7|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG7|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[7]~input_o\,
	combout => \R6|REG7|Add0|qsignal~0_combout\);

\R6|REG7|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG7|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG7|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG7|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG7|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG7|Add1|qsignal~0_combout\);

\R7|REG7|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG7|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R7|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG7|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R7|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[7]~3_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG7|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG7|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[7]~input_o\,
	combout => \R7|REG7|Add0|qsignal~0_combout\);

\R7|REG7|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG7|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG7|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG7|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG7|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG7|Add1|qsignal~0_combout\);

\muxa|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux8~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG7|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG7|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG7|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG7|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux8~0_combout\);

\R2|REG7|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG7|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R2|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG7|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R2|REG7|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[2]~6_combout\ & ( !\data_in[7]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG7|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG7|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG7|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[7]~input_o\,
	combout => \R2|REG7|Add0|qsignal~0_combout\);

\R2|REG7|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG7|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG7|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG7|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG7|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG7|Add1|qsignal~0_combout\);

\muxa|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux8~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux8~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG7|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux8~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux8~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG7|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux8~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux8~1_combout\,
	datac => \R3|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG7|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux8~2_combout\);

\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

\R1|REG8|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG8|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R1|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG8|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R1|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[1]~4_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG8|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG8|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[8]~input_o\,
	combout => \R1|REG8|Add0|qsignal~0_combout\);

\R1|REG8|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG8|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG8|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG8|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG8|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG8|Add1|qsignal~0_combout\);

\R0|REG8|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG8|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG8|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG8|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG8|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[8]~input_o\,
	combout => \R0|REG8|Add0|qsignal~0_combout\);

\R0|REG8|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG8|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG8|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG8|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG8|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG8|Add1|qsignal~0_combout\);

\muxa|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux7~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG8|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG8|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG8|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux7~1_combout\);

\R3|REG8|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG8|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R3|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG8|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R3|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[3]~5_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG8|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG8|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[8]~input_o\,
	combout => \R3|REG8|Add0|qsignal~0_combout\);

\R3|REG8|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG8|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG8|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG8|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG8|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG8|Add1|qsignal~0_combout\);

\R4|REG8|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG8|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R4|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG8|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R4|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[4]~0_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG8|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG8|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[8]~input_o\,
	combout => \R4|REG8|Add0|qsignal~0_combout\);

\R4|REG8|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG8|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG8|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG8|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG8|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG8|Add1|qsignal~0_combout\);

\R5|REG8|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG8|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R5|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG8|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R5|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[5]~1_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG8|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG8|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[8]~input_o\,
	combout => \R5|REG8|Add0|qsignal~0_combout\);

\R5|REG8|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG8|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG8|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG8|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG8|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG8|Add1|qsignal~0_combout\);

\R6|REG8|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG8|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R6|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG8|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R6|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[6]~2_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG8|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG8|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[8]~input_o\,
	combout => \R6|REG8|Add0|qsignal~0_combout\);

\R6|REG8|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG8|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG8|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG8|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG8|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG8|Add1|qsignal~0_combout\);

\R7|REG8|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG8|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R7|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG8|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R7|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[7]~3_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG8|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG8|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[8]~input_o\,
	combout => \R7|REG8|Add0|qsignal~0_combout\);

\R7|REG8|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG8|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG8|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG8|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG8|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG8|Add1|qsignal~0_combout\);

\muxa|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux7~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG8|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG8|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG8|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG8|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux7~0_combout\);

\R2|REG8|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG8|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R2|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG8|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R2|REG8|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[2]~6_combout\ & ( !\data_in[8]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG8|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG8|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG8|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[8]~input_o\,
	combout => \R2|REG8|Add0|qsignal~0_combout\);

\R2|REG8|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG8|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG8|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG8|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG8|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG8|Add1|qsignal~0_combout\);

\muxa|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux7~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux7~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG8|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux7~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux7~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG8|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux7~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux7~1_combout\,
	datac => \R3|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux7~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG8|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux7~2_combout\);

\data_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

\R1|REG9|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG9|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R1|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG9|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R1|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[1]~4_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG9|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG9|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[9]~input_o\,
	combout => \R1|REG9|Add0|qsignal~0_combout\);

\R1|REG9|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG9|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG9|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG9|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG9|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG9|Add1|qsignal~0_combout\);

\R0|REG9|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG9|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG9|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG9|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG9|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[9]~input_o\,
	combout => \R0|REG9|Add0|qsignal~0_combout\);

\R0|REG9|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG9|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG9|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG9|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG9|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG9|Add1|qsignal~0_combout\);

\muxa|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux6~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG9|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG9|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG9|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux6~1_combout\);

\R3|REG9|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG9|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R3|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG9|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R3|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[3]~5_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG9|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG9|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[9]~input_o\,
	combout => \R3|REG9|Add0|qsignal~0_combout\);

\R3|REG9|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG9|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG9|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG9|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG9|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG9|Add1|qsignal~0_combout\);

\R4|REG9|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG9|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R4|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG9|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R4|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[4]~0_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG9|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG9|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[9]~input_o\,
	combout => \R4|REG9|Add0|qsignal~0_combout\);

\R4|REG9|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG9|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG9|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG9|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG9|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG9|Add1|qsignal~0_combout\);

\R5|REG9|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG9|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R5|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG9|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R5|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[5]~1_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG9|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG9|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[9]~input_o\,
	combout => \R5|REG9|Add0|qsignal~0_combout\);

\R5|REG9|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG9|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG9|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG9|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG9|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG9|Add1|qsignal~0_combout\);

\R6|REG9|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG9|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R6|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG9|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R6|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[6]~2_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG9|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG9|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[9]~input_o\,
	combout => \R6|REG9|Add0|qsignal~0_combout\);

\R6|REG9|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG9|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG9|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG9|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG9|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG9|Add1|qsignal~0_combout\);

\R7|REG9|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG9|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R7|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG9|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R7|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[7]~3_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG9|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG9|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[9]~input_o\,
	combout => \R7|REG9|Add0|qsignal~0_combout\);

\R7|REG9|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG9|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG9|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG9|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG9|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG9|Add1|qsignal~0_combout\);

\muxa|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux6~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG9|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG9|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG9|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG9|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux6~0_combout\);

\R2|REG9|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG9|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ 
-- & (\R2|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG9|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R2|REG9|Add0|qsignal~0_combout\)) ) ) ) # ( 
-- !\en[2]~6_combout\ & ( !\data_in[9]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG9|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG9|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG9|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[9]~input_o\,
	combout => \R2|REG9|Add0|qsignal~0_combout\);

\R2|REG9|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG9|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG9|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG9|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG9|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG9|Add1|qsignal~0_combout\);

\muxa|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux6~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux6~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG9|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux6~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux6~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG9|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux6~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux6~1_combout\,
	datac => \R3|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG9|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux6~2_combout\);

\data_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

\R1|REG10|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG10|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R1|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG10|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R1|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG10|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG10|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[10]~input_o\,
	combout => \R1|REG10|Add0|qsignal~0_combout\);

\R1|REG10|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG10|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG10|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG10|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG10|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG10|Add1|qsignal~0_combout\);

\R0|REG10|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG10|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG10|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG10|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG10|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[10]~input_o\,
	combout => \R0|REG10|Add0|qsignal~0_combout\);

\R0|REG10|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG10|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG10|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG10|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG10|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG10|Add1|qsignal~0_combout\);

\muxa|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux5~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG10|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG10|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG10|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux5~1_combout\);

\R3|REG10|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG10|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R3|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG10|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R3|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG10|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG10|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[10]~input_o\,
	combout => \R3|REG10|Add0|qsignal~0_combout\);

\R3|REG10|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG10|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG10|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG10|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG10|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG10|Add1|qsignal~0_combout\);

\R4|REG10|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG10|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R4|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG10|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R4|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG10|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG10|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[10]~input_o\,
	combout => \R4|REG10|Add0|qsignal~0_combout\);

\R4|REG10|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG10|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG10|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG10|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG10|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG10|Add1|qsignal~0_combout\);

\R5|REG10|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG10|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R5|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG10|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R5|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG10|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG10|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[10]~input_o\,
	combout => \R5|REG10|Add0|qsignal~0_combout\);

\R5|REG10|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG10|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG10|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG10|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG10|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG10|Add1|qsignal~0_combout\);

\R6|REG10|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG10|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R6|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG10|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R6|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG10|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG10|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[10]~input_o\,
	combout => \R6|REG10|Add0|qsignal~0_combout\);

\R6|REG10|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG10|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG10|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG10|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG10|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG10|Add1|qsignal~0_combout\);

\R7|REG10|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG10|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R7|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG10|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R7|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG10|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG10|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[10]~input_o\,
	combout => \R7|REG10|Add0|qsignal~0_combout\);

\R7|REG10|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG10|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG10|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG10|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG10|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG10|Add1|qsignal~0_combout\);

\muxa|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux5~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG10|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG10|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG10|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG10|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux5~0_combout\);

\R2|REG10|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG10|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[10]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R2|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG10|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R2|REG10|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( !\data_in[10]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG10|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG10|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG10|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[10]~input_o\,
	combout => \R2|REG10|Add0|qsignal~0_combout\);

\R2|REG10|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG10|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG10|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG10|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG10|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG10|Add1|qsignal~0_combout\);

\muxa|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux5~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux5~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG10|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux5~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux5~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG10|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux5~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux5~1_combout\,
	datac => \R3|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG10|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux5~2_combout\);

\data_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

\R1|REG11|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG11|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R1|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG11|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R1|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG11|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG11|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[11]~input_o\,
	combout => \R1|REG11|Add0|qsignal~0_combout\);

\R1|REG11|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG11|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG11|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG11|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG11|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG11|Add1|qsignal~0_combout\);

\R0|REG11|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG11|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG11|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG11|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG11|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[11]~input_o\,
	combout => \R0|REG11|Add0|qsignal~0_combout\);

\R0|REG11|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG11|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG11|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG11|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG11|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG11|Add1|qsignal~0_combout\);

\muxa|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux4~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG11|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG11|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG11|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux4~1_combout\);

\R3|REG11|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG11|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R3|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG11|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R3|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG11|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG11|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[11]~input_o\,
	combout => \R3|REG11|Add0|qsignal~0_combout\);

\R3|REG11|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG11|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG11|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG11|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG11|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG11|Add1|qsignal~0_combout\);

\R4|REG11|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG11|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R4|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG11|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R4|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG11|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG11|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[11]~input_o\,
	combout => \R4|REG11|Add0|qsignal~0_combout\);

\R4|REG11|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG11|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG11|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG11|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG11|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG11|Add1|qsignal~0_combout\);

\R5|REG11|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG11|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R5|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG11|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R5|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG11|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG11|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[11]~input_o\,
	combout => \R5|REG11|Add0|qsignal~0_combout\);

\R5|REG11|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG11|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG11|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG11|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG11|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG11|Add1|qsignal~0_combout\);

\R6|REG11|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG11|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R6|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG11|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R6|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG11|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG11|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[11]~input_o\,
	combout => \R6|REG11|Add0|qsignal~0_combout\);

\R6|REG11|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG11|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG11|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG11|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG11|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG11|Add1|qsignal~0_combout\);

\R7|REG11|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG11|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R7|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG11|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R7|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG11|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG11|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[11]~input_o\,
	combout => \R7|REG11|Add0|qsignal~0_combout\);

\R7|REG11|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG11|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG11|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG11|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG11|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG11|Add1|qsignal~0_combout\);

\muxa|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux4~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG11|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG11|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG11|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG11|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux4~0_combout\);

\R2|REG11|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG11|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[11]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R2|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG11|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R2|REG11|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( !\data_in[11]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG11|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG11|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG11|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[11]~input_o\,
	combout => \R2|REG11|Add0|qsignal~0_combout\);

\R2|REG11|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG11|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG11|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG11|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG11|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG11|Add1|qsignal~0_combout\);

\muxa|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux4~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux4~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG11|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux4~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux4~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG11|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux4~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux4~1_combout\,
	datac => \R3|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux4~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG11|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux4~2_combout\);

\data_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

\R1|REG12|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG12|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R1|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG12|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R1|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG12|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG12|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[12]~input_o\,
	combout => \R1|REG12|Add0|qsignal~0_combout\);

\R1|REG12|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG12|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG12|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG12|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG12|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG12|Add1|qsignal~0_combout\);

\R0|REG12|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG12|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG12|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG12|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG12|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[12]~input_o\,
	combout => \R0|REG12|Add0|qsignal~0_combout\);

\R0|REG12|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG12|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG12|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG12|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG12|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG12|Add1|qsignal~0_combout\);

\muxa|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux3~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG12|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG12|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG12|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux3~1_combout\);

\R3|REG12|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG12|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R3|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG12|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R3|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG12|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG12|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[12]~input_o\,
	combout => \R3|REG12|Add0|qsignal~0_combout\);

\R3|REG12|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG12|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG12|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG12|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG12|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG12|Add1|qsignal~0_combout\);

\R4|REG12|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG12|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R4|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG12|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R4|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG12|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG12|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[12]~input_o\,
	combout => \R4|REG12|Add0|qsignal~0_combout\);

\R4|REG12|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG12|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG12|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG12|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG12|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG12|Add1|qsignal~0_combout\);

\R5|REG12|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG12|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R5|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG12|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R5|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG12|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG12|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[12]~input_o\,
	combout => \R5|REG12|Add0|qsignal~0_combout\);

\R5|REG12|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG12|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG12|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG12|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG12|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG12|Add1|qsignal~0_combout\);

\R6|REG12|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG12|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R6|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG12|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R6|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG12|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG12|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[12]~input_o\,
	combout => \R6|REG12|Add0|qsignal~0_combout\);

\R6|REG12|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG12|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG12|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG12|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG12|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG12|Add1|qsignal~0_combout\);

\R7|REG12|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG12|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R7|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG12|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R7|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG12|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG12|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[12]~input_o\,
	combout => \R7|REG12|Add0|qsignal~0_combout\);

\R7|REG12|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG12|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG12|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG12|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG12|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG12|Add1|qsignal~0_combout\);

\muxa|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux3~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG12|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG12|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG12|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG12|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux3~0_combout\);

\R2|REG12|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG12|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[12]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R2|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG12|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R2|REG12|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( !\data_in[12]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG12|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG12|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG12|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[12]~input_o\,
	combout => \R2|REG12|Add0|qsignal~0_combout\);

\R2|REG12|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG12|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG12|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG12|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG12|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG12|Add1|qsignal~0_combout\);

\muxa|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux3~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux3~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG12|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux3~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux3~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG12|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux3~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux3~1_combout\,
	datac => \R3|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux3~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG12|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux3~2_combout\);

\data_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

\R1|REG13|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG13|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R1|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG13|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R1|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG13|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG13|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[13]~input_o\,
	combout => \R1|REG13|Add0|qsignal~0_combout\);

\R1|REG13|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG13|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG13|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG13|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG13|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG13|Add1|qsignal~0_combout\);

\R0|REG13|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG13|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG13|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG13|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG13|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[13]~input_o\,
	combout => \R0|REG13|Add0|qsignal~0_combout\);

\R0|REG13|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG13|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG13|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG13|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG13|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG13|Add1|qsignal~0_combout\);

\muxa|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux2~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG13|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG13|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG13|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux2~1_combout\);

\R3|REG13|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG13|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R3|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG13|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R3|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG13|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG13|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[13]~input_o\,
	combout => \R3|REG13|Add0|qsignal~0_combout\);

\R3|REG13|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG13|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG13|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG13|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG13|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG13|Add1|qsignal~0_combout\);

\R4|REG13|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG13|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R4|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG13|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R4|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG13|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG13|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[13]~input_o\,
	combout => \R4|REG13|Add0|qsignal~0_combout\);

\R4|REG13|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG13|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG13|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG13|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG13|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG13|Add1|qsignal~0_combout\);

\R5|REG13|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG13|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R5|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG13|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R5|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG13|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG13|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[13]~input_o\,
	combout => \R5|REG13|Add0|qsignal~0_combout\);

\R5|REG13|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG13|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG13|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG13|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG13|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG13|Add1|qsignal~0_combout\);

\R6|REG13|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG13|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R6|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG13|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R6|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG13|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG13|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[13]~input_o\,
	combout => \R6|REG13|Add0|qsignal~0_combout\);

\R6|REG13|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG13|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG13|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG13|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG13|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG13|Add1|qsignal~0_combout\);

\R7|REG13|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG13|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R7|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG13|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R7|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG13|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG13|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[13]~input_o\,
	combout => \R7|REG13|Add0|qsignal~0_combout\);

\R7|REG13|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG13|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG13|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG13|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG13|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG13|Add1|qsignal~0_combout\);

\muxa|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux2~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG13|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG13|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG13|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG13|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux2~0_combout\);

\R2|REG13|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG13|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[13]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R2|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG13|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R2|REG13|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( !\data_in[13]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG13|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG13|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG13|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[13]~input_o\,
	combout => \R2|REG13|Add0|qsignal~0_combout\);

\R2|REG13|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG13|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG13|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG13|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG13|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG13|Add1|qsignal~0_combout\);

\muxa|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux2~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux2~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG13|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux2~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux2~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG13|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux2~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux2~1_combout\,
	datac => \R3|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux2~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG13|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux2~2_combout\);

\data_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

\R1|REG14|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG14|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R1|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG14|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R1|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG14|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG14|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[14]~input_o\,
	combout => \R1|REG14|Add0|qsignal~0_combout\);

\R1|REG14|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG14|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG14|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG14|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG14|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG14|Add1|qsignal~0_combout\);

\R0|REG14|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG14|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG14|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG14|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG14|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[14]~input_o\,
	combout => \R0|REG14|Add0|qsignal~0_combout\);

\R0|REG14|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG14|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG14|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG14|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG14|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG14|Add1|qsignal~0_combout\);

\muxa|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux1~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG14|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG14|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG14|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux1~1_combout\);

\R3|REG14|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG14|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R3|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG14|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R3|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG14|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG14|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[14]~input_o\,
	combout => \R3|REG14|Add0|qsignal~0_combout\);

\R3|REG14|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG14|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG14|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG14|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG14|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG14|Add1|qsignal~0_combout\);

\R4|REG14|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG14|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R4|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG14|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R4|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG14|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG14|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[14]~input_o\,
	combout => \R4|REG14|Add0|qsignal~0_combout\);

\R4|REG14|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG14|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG14|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG14|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG14|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG14|Add1|qsignal~0_combout\);

\R5|REG14|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG14|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R5|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG14|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R5|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG14|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG14|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[14]~input_o\,
	combout => \R5|REG14|Add0|qsignal~0_combout\);

\R5|REG14|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG14|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG14|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG14|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG14|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG14|Add1|qsignal~0_combout\);

\R6|REG14|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG14|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R6|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG14|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R6|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG14|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG14|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[14]~input_o\,
	combout => \R6|REG14|Add0|qsignal~0_combout\);

\R6|REG14|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG14|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG14|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG14|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG14|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG14|Add1|qsignal~0_combout\);

\R7|REG14|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG14|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R7|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG14|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R7|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG14|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG14|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[14]~input_o\,
	combout => \R7|REG14|Add0|qsignal~0_combout\);

\R7|REG14|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG14|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG14|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG14|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG14|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG14|Add1|qsignal~0_combout\);

\muxa|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux1~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG14|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG14|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG14|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG14|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux1~0_combout\);

\R2|REG14|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG14|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[14]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R2|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG14|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R2|REG14|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( !\data_in[14]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG14|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG14|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG14|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[14]~input_o\,
	combout => \R2|REG14|Add0|qsignal~0_combout\);

\R2|REG14|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG14|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG14|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG14|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG14|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG14|Add1|qsignal~0_combout\);

\muxa|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux1~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux1~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG14|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux1~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux1~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG14|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux1~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux1~1_combout\,
	datac => \R3|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG14|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux1~2_combout\);

\data_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

\R1|REG15|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG15|Add0|qsignal~0_combout\ = ( \en[1]~4_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R1|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R1|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG15|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[1]~4_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R1|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[1]~4_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R1|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R1|REG15|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG15|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[1]~4_combout\,
	dataf => \ALT_INV_data_in[15]~input_o\,
	combout => \R1|REG15|Add0|qsignal~0_combout\);

\R1|REG15|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|REG15|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R1|REG15|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R1|REG15|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R1|REG15|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R1|REG15|Add1|qsignal~0_combout\);

\R0|REG15|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG15|Add0|qsignal~0_combout\ = ( en(0) & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R0|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & 
-- (\R0|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG15|Add0|qsignal~0_combout\)))) ) ) ) # ( en(0) & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # (\R0|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !en(0) & ( 
-- !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R0|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R0|REG15|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG15|Add0|ALT_INV_qsignal~0_combout\,
	datae => ALT_INV_en(0),
	dataf => \ALT_INV_data_in[15]~input_o\,
	combout => \R0|REG15|Add0|qsignal~0_combout\);

\R0|REG15|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R0|REG15|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R0|REG15|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R0|REG15|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R0|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R0|REG15|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R0|REG15|Add1|qsignal~0_combout\);

\muxa|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux0~1_combout\ = (!\A_sel[1]~input_o\ & ((!\A_sel[0]~input_o\ & ((\R0|REG15|Add1|qsignal~0_combout\))) # (\A_sel[0]~input_o\ & (\R1|REG15|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[0]~input_o\,
	datab => \ALT_INV_A_sel[1]~input_o\,
	datac => \R1|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R0|REG15|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux0~1_combout\);

\R3|REG15|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG15|Add0|qsignal~0_combout\ = ( \en[3]~5_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R3|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R3|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG15|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[3]~5_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R3|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[3]~5_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R3|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R3|REG15|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG15|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[3]~5_combout\,
	dataf => \ALT_INV_data_in[15]~input_o\,
	combout => \R3|REG15|Add0|qsignal~0_combout\);

\R3|REG15|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R3|REG15|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R3|REG15|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R3|REG15|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R3|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R3|REG15|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R3|REG15|Add1|qsignal~0_combout\);

\R4|REG15|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG15|Add0|qsignal~0_combout\ = ( \en[4]~0_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R4|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R4|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG15|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[4]~0_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R4|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[4]~0_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R4|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R4|REG15|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG15|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[4]~0_combout\,
	dataf => \ALT_INV_data_in[15]~input_o\,
	combout => \R4|REG15|Add0|qsignal~0_combout\);

\R4|REG15|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R4|REG15|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R4|REG15|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R4|REG15|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R4|REG15|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R4|REG15|Add1|qsignal~0_combout\);

\R5|REG15|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG15|Add0|qsignal~0_combout\ = ( \en[5]~1_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R5|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R5|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG15|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[5]~1_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R5|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[5]~1_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R5|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R5|REG15|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG15|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[5]~1_combout\,
	dataf => \ALT_INV_data_in[15]~input_o\,
	combout => \R5|REG15|Add0|qsignal~0_combout\);

\R5|REG15|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R5|REG15|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R5|REG15|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R5|REG15|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R5|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R5|REG15|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R5|REG15|Add1|qsignal~0_combout\);

\R6|REG15|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG15|Add0|qsignal~0_combout\ = ( \en[6]~2_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R6|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R6|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG15|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[6]~2_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R6|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[6]~2_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R6|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R6|REG15|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG15|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[6]~2_combout\,
	dataf => \ALT_INV_data_in[15]~input_o\,
	combout => \R6|REG15|Add0|qsignal~0_combout\);

\R6|REG15|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R6|REG15|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R6|REG15|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R6|REG15|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R6|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R6|REG15|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R6|REG15|Add1|qsignal~0_combout\);

\R7|REG15|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG15|Add0|qsignal~0_combout\ = ( \en[7]~3_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R7|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R7|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG15|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[7]~3_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R7|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[7]~3_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R7|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R7|REG15|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG15|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[7]~3_combout\,
	dataf => \ALT_INV_data_in[15]~input_o\,
	combout => \R7|REG15|Add0|qsignal~0_combout\);

\R7|REG15|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R7|REG15|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R7|REG15|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R7|REG15|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R7|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R7|REG15|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R7|REG15|Add1|qsignal~0_combout\);

\muxa|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux0~0_combout\ = ( \A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R7|REG15|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( \A_sel[1]~input_o\ & ( !\R6|REG15|Add1|qsignal~0_combout\ ) ) ) # ( \A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( 
-- !\R5|REG15|Add1|qsignal~0_combout\ ) ) ) # ( !\A_sel[0]~input_o\ & ( !\A_sel[1]~input_o\ & ( !\R4|REG15|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[1]~input_o\,
	combout => \muxa|Mux0~0_combout\);

\R2|REG15|Add0|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG15|Add0|qsignal~0_combout\ = ( \en[2]~6_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((\clock~input_o\ & \R2|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( \data_in[15]~input_o\ & ( (!\ClrN~input_o\) # 
-- ((!\clock~input_o\ & (\R2|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG15|Add0|qsignal~0_combout\)))) ) ) ) # ( \en[2]~6_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\) # 
-- (\R2|REG15|Add0|qsignal~0_combout\)) ) ) ) # ( !\en[2]~6_combout\ & ( !\data_in[15]~input_o\ & ( (!\ClrN~input_o\) # ((!\clock~input_o\ & (\R2|REG15|Add1|qsignal~0_combout\)) # (\clock~input_o\ & ((\R2|REG15|Add0|qsignal~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111111111001111111111011100110111111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG15|Add0|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_en[2]~6_combout\,
	dataf => \ALT_INV_data_in[15]~input_o\,
	combout => \R2|REG15|Add0|qsignal~0_combout\);

\R2|REG15|Add1|qsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|REG15|Add1|qsignal~0_combout\ = (!\ClrN~input_o\) # ((!\clock~input_o\ & ((\R2|REG15|Add0|qsignal~0_combout\))) # (\clock~input_o\ & (\R2|REG15|Add1|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111101110011011111110111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \ALT_INV_ClrN~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \R2|REG15|Add0|ALT_INV_qsignal~0_combout\,
	combout => \R2|REG15|Add1|qsignal~0_combout\);

\muxa|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxa|Mux0~2_combout\ = ( !\A_sel[0]~input_o\ & ( (!\A_sel[2]~input_o\ & (!\muxa|Mux0~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R2|REG15|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux0~0_combout\))))) ) ) # ( \A_sel[0]~input_o\ & ( 
-- (!\A_sel[2]~input_o\ & (!\muxa|Mux0~1_combout\ & ((!\A_sel[1]~input_o\) # ((!\R3|REG15|Add1|qsignal~0_combout\))))) # (\A_sel[2]~input_o\ & ((((\muxa|Mux0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_sel[1]~input_o\,
	datab => \muxa|ALT_INV_Mux0~1_combout\,
	datac => \R3|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxa|ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_A_sel[0]~input_o\,
	dataf => \ALT_INV_A_sel[2]~input_o\,
	datag => \R2|REG15|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxa|Mux0~2_combout\);

\B_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_sel(1),
	o => \B_sel[1]~input_o\);

\B_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_sel(0),
	o => \B_sel[0]~input_o\);

\muxb|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux15~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG0|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG0|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux15~1_combout\);

\muxb|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux15~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG0|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG0|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG0|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG0|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux15~0_combout\);

\B_sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_sel(2),
	o => \B_sel[2]~input_o\);

\muxb|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux15~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux15~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG0|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux15~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux15~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG0|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux15~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux15~1_combout\,
	datac => \R3|REG0|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux15~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG0|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux15~2_combout\);

\muxb|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux14~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG1|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG1|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux14~1_combout\);

\muxb|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux14~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG1|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG1|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG1|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG1|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux14~0_combout\);

\muxb|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux14~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux14~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG1|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux14~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux14~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG1|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux14~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux14~1_combout\,
	datac => \R3|REG1|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux14~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG1|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux14~2_combout\);

\muxb|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux13~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG2|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG2|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux13~1_combout\);

\muxb|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux13~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG2|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG2|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG2|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG2|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux13~0_combout\);

\muxb|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux13~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux13~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG2|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux13~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux13~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG2|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux13~1_combout\,
	datac => \R3|REG2|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux13~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG2|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux13~2_combout\);

\muxb|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux12~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG3|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG3|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux12~1_combout\);

\muxb|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux12~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG3|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG3|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG3|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG3|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux12~0_combout\);

\muxb|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux12~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux12~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG3|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux12~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux12~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG3|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux12~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux12~1_combout\,
	datac => \R3|REG3|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux12~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG3|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux12~2_combout\);

\muxb|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux11~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG4|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG4|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux11~1_combout\);

\muxb|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux11~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG4|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG4|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG4|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG4|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux11~0_combout\);

\muxb|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux11~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux11~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG4|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux11~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux11~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG4|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux11~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux11~1_combout\,
	datac => \R3|REG4|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux11~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG4|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux11~2_combout\);

\muxb|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux10~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG5|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG5|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux10~1_combout\);

\muxb|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux10~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG5|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG5|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG5|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG5|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux10~0_combout\);

\muxb|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux10~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux10~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG5|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux10~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux10~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG5|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux10~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux10~1_combout\,
	datac => \R3|REG5|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux10~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG5|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux10~2_combout\);

\muxb|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux9~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG6|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG6|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux9~1_combout\);

\muxb|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux9~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG6|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG6|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG6|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG6|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux9~0_combout\);

\muxb|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux9~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux9~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG6|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux9~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux9~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG6|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux9~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux9~1_combout\,
	datac => \R3|REG6|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux9~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG6|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux9~2_combout\);

\muxb|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux8~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG7|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG7|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux8~1_combout\);

\muxb|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux8~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG7|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG7|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG7|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG7|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux8~0_combout\);

\muxb|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux8~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux8~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG7|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux8~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux8~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG7|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux8~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux8~1_combout\,
	datac => \R3|REG7|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG7|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux8~2_combout\);

\muxb|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux7~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG8|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG8|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux7~1_combout\);

\muxb|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux7~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG8|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG8|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG8|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG8|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux7~0_combout\);

\muxb|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux7~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux7~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG8|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux7~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux7~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG8|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux7~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux7~1_combout\,
	datac => \R3|REG8|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux7~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG8|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux7~2_combout\);

\muxb|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux6~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG9|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG9|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux6~1_combout\);

\muxb|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux6~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG9|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG9|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG9|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG9|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux6~0_combout\);

\muxb|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux6~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux6~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG9|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux6~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux6~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG9|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux6~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux6~1_combout\,
	datac => \R3|REG9|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG9|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux6~2_combout\);

\muxb|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux5~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG10|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG10|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux5~1_combout\);

\muxb|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux5~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG10|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG10|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG10|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG10|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux5~0_combout\);

\muxb|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux5~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux5~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG10|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux5~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux5~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG10|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux5~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux5~1_combout\,
	datac => \R3|REG10|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG10|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux5~2_combout\);

\muxb|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux4~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG11|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG11|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux4~1_combout\);

\muxb|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux4~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG11|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG11|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG11|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG11|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux4~0_combout\);

\muxb|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux4~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux4~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG11|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux4~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux4~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG11|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux4~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux4~1_combout\,
	datac => \R3|REG11|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux4~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG11|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux4~2_combout\);

\muxb|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux3~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG12|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG12|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux3~1_combout\);

\muxb|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux3~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG12|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG12|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG12|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG12|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux3~0_combout\);

\muxb|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux3~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux3~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG12|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux3~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux3~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG12|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux3~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux3~1_combout\,
	datac => \R3|REG12|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux3~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG12|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux3~2_combout\);

\muxb|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux2~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG13|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG13|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux2~1_combout\);

\muxb|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux2~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG13|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG13|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG13|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG13|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux2~0_combout\);

\muxb|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux2~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux2~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG13|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux2~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux2~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG13|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux2~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux2~1_combout\,
	datac => \R3|REG13|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux2~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG13|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux2~2_combout\);

\muxb|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux1~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG14|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG14|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux1~1_combout\);

\muxb|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux1~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG14|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG14|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG14|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG14|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux1~0_combout\);

\muxb|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux1~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux1~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG14|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux1~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux1~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG14|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux1~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux1~1_combout\,
	datac => \R3|REG14|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG14|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux1~2_combout\);

\muxb|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux0~1_combout\ = (!\B_sel[1]~input_o\ & ((!\B_sel[0]~input_o\ & ((\R0|REG15|Add1|qsignal~0_combout\))) # (\B_sel[0]~input_o\ & (\R1|REG15|Add1|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R0|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datac => \ALT_INV_B_sel[0]~input_o\,
	datad => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux0~1_combout\);

\muxb|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux0~0_combout\ = ( \B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R7|REG15|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( \B_sel[1]~input_o\ & ( !\R6|REG15|Add1|qsignal~0_combout\ ) ) ) # ( \B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( 
-- !\R5|REG15|Add1|qsignal~0_combout\ ) ) ) # ( !\B_sel[0]~input_o\ & ( !\B_sel[1]~input_o\ & ( !\R4|REG15|Add1|qsignal~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R4|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datab => \R5|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datac => \R6|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datad => \R7|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[1]~input_o\,
	combout => \muxb|Mux0~0_combout\);

\muxb|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxb|Mux0~2_combout\ = ( !\B_sel[0]~input_o\ & ( (!\B_sel[2]~input_o\ & (!\muxb|Mux0~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R2|REG15|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux0~0_combout\))))) ) ) # ( \B_sel[0]~input_o\ & ( 
-- (!\B_sel[2]~input_o\ & (!\muxb|Mux0~1_combout\ & ((!\B_sel[1]~input_o\) # ((!\R3|REG15|Add1|qsignal~0_combout\))))) # (\B_sel[2]~input_o\ & ((((\muxb|Mux0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000110010001100100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_sel[1]~input_o\,
	datab => \muxb|ALT_INV_Mux0~1_combout\,
	datac => \R3|REG15|Add1|ALT_INV_qsignal~0_combout\,
	datad => \muxb|ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_B_sel[0]~input_o\,
	dataf => \ALT_INV_B_sel[2]~input_o\,
	datag => \R2|REG15|Add1|ALT_INV_qsignal~0_combout\,
	combout => \muxb|Mux0~2_combout\);

ww_A_out(0) <= \A_out[0]~output_o\;

ww_A_out(1) <= \A_out[1]~output_o\;

ww_A_out(2) <= \A_out[2]~output_o\;

ww_A_out(3) <= \A_out[3]~output_o\;

ww_A_out(4) <= \A_out[4]~output_o\;

ww_A_out(5) <= \A_out[5]~output_o\;

ww_A_out(6) <= \A_out[6]~output_o\;

ww_A_out(7) <= \A_out[7]~output_o\;

ww_A_out(8) <= \A_out[8]~output_o\;

ww_A_out(9) <= \A_out[9]~output_o\;

ww_A_out(10) <= \A_out[10]~output_o\;

ww_A_out(11) <= \A_out[11]~output_o\;

ww_A_out(12) <= \A_out[12]~output_o\;

ww_A_out(13) <= \A_out[13]~output_o\;

ww_A_out(14) <= \A_out[14]~output_o\;

ww_A_out(15) <= \A_out[15]~output_o\;

ww_B_out(0) <= \B_out[0]~output_o\;

ww_B_out(1) <= \B_out[1]~output_o\;

ww_B_out(2) <= \B_out[2]~output_o\;

ww_B_out(3) <= \B_out[3]~output_o\;

ww_B_out(4) <= \B_out[4]~output_o\;

ww_B_out(5) <= \B_out[5]~output_o\;

ww_B_out(6) <= \B_out[6]~output_o\;

ww_B_out(7) <= \B_out[7]~output_o\;

ww_B_out(8) <= \B_out[8]~output_o\;

ww_B_out(9) <= \B_out[9]~output_o\;

ww_B_out(10) <= \B_out[10]~output_o\;

ww_B_out(11) <= \B_out[11]~output_o\;

ww_B_out(12) <= \B_out[12]~output_o\;

ww_B_out(13) <= \B_out[13]~output_o\;

ww_B_out(14) <= \B_out[14]~output_o\;

ww_B_out(15) <= \B_out[15]~output_o\;
END structure;


