
	
library ieee;
use Ieee.numeric_std.all;
use ieee.std_logic_1164.all;

ENTITY CPU IS
	PORT(
		clk : in std_logic;
		clr : in std_logic;
	
		ram_data : inout std_logic_vector (15 downto 0);
		rom_addr : out std_logic_vector (15 downto 0);
		
		-- Seven segment outputs
		seg0 : out std_logic_vector (6 downto 0);
		seg1 : out std_logic_vector (6 downto 0);
		seg2 : out std_logic_vector (6 downto 0);
		seg3 : out std_logic_vector (6 downto 0);
		
		--test outputs--
		alu_out : out std_logic_vector (15 downto 0);
		rt_out : out std_logic_vector (15 downto 0);
		rs_out : out std_logic_vector (15 downto 0);
		op : out std_logic;
		rs : out std_logic_vector (2 downto 0);
		rt : out std_logic_vector (2 downto 0);
		rd : out std_logic_vector (2 downto 0);
		imm : out std_logic_vector (5 downto 0);
		file_wsel : out std_logic;
		file_dsel : out std_logic;
		alufunc : out std_logic_vector (2 downto 0);
		aluu_sel : out std_logic;
		pcsel : out std_logic_vector (1 downto 0);
		pc_mux : out std_logic_vector (15 downto 0);
		rf_out_en : out std_logic;
		ram_out_en : out std_logic;
		readwrite : out std_logic;
		shift : out std_logic_vector (2 downto 0);
		ram_mux : out std_logic_vector (15 downto 0);
		
		led : out std_logic
	);
END ENTITY;

ARCHITECTURE behave OF CPU IS

---------------------------------- COMPONENT DECLARATIONS --------------------------------------

COMPONENT ALU IS
	PORT(
		input_bus1 : in std_logic_vector (15 downto 0);
		input_bus2 : in std_logic_vector (15 downto 0);
		funct : in std_logic_vector (2 downto 0);
		shift : in std_logic_vector (2 downto 0);
		
		result : out std_logic_vector (15 downto 0);
		parity : out std_logic;
		carry : out std_logic;
		overflow : out std_logic;
		zero : out std_logic;
		sign : out std_logic
	);
END COMPONENT;

COMPONENT SixteenBitAdder IS
	PORT(
		A : IN std_logic_vector (15 downto 0);
		B : IN std_logic_vector (15 downto 0);
		CARRYIN : IN std_logic;
		CARRYOUT : OUT std_logic;
		SUM : OUT std_logic_vector (15 downto 0)
	);
END COMPONENT;

COMPONENT MUX4to1 IS
	PORT(
		i0	:	in std_logic;
		i1	:	in std_logic;
		i2	:	in std_logic;
		i3	:	in std_logic;
		a0 : in std_logic;
		a1 : in std_logic;
		z	: out std_logic
	);
END COMPONENT;

COMPONENT LeftShifter16bit IS
	PORT(
		A : in std_logic_vector (15 downto 0);
		shamt : in std_logic_vector (3 downto 0);
		O : out std_logic_vector (15 downto 0);
		c : out std_logic
	);
END COMPONENT;

COMPONENT RegFile IS
	PORT(
		clock: IN std_logic;
		ClrN : IN std_logic;
		A_sel : IN std_logic_vector (2 downto 0);
		B_sel : IN std_logic_vector (2 downto 0);
		In_sel : IN std_logic_vector (2 downto 0);
		data_in : IN std_logic_vector (15 downto 0);
		A_out : OUT std_logic_vector (15 downto 0);
		B_out : OUT std_logic_vector (15 downto 0)
	);
END COMPONENT;

COMPONENT IR IS
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
END COMPONENT;

COMPONENT RAM IS
	PORT(
		addr : in std_logic_vector (15 downto 0);
		data : inout std_logic_vector (15 downto 0);
		clk : in std_logic;
		wr_en : in std_logic;
		rd : in std_logic
	);
END COMPONENT;

COMPONENT DFlipFlop IS
	PORT(
		d : in std_logic;
		Clk : in std_logic;
		Clr : in std_logic;
		q2 : out std_logic
	);
END COMPONENT;

COMPONENT PC IS
	PORT(
		clk : in std_logic;
		addr : in std_logic_vector (15 downto 0);
		aout : out std_logic_vector (15 downto 0)
	);
END COMPONENT;

COMPONENT TristateBus IS
	PORT(
		XIN : IN std_logic_vector (15 downto 0);
		control : IN std_logic;
		XOUT : OUT std_logic_vector (15 downto 0)
	);
END COMPONENT;

COMPONENT ROM IS
	PORT(
		addr : in std_logic_vector (15 downto 0);
		data : out std_logic_vector (15 downto 0)
	);
END COMPONENT;

COMPONENT Decoder IS
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
END COMPONENT;

COMPONENT SevenSegment IS
	PORT(
		data_in : in std_logic_vector (3 downto 0);
		seg : out std_logic_vector (6 downto 0)
	);
END COMPONENT;

