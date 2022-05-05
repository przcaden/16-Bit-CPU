

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY SixteenBitAdder IS
	PORT(
		A : IN std_logic_vector (15 downto 0);
		B : IN std_logic_vector (15 downto 0);
		CARRYIN : IN std_logic;
		CARRYOUT : OUT std_logic;
		SUM : OUT std_logic_vector (15 downto 0)
		);
END ENTITY;

ARCHITECTURE behave OF SixteenBitAdder IS

COMPONENT FullAdder IS
	PORT (
		X : IN std_logic;
		Y : IN std_logic;
		CIN : IN std_logic;
		SUM0 : OUT std_logic;
		COUT : OUT std_logic
		);
END COMPONENT;

SIGNAL COUT_VECTOR: std_logic_vector (15 downto 0);

BEGIN
	Adder0: FullAdder PORT MAP (X => A(0), Y => B(0), CIN => CARRYIN, SUM0 => SUM(0), COUT => COUT_VECTOR(0));
	Adder1: FullAdder PORT MAP (X => A(1), Y => B(1), CIN => COUT_VECTOR(0), SUM0 => SUM(1), COUT => COUT_VECTOR(1));
	Adder2: FullAdder PORT MAP (X => A(2), Y => B(2), CIN => COUT_VECTOR(1), SUM0 => SUM(2), COUT => COUT_VECTOR(2));
	Adder3: FullAdder PORT MAP (X => A(3), Y => B(3), CIN => COUT_VECTOR(2), SUM0 => SUM(3), COUT => COUT_VECTOR(3));
	Adder4: FullAdder PORT MAP (X => A(4), Y => B(4), CIN => COUT_VECTOR(3), SUM0 => SUM(4), COUT => COUT_VECTOR(4));
	Adder5: FullAdder PORT MAP (X => A(5), Y => B(5), CIN => COUT_VECTOR(4), SUM0 => SUM(5), COUT => COUT_VECTOR(5));
	Adder6: FullAdder PORT MAP (X => A(6), Y => B(6), CIN => COUT_VECTOR(5), SUM0 => SUM(6), COUT => COUT_VECTOR(6));
	Adder7: FullAdder PORT MAP (X => A(7), Y => B(7), CIN => COUT_VECTOR(6), SUM0 => SUM(7), COUT => COUT_VECTOR(7));
	Adder8: FullAdder PORT MAP (X => A(8), Y => B(8), CIN => COUT_VECTOR(7), SUM0 => SUM(8), COUT => COUT_VECTOR(8));
	Adder9: FullAdder PORT MAP (X => A(9), Y => B(9), CIN => COUT_VECTOR(8), SUM0 => SUM(9), COUT => COUT_VECTOR(9));
	Adder10: FullAdder PORT MAP (X => A(10), Y => B(10), CIN => COUT_VECTOR(9), SUM0 => SUM(10), COUT => COUT_VECTOR(10));
	Adder11: FullAdder PORT MAP (X => A(11), Y => B(11), CIN => COUT_VECTOR(10), SUM0 => SUM(11), COUT => COUT_VECTOR(11));
	Adder12: FullAdder PORT MAP (X => A(12), Y => B(12), CIN => COUT_VECTOR(11), SUM0 => SUM(12), COUT => COUT_VECTOR(12));
	Adder13: FullAdder PORT MAP (X => A(13), Y => B(13), CIN => COUT_VECTOR(12), SUM0 => SUM(13), COUT => COUT_VECTOR(13));
	Adder14: FullAdder PORT MAP (X => A(14), Y => B(14), CIN => COUT_VECTOR(13), SUM0 => SUM(14), COUT => COUT_VECTOR(14));
	Adder15: FullAdder PORT MAP (X => A(15), Y => B(15), CIN => COUT_VECTOR(14), SUM0 => SUM(15), COUT => COUT_VECTOR(15));
	
	CARRYOUT <= COUT_VECTOR(15);
END
ARCHITECTURE;