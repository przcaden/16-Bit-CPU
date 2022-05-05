	
library ieee;
use Ieee.numeric_std.all;
use ieee.std_logic_1164.all;

ENTITY ALU IS
	PORT(
		input_bus1 : in std_logic_vector (15 downto 0);
		input_bus2 : in std_logic_vector (15 downto 0);
		funct : in std_logic_vector (2 downto 0);
		shift : in std_logic_vector (2 downto 0);
		
		result : out std_logic_vector (15 downto 0);
		parity : out std_logic;
		carry : out std_logic := '0';
		overflow : out std_logic;
		zero : out std_logic;
		sign : out std_logic
	);
END ENTITY;

ARCHITECTURE behave OF ALU IS

COMPONENT SixteenBitAdder IS
	PORT(
		A : IN std_logic_vector (15 downto 0);
		B : IN std_logic_vector (15 downto 0);
		CARRYIN : IN std_logic;
		CARRYOUT : OUT std_logic;
		SUM : OUT std_logic_vector (15 downto 0)
	);
END COMPONENT;

COMPONENT SixteenBitSubtractor IS
	PORT(
		A : IN std_logic_vector (15 downto 0);
		B : IN std_logic_vector (15 downto 0);
		BORROWIN : IN std_logic;
		BORROWOUT : OUT std_logic;
		DIF : OUT std_logic_vector (15 downto 0)
	);
END COMPONENT;

COMPONENT RightShifter16bit IS
	PORT(
		A : in std_logic_vector (15 downto 0);
		shamt : in std_logic_vector (2 downto 0);
		O : out std_logic_vector (15 downto 0);
		c : out std_logic
	);
END COMPONENT;

COMPONENT LeftShifter16bit IS
	PORT(
		A : in std_logic_vector (15 downto 0);
		shamt : in std_logic_vector (2 downto 0);
		O : out std_logic_vector (15 downto 0);
		c : out std_logic
	);
END COMPONENT;

COMPONENT TristateBus IS
	PORT(
		XIN : IN std_logic_vector (15 downto 0);
		control : IN std_logic;
		XOUT : OUT std_logic_vector (15 downto 0)
	);
END COMPONENT;

COMPONENT TristateBus3bit IS
	PORT(
		XIN : IN std_logic_vector (2 downto 0);
		control : IN std_logic;
		XOUT : OUT std_logic_vector (2 downto 0)
	);
END COMPONENT;

COMPONENT Tristate IS
	PORT(
		XIN : IN std_logic;
		control : IN std_logic;
		XOUT : OUT std_logic
	);
END COMPONENT;

-- DECODER SIGNALS
signal add : std_logic;
signal sub : std_logic;
signal slt : std_logic; -- set on less than
signal andl : std_logic; -- and logical
signal orl : std_logic; -- or logical
signal notl : std_logic; -- not logical
signal sl : std_logic; -- shift left
signal sr : std_logic; -- shift right

-- ADD FUNCTION SIGNALS
signal a_add : std_logic_vector (15 downto 0);
signal b_add : std_logic_vector (15 downto 0);
-- SUB FUNCTION SIGNALS
signal a_sub : std_logic_vector (15 downto 0);
signal b_sub : std_logic_vector (15 downto 0);
-- SLT FUNCTION SIGNALS
signal a_slt : std_logic_vector (15 downto 0);
signal b_slt : std_logic_vector (15 downto 0);
-- AND FUNCTION SIGNALS
signal a_and : std_logic_vector (15 downto 0);
signal b_and : std_logic_vector (15 downto 0);
-- OR FUNCTION SIGNALS
signal a_or : std_logic_vector (15 downto 0);
signal b_or : std_logic_vector (15 downto 0);
-- NOT FUNCTION SIGNALS
signal a_not : std_logic_vector (15 downto 0);
-- LEFT SHIFT FUNCTION SIGNALS
signal a_sll : std_logic_vector (15 downto 0);
signal sll_shamt : std_logic_vector (2 downto 0);
-- RIGHT SHIFT FUNCTION SIGNALS
signal a_srl : std_logic_vector (15 downto 0);
signal srl_shamt : std_logic_vector (2 downto 0);

-- OUTPUT SIGNALS
signal add_out : std_logic_vector (15 downto 0);
signal add_carry : std_logic;
signal sub_out : std_logic_vector (15 downto 0);
signal sub_carry : std_logic;
signal slt_out : std_logic_vector (15 downto 0);
signal and_out : std_logic_vector (15 downto 0);
signal or_out : std_logic_vector (15 downto 0);
signal not_out : std_logic_vector (15 downto 0);
signal sll_out : std_logic_vector (15 downto 0);
signal sll_carry : std_logic;
signal srl_out : std_logic_vector (15 downto 0);
signal srl_carry : std_logic;
signal result_sig : std_logic_vector (15 downto 0);
signal carry_sig : std_logic;