COMPONENT Clock_Divider IS
	PORT(
		clk, reset : in std_logic;
		clock_out : out std_logic
	);
END COMPONENT;

---------------------------------- SIGNAL DECLARATIONS --------------------------------------

signal sysclk : std_logic;

-- DECODER SIGNALS
signal ir_opcode : std_logic_vector (3 downto 0);
signal ir_rd, ir_rt, ir_rs, ir_shift : std_logic_vector (2 downto 0);
signal ir_address : std_logic_vector (11 downto 0);
signal ir_immediate : std_logic_vector (5 downto 0);

-- REGFILE SIGNALS
signal reg_a_out : std_logic_vector (15 downto 0); -- reg_b_out is the register address signal
signal reg_a : std_logic_vector (15 downto 0); -- enabled by tristate, turns into reg_a_out

-- ALU SIGNALS
signal imm_value : std_logic_vector (15 downto 0);
signal alu_result : std_logic_vector (15 downto 0);
signal alu_parity, alu_sign, alu_overflow, alu_zero, alu_carry : std_logic;

-- FLAG SIGNALS
signal alu_zf, alu_of, alu_cf, alu_sf, alu_pf : std_logic;

-- CONTROL SIGNALS
signal alu_func : std_logic_vector (2 downto 0);
signal alu_sel : std_logic;
signal ram_strb, ram_rw, ram_oe : std_logic;
signal cf_strb, of_strb, pf_strb, sf_strb, zf_strb : std_logic;
signal pc_sel : std_logic_vector (1 downto 0);
signal rf_dsel, rf_strb, rf_wsel, rf_oe : std_logic;

-- PC SIGNALS
signal absolute_address : std_logic_vector (15 downto 0);
signal sequential_address : std_logic_vector (15 downto 0);
signal relative_address : std_logic_vector (15 downto 0);
signal register_address : std_logic_vector (15 downto 0);
signal pc_mux_out, alu_mux_out, ram_mux_out : std_logic_vector (15 downto 0);
signal rf_mux_out : std_logic_vector (2 downto 0);
signal pc_out : std_logic_vector (15 downto 0);

-- ROM SIGNALS
signal rom_data : std_logic_vector (15 downto 0);

-- STROBING LOGIC SIGNALS
signal register_file_strobe : std_logic;
signal cf_flag_strobe : std_logic;
signal pf_flag_strobe : std_logic;
signal sf_flag_strobe : std_logic;
signal zf_flag_strobe : std_logic;
signal of_flag_strobe : std_logic;
signal data_memory_strobe : std_logic;

