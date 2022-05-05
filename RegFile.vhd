	
library ieee;
use ieee.std_logic_1164.all;

ENTITY RegFile IS
	PORT(
		clock: IN std_logic;
		ClrN : IN std_logic;
		A_sel : IN std_logic_vector (2 downto 0);
		B_sel : IN std_logic_vector (2 downto 0);
		In_sel : IN std_logic_vector (2 downto 0);
		data_in : IN std_logic_vector (15 downto 0);
		
		A_out : OUT std_logic_vector (15 downto 0);
		B_out : OUT std_logic_vector (15 downto 0)
	);
END ENTITY;

ARCHITECTURE behave OF RegFile IS

COMPONENT Reg IS
	PORT(
		clock: IN std_logic;
		ClrN : IN std_logic;
		D : IN std_logic_vector (15 downto 0);
		Q : OUT std_logic_vector (15 downto 0)
	);
END COMPONENT;

COMPONENT MUX8to1_16bit IS
	PORT(
		in0 : in std_logic_vector (15 downto 0);-- 000
		in1 : in std_logic_vector (15 downto 0);-- 001
		in2 : in std_logic_vector (15 downto 0);-- 010
		in3 : in std_logic_vector (15 downto 0);-- 011
		in4 : in std_logic_vector (15 downto 0);-- 100
		in5 : in std_logic_vector (15 downto 0);-- 101
		in6 : in std_logic_vector (15 downto 0);-- 110
		in7 : in std_logic_vector (15 downto 0);-- 111
		s : in std_logic_vector (2 downto 0);
		outbus : out std_logic_vector (15 downto 0)
	);
END COMPONENT;

COMPONENT MUX2to1_16bit IS
	PORT(
		in0 : in std_logic_vector (15 downto 0);-- 0
		in1 : in std_logic_vector (15 downto 0);-- 1
		s : in std_logic;
		outbus : out std_logic_vector (15 downto 0)
	);
END COMPONENT;

signal reg0 : std_logic_vector (15 downto 0);
signal reg1 : std_logic_vector (15 downto 0);
signal reg2 : std_logic_vector (15 downto 0);
signal reg3 : std_logic_vector (15 downto 0);
signal reg4 : std_logic_vector (15 downto 0);
signal reg5 : std_logic_vector (15 downto 0);
signal reg6 : std_logic_vector (15 downto 0);
signal reg7 : std_logic_vector (15 downto 0);

signal en : std_logic_vector(7 downto 0);

signal d0 : std_logic_vector(15 downto 0);
signal d1 : std_logic_vector(15 downto 0);
signal d2 : std_logic_vector(15 downto 0);
signal d3 : std_logic_vector(15 downto 0);
signal d4 : std_logic_vector(15 downto 0);
signal d5 : std_logic_vector(15 downto 0);
signal d6 : std_logic_vector(15 downto 0);
signal d7 : std_logic_vector(15 downto 0);

BEGIN
	en(0) <= not(In_sel(2)) and not(In_sel(1)) and not(In_sel(0));
	en(1) <= not(In_sel(2)) and not(In_sel(1)) and In_sel(0);
	en(2) <= not(In_sel(2)) and In_sel(1) and not(In_sel(0));
	en(3) <= not(In_sel(2)) and In_sel(1) and In_sel(0);
	en(4) <= In_sel(2) and not(In_sel(1)) and not(In_sel(0));
	en(5) <= In_sel(2) and not(In_sel(1)) and In_sel(0);
	en(6) <= In_sel(2) and In_sel(1) and not(In_sel(0));
	en(7) <= In_sel(2) and In_sel(1) and In_sel(0);
	
	R0 : Reg PORT MAP ( clock=>not(clock), ClrN=>ClrN, D=>d0, Q=>reg0 );
	R1 : Reg PORT MAP ( clock=>not(clock), ClrN=>ClrN, D=>d1, Q=>reg1 );
	R2 : Reg PORT MAP ( clock=>not(clock), ClrN=>ClrN, D=>d2, Q=>reg2 );
	R3 : Reg PORT MAP ( clock=>not(clock), ClrN=>ClrN, D=>d3, Q=>reg3 );
	R4 : Reg PORT MAP ( clock=>not(clock), ClrN=>ClrN, D=>d4, Q=>reg4 );
	R5 : Reg PORT MAP ( clock=>not(clock), ClrN=>ClrN, D=>d5, Q=>reg5 );
	R6 : Reg PORT MAP ( clock=>not(clock), ClrN=>ClrN, D=>d6, Q=>reg6 );
	R7 : Reg PORT MAP ( clock=>not(clock), ClrN=>ClrN, D=>d7, Q=>reg7 );
	
	m0 : MUX2to1_16bit PORT MAP ( in0=>reg0, in1=>data_in, s=>en(0), outbus=>d0 );
	m1 : MUX2to1_16bit PORT MAP ( in0=>reg1, in1=>data_in, s=>en(1), outbus=>d1 );
	m2 : MUX2to1_16bit PORT MAP ( in0=>reg2, in1=>data_in, s=>en(2), outbus=>d2 );
	m3 : MUX2to1_16bit PORT MAP ( in0=>reg3, in1=>data_in, s=>en(3), outbus=>d3 );
	m4 : MUX2to1_16bit PORT MAP ( in0=>reg4, in1=>data_in, s=>en(4), outbus=>d4 );
	m5 : MUX2to1_16bit PORT MAP ( in0=>reg5, in1=>data_in, s=>en(5), outbus=>d5 );
	m6 : MUX2to1_16bit PORT MAP ( in0=>reg6, in1=>data_in, s=>en(6), outbus=>d6 );
	m7 : MUX2to1_16bit PORT MAP ( in0=>reg7, in1=>data_in, s=>en(7), outbus=>d7 );
	
	muxa : MUX8to1_16bit PORT MAP ( in0=>reg0, in1=>reg1, in2=>reg2, in3=>reg3, in4=>reg4,
		in5=>reg5, in6=>reg6, in7=>reg7, s=>A_sel, outbus=>A_out );
	muxb : MUX8to1_16bit PORT MAP ( in0=>reg0, in1=>reg1, in2=>reg2, in3=>reg3, in4=>reg4,
		in5=>reg5, in6=>reg6, in7=>reg7, s=>B_sel, outbus=>B_out );
	
END ARCHITECTURE;