BEGIN
	-- Decoder signal logic
	add <= not(funct(2)) and not(funct(1)) and not(funct(0));
	sub <= not(funct(2)) and not(funct(1)) and funct(0);
	slt <= not(funct(2)) and funct(1) and not(funct(0));
	andl <= not(funct(2)) and funct(1) and funct(0);
	orl <= funct(2) and not(funct(1)) and not(funct(0));
	notl <= funct(2) and not(funct(1)) and funct(0);
	sl <= funct(2) and funct(1) and not(funct(0));
	sr <= funct(2) and funct(1) and funct(0);
	
	-- Tristate buffers to enable inputs
	tri_add_a : TristateBus PORT MAP ( XIN=>input_bus1, control=>add, XOUT=>a_add );
	tri_add_b : TristateBus PORT MAP ( XIN=>input_bus2, control=>sub, XOUT=>b_add );
	
	tri_sub_a : TristateBus PORT MAP ( XIN=>input_bus1, control=>sub, XOUT=>a_sub );
	tri_sub_b : TristateBus PORT MAP ( XIN=>input_bus2, control=>sub, XOUT=>b_sub );
	
	tri_slt_a : TristateBus PORT MAP ( XIN=>input_bus1, control=>slt, XOUT=>a_slt );
	tri_slt_b : TristateBus PORT MAP ( XIN=>input_bus2, control=>slt, XOUT=>b_slt );

	tri_and_a : TristateBus PORT MAP ( XIN=>input_bus1, control=>andl, XOUT=>a_and );
	tri_and_b : TristateBus PORT MAP ( XIN=>input_bus2, control=>andl, XOUT=>b_and );
	
	tri_or_a : TristateBus PORT MAP ( XIN=>input_bus1, control=>orl, XOUT=>a_or );
	tri_or_b : TristateBus PORT MAP ( XIN=>input_bus2, control=>orl, XOUT=>b_or );
	
	tri_not : TristateBus PORT MAP ( XIN=>input_bus1, control=>notl, XOUT=>a_not );
	
	tri_sll : TristateBus PORT MAP ( XIN=>input_bus1, control=>sl, XOUT=>a_sll );
	tri_sll_sh : TristateBus3bit PORT MAP ( XIN=>shift, control=>sl, XOUT=>sll_shamt );
	tri_srl : TristateBus PORT MAP ( XIN=>input_bus1, control=>sr, XOUT=>a_srl );
	tri_srl_sh : TristateBus3bit PORT MAP ( XIN=>shift, control=>sr, XOUT=>srl_shamt );
	
	-- Arithmetic components
	adder : SixteenBitAdder PORT MAP ( A=>a_add, B=>b_add, CARRYIN=>'0', CARRYOUT=>add_carry, SUM=>add_out );
	subtractor : SixteenBitSubtractor PORT MAP ( A=>a_sub, B=>b_sub, BORROWIN=>'0', BORROWOUT=>sub_carry, DIF=>sub_out );
	setOnLessThan : SixteenBitSubtractor PORT MAP ( A=>a_slt, B=>b_slt, BORROWIN=>'0', BORROWOUT=>open, DIF=>slt_out );
	
	and_out <= a_and and b_and;
	or_out <= a_or or b_or;
	not_out <= not a_not;
	
	rshifter : RightShifter16bit PORT MAP ( A=>a_srl, shamt=>sll_shamt, O=>srl_out, c=>srl_carry );
	lshifter : LeftShifter16bit PORT MAP ( A=>a_sll, shamt=>srl_shamt, O=>sll_out, c=>sll_carry );
	
	-- Tristate buffers to enable outputs
	tri_add_out : TristateBus PORT MAP ( XIN=>add_out, control=>add, XOUT=>result_sig);
	tri_add_c : Tristate PORT MAP ( XIN=>add_carry, control=>add, XOUT=>carry_sig);
	
	tri_sub_out : TristateBus PORT MAP ( XIN=>sub_out, control=>sub, XOUT=>result_sig);
	tri_sub_c : Tristate PORT MAP ( XIN=>sub_carry, control=>sub, XOUT=>carry_sig);
	
	tri_slt_out : TristateBus PORT MAP ( XIN=>"000000000000000"&slt_out(15), control=>slt, XOUT=>result_sig);
	tri_slt_c : Tristate PORT MAP ( XIN=>'0', control=>slt, XOUT=>carry_sig);
	
	tri_and_out : TristateBus PORT MAP ( XIN=>and_out, control=>andl, XOUT=>result_sig);
	tri_and_c : Tristate PORT MAP ( XIN=>'0', control=>andl, XOUT=>carry_sig);
	
	tri_or_out : TristateBus PORT MAP ( XIN=>or_out, control=>orl, XOUT=>result_sig);
	tri_or_c : Tristate PORT MAP ( XIN=>'0', control=>orl, XOUT=>carry_sig);
	
	tri_not_out : TristateBus PORT MAP ( XIN=>not_out, control=>notl, XOUT=>result_sig);
	tri_not_c : Tristate PORT MAP ( XIN=>'0', control=>notl, XOUT=>carry_sig);
	
	tri_sll_out : TristateBus PORT MAP ( XIN=>sll_out, control=>sl, XOUT=>result_sig);
	tri_sll_c : Tristate PORT MAP ( XIN=>sll_carry, control=>sl, XOUT=>carry_sig);
	
	tri_srl_out : TristateBus PORT MAP ( XIN=>srl_out, control=>sr, XOUT=>result_sig);
	tri_srl_c : Tristate PORT MAP ( XIN=>srl_carry, control=>sr, XOUT=>carry_sig);
	
	-- Outputs
	result <= result_sig;
	carry <= carry_sig;
	parity <= not( result_sig(15) xor result_sig(14) xor result_sig(13) xor result_sig(12) xor result_sig(11) xor result_sig(10)
		 xor result_sig(9) xor result_sig(8) xor result_sig(7) xor result_sig(6) xor result_sig(5) xor result_sig(4)
		 xor result_sig(3) xor result_sig(2) xor result_sig(1) xor result_sig(0) );
	overflow <= (add or sub) and carry_sig;
	zero <= '1' when result_sig="0000000000000000" else '0';
	sign <= result_sig(15);
	
END
ARCHITECTURE;
