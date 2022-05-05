
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY FullSubtractor IS
	PORT (
		X : IN std_logic;
		Y : IN std_logic;
		BIN : IN std_logic;
		DIF0 : OUT std_logic;
		BOUT : OUT std_logic
		);
END FullSubtractor;

ARCHITECTURE Behavior OF FullSubtractor IS

SIGNAL bridge : std_logic;

BEGIN
	bridge <= X XOR Y;
	DIF0 <= bridge XOR BIN;
	BOUT <= (NOT X AND Y) OR (NOT bridge AND BIN);
END
ARCHITECTURE;
