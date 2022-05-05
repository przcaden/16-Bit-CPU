
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ROM IS
	PORT (
		addr : in std_logic_vector (15 downto 0);
		data : out std_logic_vector (15 downto 0)
		);
END ENTITY;

ARCHITECTURE Behavior OF ROM IS
	type array_1kx16 is array(127 downto 0) of
		std_logic_vector (7 downto 0);
	signal rom : array_1kx16 := 
		(0=>x"00", 1=>x"42",
		2=>x"00", 3=>x"81",
		4=>x"32", 5=>x"7F",
		6=>x"94", 7=>x"11",
		8=>x"60", 9=>x"80",
		10=>x"B2", 11=>x"08",
		12=>x"50", 13=>x"40",
		others=>x"00");
	
BEGIN
	data <= rom(to_integer(unsigned(addr))) & rom(to_integer(unsigned(addr))+1);
END
ARCHITECTURE;
