LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Timer IS
	PORT(
		Clock : IN STD_LOGIC;
		Load : IN UNSIGNED (1 DOWNTO 0);
		Done : OUT STD_LOGIC
	);
END;

ARCHITECTURE Behavioural OF Timer IS
	SIGNAL Count : UNSIGNED (25 DOWNTO 0);
BEGIN
	PROCESS( Clock )
	BEGIN
		IF ( rising_edge (Clock) ) THEN
			IF ( Load = "11") THEN
					Count <= "10111110101111000001111111";  --counter for 1 second (50 million for 50Mhz clock)
			ELSIF ( Load = "10") THEN
					Count <= "00100110001001011010000000";  --counter for 1/5 second (10 million for 50Mhz clock)
			ElSIF ( Load = "01") THEN
					Count <= "00000001111010000100100000";  --counter for 1/100 second (5 hundred thousand for 50Mhz clock)
			ELSIF ( Count > 0) THEN
					Count <= Count - 1;
			END IF;
		END IF;
	END PROCESS;

	PROCESS ( Count )
	BEGIN
		IF ( Count   = 0 )THEN
			Done <= '1';
		ELSE
			Done <= '0';
		END IF;
	END PROCESS;
END;
	