
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Tristate IS
	PORT(
		XIN : IN std_logic;
		control : IN std_logic;
		XOUT : OUT std_logic
		);
END Tristate;

ARCHITECTURE Behavior OF Tristate IS
BEGIN
	XOUT <= XIN when control = '1' else 'Z';
END
ARCHITECTURE;
