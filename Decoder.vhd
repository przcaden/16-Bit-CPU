
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Decoder IS
	PORT(
		opcode : in std_logic_vector (3 downto 0);
		alu_zf, alu_of : in std_logic;
		
		alu_func : out std_logic_vector (2 downto 0);
		alu_sel : out std_logic;
		ram_strb, ram_rw, ram_oe : out std_logic;
		cf_strb, of_strb, pf_strb, sf_strb, zf_strb : out std_logic;
		pc_sel : out std_logic_vector (1 downto 0);
		rf_dsel, rf_strb, rf_wsel, rf_oe : out std_logic
		);
END ENTITY;

ARCHITECTURE Behavior OF Decoder IS
BEGIN
	process (opcode, alu_zf, alu_of)
	begin
		case opcode is -- LI
			when "0000" =>
				alu_func <= "100";
				alu_sel <= '1'; -- select immediate
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '0';
				of_strb <= '0';
				pf_strb <= '1';
				sf_strb <= '0';
				zf_strb <= '0';
				pc_sel <= "00";
				rf_dsel <= '0';
				rf_strb <= '1';
				rf_wsel <= '1';
				rf_oe <= '0';
				
			when "0001" => -- ADD
				alu_func <= "000";
				alu_sel <= '0'; -- select register
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '1';
				of_strb <= '1';
				pf_strb <= '1';
				sf_strb <= '1';
				zf_strb <= '1';
				pc_sel <= "00";
				rf_dsel <= '0';
				rf_strb <= '1';
				rf_wsel <= '0';
				rf_oe <= '0';
				
			when "0010" => -- SUB
				alu_func <= "001";
				alu_sel <= '0';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '1';
				of_strb <= '1';
				pf_strb <= '1';
				sf_strb <= '1';
				zf_strb <= '1';
				pc_sel <= "00";
				rf_dsel <= '0';
				rf_strb <= '1';
				rf_wsel <= '0';
				rf_oe <= '0';
				
			when "0011" => -- ADDI
				alu_func <= "000";
				alu_sel <= '1';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '1';
				of_strb <= '1';
				pf_strb <= '1';
				sf_strb <= '1';
				zf_strb <= '1';
				pc_sel <= "00";
				rf_dsel <= '0';
				rf_strb <= '1';
				rf_wsel <= '1';
				rf_oe <= '0';
				
			when "0100" => -- BZF
				alu_func <= "ZZZ";
				alu_sel <= 'Z';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '0';
				of_strb <= '0';
				pf_strb <= '0';
				sf_strb <= '0';
				zf_strb <= '0';
				if alu_zf = '1' then
					pc_sel <= "01";
				else pc_sel <= "00";
				end if;
				rf_dsel <= 'Z';
				rf_strb <= '0';
				rf_wsel <= 'Z';
				rf_oe <= '0';
				
			when "0101" => -- LW
				alu_func <= "000";
				alu_sel <= '1';
				ram_strb <= '0';
				ram_rw <= '1'; -- read
				ram_oe <= '1';
				cf_strb <= '0';
				of_strb <= '0';
				pf_strb <= '1';
				sf_strb <= '0';
				zf_strb <= '1';
				pc_sel <= "00";
				rf_dsel <= '1';
				rf_strb <= '1';
				rf_wsel <= '1';
				rf_oe <= '0';
				
				
			when "0110" => -- SW
				alu_func <= "000";
				alu_sel <= '1';
				ram_strb <= '1';
				ram_rw <= '0'; -- write
				ram_oe <= '0';
				cf_strb <= '0';
				of_strb <= '0';
				pf_strb <= '0';
				sf_strb <= '0';
				zf_strb <= '0';
				pc_sel <= "00";
				rf_dsel <= 'Z';
				rf_strb <= '0';
				rf_wsel <= 'Z';
				rf_oe <= '1';
				
			when "0111" => -- BOF
				alu_func <= "ZZZ";
				alu_sel <= 'Z';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '0';
				of_strb <= '0';
				pf_strb <= '0';
				sf_strb <= '0';
				zf_strb <= '0';
				if alu_of = '1' then
					pc_sel <= "01";
				else pc_sel <= "00";
				end if;
				rf_dsel <= 'Z';
				rf_strb <= '0';
				rf_wsel <= 'Z';
				rf_oe <= '0';
				
			when "1000" => -- SLT
				alu_func <= "010";
				alu_sel <= '0';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '0';
				of_strb <= '0';
				pf_strb <= '0';
				sf_strb <= '0';
				zf_strb <= '1';
				pc_sel <= "00";
				rf_dsel <= '0';
				rf_strb <= '1';
				rf_wsel <= '0';
				rf_oe <= '0';
				
			when "1001" => -- SLL
				alu_func <= "110";
				alu_sel <= '0';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '1';
				of_strb <= '0';
				pf_strb <= '1';
				sf_strb <= '0';
				zf_strb <= '1';
				pc_sel <= "00";
				rf_dsel <= '0';
				rf_strb <= '1';
				rf_wsel <= '0';
				rf_oe <= '0';
				
			when "1010" => -- SRL
				alu_func <= "111";
				alu_sel <= '0';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '1';
				of_strb <= '0';
				pf_strb <= '1';
				sf_strb <= '0';
				zf_strb <= '1';
				pc_sel <= "00";
				rf_dsel <= '0';
				rf_strb <= '1';
				rf_wsel <= '0';
				rf_oe <= '0';
				
			when "1011" => -- AND
				alu_func <= "011";
				alu_sel <= '0';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '0';
				of_strb <= '0';
				pf_strb <= '1';
				sf_strb <= '0';
				zf_strb <= '1';
				pc_sel <= "00";
				rf_dsel <= '0';
				rf_strb <= '1';
				rf_wsel <= '0';
				rf_oe <= '0';
				
			when "1100" => -- OR
				alu_func <= "100";
				alu_sel <= '0';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '0';
				of_strb <= '0';
				pf_strb <= '1';
				sf_strb <= '0';
				zf_strb <= '1';
				pc_sel <= "00";
				rf_dsel <= '0';
				rf_strb <= '1';
				rf_wsel <= '0';
				rf_oe <= '0';
				
			when "1101" => -- NOT
				alu_func <= "101";
				alu_sel <= '0';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '0';
				of_strb <= '0';
				pf_strb <= '0';
				sf_strb <= '0';
				zf_strb <= '1';
				pc_sel <= "00";
				rf_dsel <= '0';
				rf_strb <= '1';
				rf_wsel <= '0';
				rf_oe <= '0';
				
			when "1110" => -- J
				alu_func <= "ZZZ";
				alu_sel <= 'Z';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '0';
				of_strb <= '0';
				pf_strb <= '0';
				sf_strb <= '0';
				zf_strb <= '0';
				pc_sel <= "11"; -- select absolute
				rf_dsel <= 'Z';
				rf_strb <= '0';
				rf_wsel <= 'Z';
				rf_oe <= '0';
				
			when "1111" => -- JR
				alu_func <= "ZZZ";
				alu_sel <= 'Z';
				ram_strb <= '0';
				ram_rw <= 'Z';
				ram_oe <= '0';
				cf_strb <= '0';
				of_strb <= '0';
				pf_strb <= '0';
				sf_strb <= '0';
				zf_strb <= '0';
				pc_sel <= "10"; -- select register
				rf_dsel <= 'Z';
				rf_strb <= '0';
				rf_wsel <= 'Z';
				rf_oe <= '0';
		end case;
	end process;
END
ARCHITECTURE;
