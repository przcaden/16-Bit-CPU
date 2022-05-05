
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY PC IS
	PORT(
		clk : in std_logic;
		addr : in std_logic_vector (15 downto 0);
	aout : out std_logic_vector (15 downto 0)
		);
END ENTITY;

ARCHITECTURE Behavior OF PC IS

BEGIN
	process(clk, addr) is
	begin
		if falling_edge(clk) then
			aout <= addr;
		end if;
	end process;
	
END
ARCHITECTURE;
