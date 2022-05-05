
library IEEE;
use Ieee.std_logic_1164.all;

entity D_Latch is
	port (
		d : in std_logic;
		g : in std_logic;
		
		q : out std_logic;
		p : out std_logic
	);
end entity;

architecture behave of D_Latch is

signal qsignal, psignal : std_logic; 
begin
	qsignal <= (d nand g) nand qsignal;
	psignal <= (not d nand g) nand psignal;
	q <= qsignal;
	p <= psignal;
end
architecture;
