LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Tape_Counter IS
	PORT(
			Clock, Reset, Increment, Decrement : IN STD_LOGIC;
			hourOut1,hourOut0,minuteOut1,minuteOut0,secondOut1,secondOut0 : OUT UNSIGNED (3 DOWNTO 0)
	);
END;

ARCHITECTURE behavioural OF Tape_Counter IS
		SIGNAL H1,H0,M1,M0,S1,S0 : UNSIGNED (3 DOWNTO 0);
BEGIN
		PROCESS ( Clock )
		BEGIN 
			IF ( rising_edge (Clock)) THEN
				IF(Reset = '0')THEN
					H1 <= "0000";
					H0 <= "0000";
					M1 <= "0000";
					M0 <= "0000";
					S1 <= "0000";
					S0 <= "0000";
				ELSIF ( Increment = '1') THEN
						IF (S1 = "0101" AND S0 = "1001") THEN
							S1 <= "0000";
							S0 <= "0000";
							IF (M1 = "0101" AND M0 = "1001") THEN
								M1 <= "0000";
								M0 <= "0000";
								IF (H1 = "1001" AND S0 = "1001") THEN
									H1 <= "0000";
									H0 <= "0000";
								ELSE
									IF (H0 = "1001") THEN
									H1 <= H1 + 1;
									H0 <= "0000";
									ELSE
									H0 <= H0 + 1;
									END IF;
								END IF;
							ELSE
								IF (M0 = "1001") THEN
								M1 <= M1 + 1;
								M0 <= "0000";
								ELSE
								M0 <= M0 + 1;
								END IF;
							END IF;
						ELSE
							IF (S0 = "1001") THEN
							S1 <= S1 + 1;
							S0 <= "0000";
							ELSE
							S0 <= S0 + 1;
							END IF;
						END IF;
				ELSIF ( Decrement = '1') THEN
						IF (S1 = "0000" AND S0 = "0000") THEN
							S1 <= "0101";
							S0 <= "1001";
							IF (M1 = "0000" AND M0 = "0000") THEN
								M1 <= "0101";
								M0 <= "1001";
								IF (H1 = "0000" AND S0 = "0000") THEN
									H1 <= "1001";
									H0 <= "1001";
								ELSE
									IF (H0 = "0000") THEN
									H1 <= H1 - 1;
									H0 <= "1001";
									ELSE
									H0 <= H0 - 1;
									END IF;
								END IF;
							ELSE
								IF (M0 = "0000") THEN
								M1 <= M1 - 1;
								M0 <= "1001";
								ELSE
								M0 <= M0 - 1;
								END IF;
							END IF;
						ELSE
							IF (S0 = "0000") THEN
							S1 <= S1 - 1;
							S0 <= "1001";
							ELSE
							S0 <= S0 - 1;
							END IF;
						END IF;
				END IF;
			END IF;
		END PROCESS;
		
		HourOut1 <= H1;
		HourOut0 <= H0;
		MinuteOut1 <= M1;
		MinuteOut0 <= M0;
		SecondOut1 <= S1;
		SecondOut0 <= S0;
		
END;
						
						
							