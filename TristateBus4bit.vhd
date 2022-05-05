
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY TristateBus4bit IS
	PORT(
		XIN : IN std_logic_vector (3 downto 0);
		control : IN std_logic;
		XOUT : OUT std_logic_vector (3 downto 0)
		);
END TristateBus4bit;

ARCHITECTURE Behavior OF TristateBus4bit IS
BEGIN
	XOUT <= XIN when control = '1' else (others => 'Z');
END
ARCHITECTURE;
