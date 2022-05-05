 
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY SevenSegment IS
	PORT (
		data_in : in std_logic_vector (3 downto 0);
		seg : out std_logic_vector (6 downto 0)
		);
END ENTITY;

ARCHITECTURE Behavior OF SevenSegment IS
	
BEGIN
	process(data_in)
	begin
		 case data_in is
			 when "0000" => seg <= "0000001"; -- "0"     
			 when "0001" => seg <= "1001111"; -- "1" 
			 when "0010" => seg <= "0010010"; -- "2" 
			 when "0011" => seg <= "0000110"; -- "3" 
			 when "0100" => seg <= "1001100"; -- "4" 
			 when "0101" => seg <= "0100100"; -- "5" 
			 when "0110" => seg <= "0100000"; -- "6" 
			 when "0111" => seg <= "0001111"; -- "7" 
			 when "1000" => seg <= "0000000"; -- "8"     
			 when "1001" => seg <= "0000100"; -- "9" 
			 when "1010" => seg <= "0000010"; -- a
			 when "1011" => seg <= "1100000"; -- b
			 when "1100" => seg <= "0110001"; -- c
			 when "1101" => seg <= "1000010"; -- d
			 when "1110" => seg <= "0110000"; -- E
			 when "1111" => seg <= "0111000"; -- F
		end case;
	end process;

END
ARCHITECTURE;
