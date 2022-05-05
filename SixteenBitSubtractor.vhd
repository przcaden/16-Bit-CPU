
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY SixteenBitSubtractor IS
	PORT(
		A : IN std_logic_vector (15 downto 0);
		B : IN std_logic_vector (15 downto 0);
		BORROWIN : IN std_logic;
		BORROWOUT : OUT std_logic;
		DIF : OUT std_logic_vector (15 downto 0)
		);
END ENTITY;

ARCHITECTURE behave OF SixteenBitSubtractor IS

COMPONENT FullSubtractor IS
	PORT (
		X : IN std_logic;
		Y : IN std_logic;
		BIN : IN std_logic;
		DIF0 : OUT std_logic;
		BOUT : OUT std_logic
		);
END COMPONENT;

SIGNAL BOUT_VECTOR: std_logic_vector (15 downto 0);

BEGIN
	Adder0: FullSubtractor PORT MAP (X => A(0), Y => B(0), BIN => BORROWIN, DIF0 => DIF(0), BOUT => BOUT_VECTOR(0));
	Adder1: FullSubtractor PORT MAP (X => A(1), Y => B(1), BIN => BOUT_VECTOR(0), DIF0 => DIF(1), BOUT => BOUT_VECTOR(1));
	Adder2: FullSubtractor PORT MAP (X => A(2), Y => B(2), BIN => BOUT_VECTOR(1), DIF0 => DIF(2), BOUT => BOUT_VECTOR(2));
	Adder3: FullSubtractor PORT MAP (X => A(3), Y => B(3), BIN => BOUT_VECTOR(2), DIF0 => DIF(3), BOUT => BOUT_VECTOR(3));
	Adder4: FullSubtractor PORT MAP (X => A(4), Y => B(4), BIN => BOUT_VECTOR(3), DIF0 => DIF(4), BOUT => BOUT_VECTOR(4));
	Adder5: FullSubtractor PORT MAP (X => A(5), Y => B(5), BIN => BOUT_VECTOR(4), DIF0 => DIF(5), BOUT => BOUT_VECTOR(5));
	Adder6: FullSubtractor PORT MAP (X => A(6), Y => B(6), BIN => BOUT_VECTOR(5), DIF0 => DIF(6), BOUT => BOUT_VECTOR(6));
	Adder7: FullSubtractor PORT MAP (X => A(7), Y => B(7), BIN => BOUT_VECTOR(6), DIF0 => DIF(7), BOUT => BOUT_VECTOR(7));
	Adder8: FullSubtractor PORT MAP (X => A(8), Y => B(8), BIN => BOUT_VECTOR(7), DIF0 => DIF(8), BOUT => BOUT_VECTOR(8));
	Adder9: FullSubtractor PORT MAP (X => A(9), Y => B(9), BIN => BOUT_VECTOR(8), DIF0 => DIF(9), BOUT => BOUT_VECTOR(9));
	Adder10: FullSubtractor PORT MAP (X => A(10), Y => B(10), BIN => BOUT_VECTOR(9), DIF0 => DIF(10), BOUT => BOUT_VECTOR(10));
	Adder11: FullSubtractor PORT MAP (X => A(11), Y => B(11), BIN => BOUT_VECTOR(10), DIF0 => DIF(11), BOUT => BOUT_VECTOR(11));
	Adder12: FullSubtractor PORT MAP (X => A(12), Y => B(12), BIN => BOUT_VECTOR(11), DIF0 => DIF(12), BOUT => BOUT_VECTOR(12));
	Adder13: FullSubtractor PORT MAP (X => A(13), Y => B(13), BIN => BOUT_VECTOR(12), DIF0 => DIF(13), BOUT => BOUT_VECTOR(13));
	Adder14: FullSubtractor PORT MAP (X => A(14), Y => B(14), BIN => BOUT_VECTOR(13), DIF0 => DIF(14), BOUT => BOUT_VECTOR(14));
	Adder15: FullSubtractor PORT MAP (X => A(15), Y => B(15), BIN => BOUT_VECTOR(14), DIF0 => DIF(15), BOUT => BOUT_VECTOR(15));
	
	BORROWOUT <= BOUT_VECTOR(15);
END
ARCHITECTURE;
