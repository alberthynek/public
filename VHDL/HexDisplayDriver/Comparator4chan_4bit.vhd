LIBRARY 	ieee;
USE 		ieee.std_logic_1164.all;
USE 		IEEE.NUMERIC_STD.ALL ;		-- include because we use UNSIGNED below


ENTITY Comparator4chan_4bit IS
	PORT(
	   	A, B, C, D				: in unsigned(3 downto 0) ; 			-- 4, 4 bit inputs
	   	Led1, Led2, Led3		: out std_logic 										-- single bit output to LEDs
   );
END;

ARCHITECTURE Behavioural OF Comparator4chan_4bit IS
BEGIN
	PROCESS(A, B, C, D) 						-- process sensitive to changes in these signals
	BEGIN
	
	Led1 <= '0';
	Led2 <= '0';
	Led3 <= '0';
	
	IF (A = B AND A = C AND A = D) THEN
		Led1 <= '1';
	END IF;
		
	IF (A > B AND A > C AND A = D ) THEN
		Led2 <= '1';
	END IF;
	
	IF (A <= B OR (A < C AND A /= D)) THEN
		Led3 <= '1';
	END IF;

	--
	--	Here's what the circuit should do
	--
	-- A = B = C = D 								(turn on Led 1, off otherwise).
	-- A > B and A > C and A = D 				(turn on Led 2, off otherwise).
	-- A <= B or (A < C and A != D)   		(turn on Led 3, off otherwise).

	-- write your code here for the comparator here
	
		
	END PROCESS ;													-- end of the process
END;