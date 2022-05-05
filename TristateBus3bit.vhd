
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY TristateBus3bit IS
	PORT(
		XIN : IN std_logic_vector (2 downto 0);
		control : IN std_logic;
		XOUT : OUT std_logic_vector (2 downto 0)
		);
END TristateBus3bit;

ARCHITECTURE Behavior OF TristateBus3bit IS
BEGIN
	XOUT <= XIN when control = '1' else (others => 'Z');
END
ARCHITECTURE;
