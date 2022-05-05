
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY IR IS
	PORT(
		clk : in std_logic;
		instr : in std_logic_vector (15 downto 0);
		
		ir_immediate : out std_logic_vector (5 downto 0);
		ir_address : out std_logic_vector (11 downto 0);
		ir_shift : out std_logic_vector (2 downto 0);
		ir_rd : out std_logic_vector (2 downto 0);
		ir_rt : out std_logic_vector (2 downto 0);
		ir_rs : out std_logic_vector (2 downto 0);
		ir_opcode : out std_logic_vector (3 downto 0)
		);
END ENTITY;

ARCHITECTURE Behavior OF IR IS

COMPONENT Reg IS
	PORT(
		clock: IN std_logic;
		ClrN : IN std_logic;
		D : IN std_logic_vector (15 downto 0);
		Q : OUT std_logic_vector (15 downto 0)
	);
END COMPONENT;

signal reg_out : std_logic_vector (15 downto 0);
signal op : std_logic_vector (3 downto 0);
signal rd, rt, rs, shift : std_logic_vector (2 downto 0);
signal addr : std_logic_vector (11 downto 0);
signal imm : std_logic_vector (5 downto 0);

BEGIN
	r : Reg PORT MAP ( clock=>clk, clrN=>'1', D=>instr, Q=>reg_out );
	
	process(reg_out, op, addr, rs, rt, rd, shift, imm) is
	begin
		op <= reg_out(15 downto 12);
		case op is
			-- J-TYPE
			when "1110" =>
				addr<=reg_out(11 downto 0);
				rs<="ZZZ";
				rt<="ZZZ";
				rd<="ZZZ";
				shift<="ZZZ";
				imm<="ZZZZZZ";
			-- I-TYPE
			when "0000"|"0011"|"0100"|"0101"|"0110"|"0111" => -- 0 or 3 to 7
				rs<=reg_out(11 downto 9);
				rt<=reg_out(8 downto 6);
				imm<=reg_out(5 downto 0);
				shift<="ZZZ";
				rd<="ZZZ";
				addr<="ZZZZZZZZZZZZ";
			-- R-TYPE
			when others =>
				rs<=reg_out(11 downto 9);
				rt<=reg_out(8 downto 6);
				rd<=reg_out(5 downto 3);
				shift<=reg_out(2 downto 0);
				addr<="ZZZZZZZZZZZZ";
				imm<="ZZZZZZ";
		end case;
		ir_immediate <= imm;
		ir_address <= addr;
		ir_shift <= shift;
		ir_rd <= rd;
		ir_rs <= rs;
		ir_rt <= rt;
		ir_opcode <= op;
	end process;
	
END
ARCHITECTURE;
