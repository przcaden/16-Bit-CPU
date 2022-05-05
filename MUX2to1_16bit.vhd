
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY MUX2to1_16bit IS
	PORT(
		in0 : in std_logic_vector (15 downto 0);-- 0
		in1 : in std_logic_vector (15 downto 0);-- 1
		
		s : in std_logic;
		outbus : out std_logic_vector (15 downto 0)
		);
END ENTITY;

ARCHITECTURE Behavior OF MUX2to1_16bit IS

BEGIN
	process (s, in0, in1)
	begin
		case s is
			when '0' => outbus <= in0;
			when '1' => outbus <= in1;
			when others => outbus <= "ZZZZZZZZZZZZZZZZ";
		end case;
	end process;
END
ARCHITECTURE;
