LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY NineComplement IS 
PORT (
	A : IN STD_LOGIC_VECTOR(3 downto 0);
	X : OUT STD_LOGIC_VECTOR(3 downto 0)
	);
END ;

ARCHITECTURE Behavioral OF NineComplement IS
BEGIN
	PROCESS (A)
	BEGIN
			IF (A = "0000") THEN X <= "1001";
			ELSIF (A = "0001") THEN X <= "1000";
			ELSIF (A = "0010") THEN X <= "0111";
			ELSIF (A = "0011") THEN X <= "0110";
			ELSIF (A = "0100") THEN X <= "0101";
			ELSIF (A = "0101") THEN X <= "0100";
			ELSIF (A = "0110") THEN X <= "0011";
			ELSIF (A = "0111") THEN X <= "0010";
			ELSIF (A = "1000") THEN X <= "0001";
			ELSE X <= "0000";
			END IF;
	END PROCESS;
END;