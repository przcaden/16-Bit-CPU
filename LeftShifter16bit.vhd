
library IEEE;
use Ieee.numeric_std.all;
use Ieee.std_logic_1164.all;

entity LeftShifter16bit is
	port(
		A : in std_logic_vector (15 downto 0);
		shamt : in std_logic_vector (2 downto 0);
		O : out std_logic_vector (15 downto 0);
		c : out std_logic
	);
end entity;

architecture behave of LeftShifter16bit is

begin
	O <= std_logic_vector(unsigned(A) sll to_integer(unsigned(shamt)));
	c <= A( 15 - to_integer(unsigned(shamt)) );
end
architecture;
