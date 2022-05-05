
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY RAM IS
	PORT (
		addr : in std_logic_vector (15 downto 0);
		data : inout std_logic_vector (15 downto 0);
		clk : in std_logic;
		wr_en : in std_logic;
		rd : in std_logic
		);
END ENTITY;

ARCHITECTURE Behavior OF RAM IS
	type array_1kx16 is array(1023 downto 0) of
		std_logic_vector (15 downto 0);
	signal ram : array_1kx16;
	
	signal dat_out : std_logic_vector (15 downto 0);
	signal rd_dl : std_logic;
	
BEGIN
	process(clk)
	begin
		if falling_edge(clk) then
			-- writes
			if (wr_en = '1') then
				ram(to_integer(unsigned(addr))) <= data;
			end if;
			
			-- reads
			dat_out <= ram(to_integer(unsigned(addr)));
			rd_dl <= rd;
		end if;
	end process;
	data <= dat_out when rd_dl = '1'
		else "ZZZZZZZZZZZZZZZZ";
END
ARCHITECTURE;