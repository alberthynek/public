LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Mux1from2 IS
	PORT(
		A : IN STD_LOGIC_VECTOR(3 downto 0);
		B : IN STD_LOGIC_VECTOR(3 downto 0);
		Sel : IN STD_LOGIC;
		Output : OUT STD_LOGIC_VECTOR (3 downto 0)
	);
END;

ARCHITECTURE Behavioural OF Mux1from2 IS
BEGIN
	PROCESS (A, B, Sel)
	BEGIN
			IF (Sel = '0') THEN Output <= A;
			ELSE 					  Output <= B;
			END IF;
	END PROCESS;
END;