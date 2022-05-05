	
library ieee;
use ieee.std_logic_1164.all;

ENTITY Reg IS
	PORT(
		clock: IN std_logic;
		ClrN : IN std_logic;
		D : IN std_logic_vector (15 downto 0);
		Q : OUT std_logic_vector (15 downto 0)
	);
END ENTITY;

ARCHITECTURE behave OF Reg IS

COMPONENT DFlipFlop IS
	PORT(
		d : in std_logic;
		Clk : in std_logic;
		Clr : in std_logic;
		q2 : out std_logic
	);
END COMPONENT;

SIGNAL qsig : std_logic_vector(15 downto 0);

BEGIN
	REG0 : DFlipFlop PORT MAP ( d=>D(0), Clk=>clock, Clr=>ClrN, q2=>qsig(0) );
	REG1 : DFlipFlop PORT MAP ( d=>D(1), Clk=>clock, Clr=>ClrN, q2=>qsig(1) );
	REG2 : DFlipFlop PORT MAP ( d=>D(2), Clk=>clock, Clr=>ClrN, q2=>qsig(2) );
	REG3 : DFlipFlop PORT MAP ( d=>D(3), Clk=>clock, Clr=>ClrN, q2=>qsig(3) );
	REG4 : DFlipFlop PORT MAP ( d=>D(4), Clk=>clock, Clr=>ClrN, q2=>qsig(4) );
	REG5 : DFlipFlop PORT MAP ( d=>D(5), Clk=>clock, Clr=>ClrN, q2=>qsig(5) );
	REG6 : DFlipFlop PORT MAP ( d=>D(6), Clk=>clock, Clr=>ClrN, q2=>qsig(6) );
	REG7 : DFlipFlop PORT MAP ( d=>D(7), Clk=>clock, Clr=>ClrN, q2=>qsig(7) );
	REG8 : DFlipFlop PORT MAP ( d=>D(8), Clk=>clock, Clr=>ClrN, q2=>qsig(8) );
	REG9 : DFlipFlop PORT MAP ( d=>D(9), Clk=>clock, Clr=>ClrN, q2=>qsig(9) );
	REG10 : DFlipFlop PORT MAP ( d=>D(10), Clk=>clock, Clr=>ClrN, q2=>qsig(10) );
	REG11 : DFlipFlop PORT MAP ( d=>D(11), Clk=>clock, Clr=>ClrN, q2=>qsig(11) );
	REG12 : DFlipFlop PORT MAP ( d=>D(12), Clk=>clock, Clr=>ClrN, q2=>qsig(12) );
	REG13 : DFlipFlop PORT MAP ( d=>D(13), Clk=>clock, Clr=>ClrN, q2=>qsig(13) );
	REG14 : DFlipFlop PORT MAP ( d=>D(14), Clk=>clock, Clr=>ClrN, q2=>qsig(14) );
	REG15 : DFlipFlop PORT MAP ( d=>D(15), Clk=>clock, Clr=>ClrN, q2=>qsig(15) );
	
	Q <= qsig;
END
ARCHITECTURE;
