
library IEEE;
use Ieee.std_logic_1164.all;

entity D_Latch_Clr is
	port(
		d : in std_logic;
		g : in std_logic;
		
		Clr : in std_logic;
		
		q : out std_logic;
		p : out std_logic
	);
end entity;

architecture behave of D_Latch_Clr is

signal qsignal, psignal, sig0, sig1, rig0, rig1 : std_logic;
begin
	sig0 <= d nand g;
	sig1 <= sig0 or not(Clr);
	
	rig0 <= not(d) nand g;
	rig1 <= rig0 and Clr;
	
	qsignal <= sig1 nand psignal;
	psignal <= rig1 nand qsignal;
	
	q <= qsignal;
	p <= psignal;
end
architecture;
