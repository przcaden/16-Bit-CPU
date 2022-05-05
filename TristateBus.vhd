
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY TristateBus IS
	PORT(
		XIN : IN std_logic_vector (15 downto 0);
		control : IN std_logic;
		XOUT : OUT std_logic_vector (15 downto 0)
		);
END TristateBus;

ARCHITECTURE Behavior OF TristateBus IS
BEGIN
	XOUT <= XIN when control = '1' else (others => 'Z');
END
ARCHITECTURE;
