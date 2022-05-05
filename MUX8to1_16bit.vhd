
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY MUX8to1_16bit IS
	PORT(
		in0 : in std_logic_vector (15 downto 0);-- 000
		in1 : in std_logic_vector (15 downto 0);-- 001
		in2 : in std_logic_vector (15 downto 0);-- 010
		in3 : in std_logic_vector (15 downto 0);-- 011
		in4 : in std_logic_vector (15 downto 0);-- 100
		in5 : in std_logic_vector (15 downto 0);-- 101
		in6 : in std_logic_vector (15 downto 0);-- 110
		in7 : in std_logic_vector (15 downto 0);-- 111
		
		s : in std_logic_vector (2 downto 0);
		outbus : out std_logic_vector (15 downto 0)
		);
END ENTITY;

ARCHITECTURE Behavior OF MUX8to1_16bit IS

BEGIN
	process (s, in0, in1, in2, in3, in4, in5, in6, in7)
	begin
		case s is
			when "000" => outbus <= in0;
			when "001" => outbus <= in1;
			when "010" => outbus <= in2;
			when "011" => outbus <= in3;
			when "100" => outbus <= in4;
			when "101" => outbus <= in5;
			when "110" => outbus <= in6;
			when "111" => outbus <= in7;
			when others => outbus <= "ZZZZZZZZZZZZZZZZ";
		end case;
	end process;
END
ARCHITECTURE;