BEGIN

	register_file_strobe <= not(sysclk) and rf_strb;
	cf_flag_strobe <= not(sysclk) and cf_strb;
	of_flag_strobe <= not(sysclk) and of_strb;
	pf_flag_strobe <= not(sysclk) and pf_strb;
	sf_flag_strobe <= not(sysclk) and sf_strb;
	zf_flag_strobe <= not(sysclk) and zf_strb;
	data_memory_strobe <= not(sysclk) and ram_strb;
	
	rom_addr <= pc_out;
	rf_out_en <= rf_oe;
	ram_out_en <= ram_oe;
	
	-- tests --
	alu_out <= alu_result;
	rt_out <= reg_a_out;
	rs_out <= register_address;
	rs <= ir_rs;
	rt <= ir_rt;
	rd <= ir_rd;
	readwrite <= ram_rw;
	shift <= ir_shift;
	
	file_wsel <= rf_wsel;
	file_dsel <= rf_dsel;
	aluu_sel <= alu_sel;
	alufunc <= alu_func;
	pcsel <= pc_sel;
	pc_mux <= pc_mux_out;
	imm <= ir_immediate;
	
	
	---------------------------------- PORT MAPPING --------------------------------------
	
	CD : Clock_Divider PORT MAP ( clk=>clk, reset=>'0', clock_out=>sysclk );
	--sysclk <= clk;
	
	-- Major components
	ALU0 : ALU PORT MAP ( input_bus1=>register_address, input_bus2=>alu_mux_out, funct=>alu_func, shift=>ir_shift, result=>alu_result,
		parity=>alu_parity, carry=>alu_carry, overflow=>alu_overflow, zero=>alu_zero, sign=>alu_sign );
	IR0 : IR PORT MAP ( clk=>sysclk, instr=>rom_data, ir_immediate=>ir_immediate, ir_address=>ir_address, ir_shift=>ir_shift, 
		ir_rd=>ir_rd, ir_rt=>ir_rt, ir_rs=>ir_rs, ir_opcode=>ir_opcode );
		
	Decode0 : Decoder PORT MAP ( opcode=>ir_opcode, alu_zf=>alu_zf, alu_of=>alu_of, alu_func=>alu_func, alu_sel=>alu_sel, 
		ram_strb=>ram_strb, ram_rw=>ram_rw, ram_oe=>ram_oe, cf_strb=>cf_strb, of_strb=>of_strb, pf_strb=>pf_strb, sf_strb=>sf_strb, 
		zf_strb=>zf_strb, pc_sel=>pc_sel, rf_dsel=>rf_dsel, rf_strb=>rf_strb, rf_wsel=>rf_wsel, rf_oe=>rf_oe );
		
	RF : RegFile PORT MAP ( clock=>register_file_strobe, ClrN=>clr, A_sel=>ir_rt, B_sel=>ir_rs, In_sel=>rf_mux_out, data_in=>ram_mux_out,
		A_out=>reg_a, B_out=>register_address );
	RAM_comp : RAM PORT MAP ( addr=>alu_result, data=>ram_data, clk=>sysclk, wr_en=>ram_rw, rd=>ram_oe );
	ROM_comp : ROM PORT MAP ( addr=>pc_out, data=>rom_data );
	PC_comp : PC PORT MAP ( clk=>sysclk, addr=>pc_mux_out, aout=>pc_out );
	
	-- Tristate Enable Logic
	tri_ram_data_enable : TristateBus PORT MAP ( XIN=>reg_a_out, control=>ram_rw, XOUT=>ram_data );
	tri_rf_enable : TristateBus PORT MAP ( XIN=>reg_a, control=>rf_oe, XOUT=>reg_a_out );
	
	-- PC
	pc_adder1 : SixteenBitAdder PORT MAP ( A=>pc_out, B=>"0000000000000010", CARRYIN=>'0', CARRYOUT=>open, SUM=>sequential_address );
	pc_adder2 : SixteenBitAdder PORT MAP ( A=>sequential_address, B=>std_logic_vector(unsigned(imm_value) sll 1), CARRYIN=>'0', CARRYOUT=>open, SUM=>relative_address );
	absolute_address <= sequential_address(15 downto 12) & std_logic_vector(unsigned(ir_address) sll 1);
	rom_addr <= pc_out;
	
	-- Flags
	zero_FlipFlop : DFlipFlop PORT MAP ( d=>alu_zero, Clk=>zf_flag_strobe, Clr=>clr, q2=>alu_zf);
	overflow_FlipFlop : DFlipFlop PORT MAP ( d=>alu_overflow, Clk=>of_flag_strobe, Clr=>clr, q2=>alu_of);
	carry_FlipFlop : DFlipFlop PORT MAP ( d=>alu_carry, Clk=>cf_flag_strobe, Clr=>clr, q2=>alu_cf);
	sign_FlipFlop : DFlipFlop PORT MAP ( d=>alu_sign, Clk=>sf_flag_strobe, Clr=>clr, q2=>alu_sf);
	parity_FlipFlop : DFlipFlop PORT MAP ( d=>alu_parity, Clk=>pf_flag_strobe, Clr=>clr, q2=>alu_pf);
	
	rom_ss1 : SevenSegment PORT MAP ( data_in=>rom_data(15 downto 12), seg=>seg3 );
	rom_ss2 : SevenSegment PORT MAP ( data_in=>rom_data(11 downto 8), seg=>seg2 );
	rom_ss3 : SevenSegment PORT MAP ( data_in=>rom_data(7 downto 4), seg=>seg1 );
	rom_ss4 : SevenSegment PORT MAP ( data_in=>rom_data(3 downto 0), seg=>seg0 );
	
	---------------------------------- PROCESSES --------------------------------------
	
	process(ram_rw)
	begin
		if (ram_rw='Z') then
			led <= '0';
		elsif (ram_rw='1') then
			led <= '1';
		elsif (ram_rw='0') then
			led <= '1';
		end if;
	end process;
	
	-- Immediate Value Sign Extender
	process(ir_immediate)
	begin
		if (ir_immediate(5)='0') then
			imm_value <= "0000000000" & ir_immediate;
		elsif (ir_immediate(5)='1') then
			imm_value <= "1111111111" & ir_immediate;
		end if;
	end process;
	
	-- PC Multiplexer
	process (pc_sel, absolute_address, sequential_address, relative_address, register_address)
	begin
		case pc_sel is
			when "00" => pc_mux_out<=sequential_address;
			when "01" => pc_mux_out<=relative_address;
			when "10" => pc_mux_out<=register_address;
			when "11" => pc_mux_out<=absolute_address;
			when others => pc_mux_out<="ZZZZZZZZZZZZZZZZ";
		end case;
	end process;
	
	-- Register File Multiplexer
	process (rf_wsel, ir_rd, ir_rt)
	begin
		if (rf_wsel='0') then rf_mux_out<=ir_rd;
		elsif (rf_wsel='1') then rf_mux_out<=ir_rt;
		end if;
	end process;
	
	-- RAM Data Multiplexer
	process (rf_dsel, ram_data, alu_result)
	begin
		if (rf_dsel='0') then ram_mux_out<=alu_result;
		elsif (rf_dsel='1') then ram_mux_out<=ram_data;
		end if;
	end process;
	
	-- ALU Multiplexer
	process (alu_sel, imm_value, reg_a_out)
	begin
		if (alu_sel='0') then alu_mux_out<=reg_a_out;
		elsif (alu_sel='1') then alu_mux_out<=imm_value;
		end if;
	end process;
	
END
ARCHITECTURE;
