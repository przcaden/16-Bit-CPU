

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY FullAdder IS
	PORT (
		X : IN std_logic;
		Y : IN std_logic;
		CIN : IN std_logic;
		SUM0 : OUT std_logic;
		COUT : OUT std_logic
		);
END FullAdder;

ARCHITECTURE Behavior OF FullAdder IS
BEGIN
	SUM0 <= X XOR Y XOR CIN;
	COUT <= (X AND Y) OR (X AND CIN) OR (Y AND CIN);
END
ARCHITECTURE;