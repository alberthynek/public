LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY State_Machine IS
	PORT(
		Clock, TapePresent, WriteProtect, EndOfTape, StartOfTape, TimerDone, LCDReady, Play, Pause, Stop, Reset, Rec, FF, RW : IN STD_LOGIC;
		LCDWrite, Increment, Decrement, CountReset, LCDReset : OUT STD_LOGIC;
		LCDMsgNum : OUT UNSIGNED (3 downto 0);
		Load : OUT UNSIGNED (1 downto 0)
	);
END;

ARCHITECTURE behavioural OF State_Machine IS

	CONSTANT STOPPED : UNSIGNED (3 downto 0) := "0001";
	CONSTANT PLAYING : UNSIGNED (3 downto 0) := "0010";
	CONSTANT PAUSED : UNSIGNED (3 downto 0) := "0011";
	CONSTANT RECORDING : UNSIGNED (3 downto 0) := "0100";
	CONSTANT EJECTED : UNSIGNED (3 downto 0) := "0101";
	CONSTANT FASTFWD : UNSIGNED (3 downto 0) := "0110";
	CONSTANT SLOWFWD : UNSIGNED (3 downto 0) := "0111";
	CONSTANT FASTRW : UNSIGNED (3 downto 0) := "1000";
	CONSTANT SLOWRW : UNSIGNED (3 downto 0) := "1001";
	
	SIGNAL Next_State : UNSIGNED (3 downto 0);
	SIGNAL Current_State : UNSIGNED (3 downto 0);

BEGIN

	PROCESS (Clock)
	BEGIN
		IF (rising_edge (Clock) ) THEN
			Current_State <= Next_State;
		END IF;		
	END PROCESS;
	
	
	PROCESS (Current_State, TapePresent, WriteProtect, EndOfTape, StartOfTape, TimerDone, LCDReady, Play, Pause, Stop, Reset, Rec, FF, RW)
	BEGIN	
		 Next_State <= Current_State;
		 Increment <= '0';
		 Decrement <= '0';
		 CountReset <= '1';
		 LCDMsgNum <= Current_State;
		 Load <= "00";
		 LCDWrite <= '0';
		 LCDReset <= '1';
		 
		IF (Current_State /= Next_State) THEN
			LCDReset <= '0';
		END IF;
		
		IF (Reset = '0') THEN
			CountReset <= '0';
		END IF;
		
		IF (TapePresent = '0') THEN
			Next_State <= EJECTED;
		END IF;
		 
		IF (Current_State = EJECTED) THEN
			IF (TapePresent = '1') THEN
				Next_State <= STOPPED;
			END IF;
		CountReset <= '0';
		
		ELSIF (Current_State = STOPPED) THEN
			IF (Play = '1' AND EndOfTape = '0') THEN
				Next_State <= PLAYING;
			ELSIF (FF = '1' AND EndOfTape = '0') THEN
				Next_State <= FASTFWD;
			ELSIF (RW = '1' AND StartOfTape = '0') THEN
				Next_State <= FASTRW;
			ELSIF (Rec = '1' AND WriteProtect = '0' AND EndOfTape = '0') THEN
				Next_State <= RECORDING;
			END IF;
		
		ELSIF (Current_State = PLAYING) THEN
			IF (Stop = '1' OR EndOfTape = '1') THEN
				Next_State <= STOPPED;
			ELSIF (Pause = '1') THEN
				Next_State <= PAUSED;
			ELSIF (FF = '1') THEN
				Next_State <= SLOWFWD;
			ELSIF (RW = '1') THEN
				Next_State <= SLOWRW;
			END IF;
			IF (TimerDone = '1') THEN
				load <= "11";
				increment <= '1';
			ELSE
				load <= "00";
				increment <= '0';
			END IF;
		
		ELSIF (Current_State = PAUSED) THEN
			IF (Play = '1') THEN
				Next_State <= PLAYING;
			ELSIF (Stop = '1') THEN
				Next_State <= STOPPED;
			ELSIF (FF = '1') THEN
				Next_State <= SLOWFWD;
			ELSIF (RW = '1') THEN
				Next_State <= SLOWRW;
			END IF;
			
		ELSIF (Current_State = RECORDING) THEN
			IF ( Stop = '1' OR EndOfTape = '1' ) THEN
				Next_State <= STOPPED;
			END IF;
			IF (TimerDone = '1') THEN
				load <= "11";
				increment <= '1';
			ELSE
				load <= "00";
				increment <= '0';
			END IF;
		
		ELSIF (Current_State = FASTFWD) THEN
			IF (Stop = '1' OR EndOfTape = '1') THEN
				Next_State <= STOPPED;
			ELSIF (Play = '1') THEN 
				Next_State <= PLAYING;
			ELSIF (RW = '1') THEN
				Next_State <= FASTRW;
			END IF;
			IF (TimerDone = '1') THEN
				load <= "01";
				increment <= '1';
			ELSE
				load <= "00";
				increment <= '0';
			END IF;
		
		ELSIF (Current_State = FASTRW) THEN
			IF (Stop = '1') THEN
				Next_State <= STOPPED;
			ELSIF (Play = '1') THEN 
				Next_State <= PLAYING;
			ELSIF (FF = '1') THEN
				Next_State <= FASTFWD;
			END IF;
			IF (StartOfTape = '1') THEN
				Next_State <= STOPPED;
				CountReset <= '0';
			END IF;
			IF (TimerDone = '1') THEN
				load <= "01";
				decrement <= '1';
			ELSE
				load <= "00";
				decrement <= '0';
			END IF;
			
		ELSIF (Current_State = SLOWFWD) THEN
			IF (Stop = '1' OR EndOfTape = '1') THEN
				Next_State <= STOPPED;
			ELSIF (Play = '1') THEN 
				Next_State <= PLAYING;
			ELSIF (Pause = '1') THEN 
				Next_State <= PAUSED;
			ELSIF (RW = '1') THEN
				Next_State <= SLOWRW;
			END IF;
			IF (TimerDone = '1') THEN
				load <= "10";
				increment <= '1';
			ELSE
				load <= "00";
				increment <= '0';
			END IF;
		
		ELSIF (Current_State = SLOWRW) THEN
			IF (Stop = '1') THEN
				Next_State <= STOPPED;
			ELSIF (Play = '1') THEN 
				Next_State <= PLAYING;
			ELSIF (Pause = '1') THEN 
				Next_State <= PAUSED;
			ELSIF (FF = '1') THEN
				Next_State <= SLOWFWD;
			END IF;
			IF (StartOfTape = '1') THEN
				Next_State <= STOPPED;
				CountReset <= '0';
			END IF;
			IF (TimerDone = '1') THEN
				load <= "10";
				decrement <= '1';
			ELSE
				load <= "00";
				decrement <= '0';
			END IF;
			
			
			
			
			
			
		
		END IF;
				
	END PROCESS;
	
END;
		 
