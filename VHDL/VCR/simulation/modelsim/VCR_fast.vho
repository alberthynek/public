-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "10/23/2013 23:46:58"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VCR IS
    PORT (
	LCD_ON_DE2 : OUT std_logic;
	Clock : IN std_logic;
	TapePresent : IN std_logic;
	WriteProtect : IN std_logic;
	EndOfTape : IN std_logic;
	StartOfTape : IN std_logic;
	Play : IN std_logic;
	Pause : IN std_logic;
	Stop : IN std_logic;
	Reset : IN std_logic;
	Rec : IN std_logic;
	FF : IN std_logic;
	RW4 : IN std_logic;
	LCD_BLON_DE2 : OUT std_logic;
	E : OUT std_logic;
	RW : OUT std_logic;
	RS : OUT std_logic;
	DB : OUT std_logic_vector(7 DOWNTO 0);
	H0 : OUT std_logic_vector(6 DOWNTO 0);
	H1 : OUT std_logic_vector(6 DOWNTO 0);
	M0 : OUT std_logic_vector(6 DOWNTO 0);
	M1 : OUT std_logic_vector(6 DOWNTO 0);
	S0 : OUT std_logic_vector(6 DOWNTO 0);
	S1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END VCR;

-- Design Ports Information
-- LCD_ON_DE2	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_BLON_DE2	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RW	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RS	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DB[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DB[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DB[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DB[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DB[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DB[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DB[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DB[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H0[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H0[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H0[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H0[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H0[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H0[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H0[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H1[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H1[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H1[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H1[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H1[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H1[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- H1[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M0[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M0[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M0[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M0[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M0[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M0[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M0[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M1[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M1[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M1[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M1[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M1[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M1[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M1[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TapePresent	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FF	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pause	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Play	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EndOfTape	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Stop	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RW4	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- StartOfTape	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WriteProtect	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Rec	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VCR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LCD_ON_DE2 : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_TapePresent : std_logic;
SIGNAL ww_WriteProtect : std_logic;
SIGNAL ww_EndOfTape : std_logic;
SIGNAL ww_StartOfTape : std_logic;
SIGNAL ww_Play : std_logic;
SIGNAL ww_Pause : std_logic;
SIGNAL ww_Stop : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Rec : std_logic;
SIGNAL ww_FF : std_logic;
SIGNAL ww_RW4 : std_logic;
SIGNAL ww_LCD_BLON_DE2 : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_RW : std_logic;
SIGNAL ww_RS : std_logic;
SIGNAL ww_DB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_H0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_H1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_M0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_M1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst7|inst13~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|inst|Add0~4_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~8_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~9_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~4_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~8_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~4_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~5_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~6_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~8_combout\ : std_logic;
SIGNAL \inst|process_1~0_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~13_combout\ : std_logic;
SIGNAL \inst|Next_State[3]~17_combout\ : std_logic;
SIGNAL \inst|Next_State[3]~20_combout\ : std_logic;
SIGNAL \inst|Next_State[0]~23_combout\ : std_logic;
SIGNAL \inst|Next_State[0]~27_combout\ : std_logic;
SIGNAL \inst|Next_State~31_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~37_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~38_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~39_combout\ : std_logic;
SIGNAL \inst|Next_State~50_combout\ : std_logic;
SIGNAL \inst|Next_State[2]~51_combout\ : std_logic;
SIGNAL \inst|Next_State~52_combout\ : std_logic;
SIGNAL \inst|Next_State[2]~53_combout\ : std_logic;
SIGNAL \inst7|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|inst13~regout\ : std_logic;
SIGNAL \inst7|inst|Current_state~6_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~10_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~2_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~7_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~10_combout\ : std_logic;
SIGNAL \inst1|Equal3~1_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|H0~4_combout\ : std_logic;
SIGNAL \inst2|process_0~5_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|H1~10_combout\ : std_logic;
SIGNAL \inst2|Equal8~2_combout\ : std_logic;
SIGNAL \inst2|Add3~1_combout\ : std_logic;
SIGNAL \inst2|Add3~2_combout\ : std_logic;
SIGNAL \inst2|M1[2]~4_combout\ : std_logic;
SIGNAL \inst2|Add4~0_combout\ : std_logic;
SIGNAL \inst2|Add4~1_combout\ : std_logic;
SIGNAL \inst2|S1~8_combout\ : std_logic;
SIGNAL \inst2|S1~10_combout\ : std_logic;
SIGNAL \inst7|inst|timeLCDClk[0]~0_combout\ : std_logic;
SIGNAL \inst1|Count[3]~15_combout\ : std_logic;
SIGNAL \inst1|Count[4]~16_combout\ : std_logic;
SIGNAL \inst1|Count[6]~17_combout\ : std_logic;
SIGNAL \inst1|Count[14]~22_combout\ : std_logic;
SIGNAL \inst1|Count[21]~28_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~17_combout\ : std_logic;
SIGNAL \inst7|inst|timeLCDClk[11]~5_combout\ : std_logic;
SIGNAL \inst7|inst13~0_combout\ : std_logic;
SIGNAL \Rec~combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \inst7|inst13~clkctrl_outclk\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \TapePresent~combout\ : std_logic;
SIGNAL \Play~combout\ : std_logic;
SIGNAL \Stop~combout\ : std_logic;
SIGNAL \FF~combout\ : std_logic;
SIGNAL \inst|Next_State~56_combout\ : std_logic;
SIGNAL \inst|Next_State[2]~57_combout\ : std_logic;
SIGNAL \inst|Next_State[2]~58_combout\ : std_logic;
SIGNAL \WriteProtect~combout\ : std_logic;
SIGNAL \EndOfTape~combout\ : std_logic;
SIGNAL \inst|process_1~1_combout\ : std_logic;
SIGNAL \StartOfTape~combout\ : std_logic;
SIGNAL \inst|Next_State~45_combout\ : std_logic;
SIGNAL \inst|Next_State~54_combout\ : std_logic;
SIGNAL \inst|Next_State[2]~55_combout\ : std_logic;
SIGNAL \inst|Next_State~46_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~40_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~41_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~9_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~42_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~43_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~44_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~61_combout\ : std_logic;
SIGNAL \inst|Equal9~1_combout\ : std_logic;
SIGNAL \inst|Next_State~47_combout\ : std_logic;
SIGNAL \inst|Next_State[2]~59_combout\ : std_logic;
SIGNAL \inst|Next_State[2]~60_combout\ : std_logic;
SIGNAL \inst|Next_State[2]~48_combout\ : std_logic;
SIGNAL \inst|Next_State[2]~49_combout\ : std_logic;
SIGNAL \inst|Next_State[2]~62_combout\ : std_logic;
SIGNAL \inst|Next_State[0]~25_combout\ : std_logic;
SIGNAL \inst|Next_State~24_combout\ : std_logic;
SIGNAL \inst|Next_State~26_combout\ : std_logic;
SIGNAL \inst|Next_State[0]~63_combout\ : std_logic;
SIGNAL \inst|Next_State[3]~11_combout\ : std_logic;
SIGNAL \inst|Next_State[0]~12_combout\ : std_logic;
SIGNAL \inst|Next_State[0]~28_combout\ : std_logic;
SIGNAL \inst|Next_State[0]~29_combout\ : std_logic;
SIGNAL \RW4~combout\ : std_logic;
SIGNAL \inst|Next_State~33_combout\ : std_logic;
SIGNAL \Pause~combout\ : std_logic;
SIGNAL \inst|Next_State~16_combout\ : std_logic;
SIGNAL \inst|Next_State~30_combout\ : std_logic;
SIGNAL \inst|Next_State[0]~32_combout\ : std_logic;
SIGNAL \inst|Next_State[0]~34_combout\ : std_logic;
SIGNAL \inst|Next_State[0]~35_combout\ : std_logic;
SIGNAL \inst|Next_State[0]~36_combout\ : std_logic;
SIGNAL \inst|Next_State[3]~18_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~2_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~3_combout\ : std_logic;
SIGNAL \inst|Next_State[3]~19_combout\ : std_logic;
SIGNAL \inst|Next_State[3]~21_combout\ : std_logic;
SIGNAL \inst|Next_State[3]~22_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~10_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~14_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~4_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~5_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~6_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~7_combout\ : std_logic;
SIGNAL \inst|Next_State[1]~15_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~5_combout\ : std_logic;
SIGNAL \inst7|inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~1_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~0_combout\ : std_logic;
SIGNAL \inst7|inst1|Char_Count[0]~5_combout\ : std_logic;
SIGNAL \inst7|inst1|CounterReset~0_combout\ : std_logic;
SIGNAL \inst7|inst1|Char_Count[4]~11_combout\ : std_logic;
SIGNAL \inst7|inst1|AddressOut~0_combout\ : std_logic;
SIGNAL \inst7|inst1|Char_Count[0]~6\ : std_logic;
SIGNAL \inst7|inst1|Char_Count[1]~7_combout\ : std_logic;
SIGNAL \inst7|inst1|Char_Count[1]~8\ : std_logic;
SIGNAL \inst7|inst1|Char_Count[2]~10\ : std_logic;
SIGNAL \inst7|inst1|Char_Count[3]~12_combout\ : std_logic;
SIGNAL \inst7|inst1|Char_Count[3]~13\ : std_logic;
SIGNAL \inst7|inst1|Char_Count[4]~14_combout\ : std_logic;
SIGNAL \inst7|inst1|Char_Count[2]~9_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~2_combout\ : std_logic;
SIGNAL \inst7|inst1|AddressOut[8]~2_combout\ : std_logic;
SIGNAL \inst7|inst1|AddressOut[7]~4_combout\ : std_logic;
SIGNAL \inst7|inst1|AddressOut[6]~3_combout\ : std_logic;
SIGNAL \inst7|inst1|AddressOut[5]~1_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~11_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~7_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~8_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~9_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~10_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~12_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~5_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~5_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~6_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~13_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~14_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~16_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~17_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux5~15_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~15_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~19_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~2_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~3_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~4_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~6_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~7_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~12_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~10_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~9_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~11_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~13_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~14_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~16_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~3_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~8_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~9_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~10_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~6_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~4_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~5_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~7_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~11_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~15_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~13_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~12_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~14_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~16_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~18_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux2~19_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux0~2_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~6_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~16_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~2_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~1_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~3_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~10_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~8_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~7_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~9_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~11_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~12_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~13_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux7~14_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~11_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~12_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~2_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~15_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~3_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~4_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~5_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~6_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~7_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~9_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~10_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~13_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux6~14_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal5~2_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal5~3_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~3_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~8_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~9_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~12_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~13_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~3_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~17_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~4_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~5_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~10_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~7_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~8_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~9_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~11_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~12_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~14_combout\ : std_logic;
SIGNAL \inst7|inst1|Equal5~1_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~11_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~13_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~17_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux3~15_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~4_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~5_combout\ : std_logic;
SIGNAL \inst7|inst1|Current_state~6_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~7_combout\ : std_logic;
SIGNAL \inst7|inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~8_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~9_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~11_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~12_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~1_cout\ : std_logic;
SIGNAL \inst7|inst|Add0~2_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~3\ : std_logic;
SIGNAL \inst7|inst|Add0~5\ : std_logic;
SIGNAL \inst7|inst|Add0~6_combout\ : std_logic;
SIGNAL \inst7|inst|timeLCDClk[3]~2_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~7\ : std_logic;
SIGNAL \inst7|inst|Add0~8_combout\ : std_logic;
SIGNAL \inst7|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~9\ : std_logic;
SIGNAL \inst7|inst|Add0~10_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~11\ : std_logic;
SIGNAL \inst7|inst|Add0~12_combout\ : std_logic;
SIGNAL \inst7|inst|timeLCDClk[6]~3_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~13\ : std_logic;
SIGNAL \inst7|inst|Add0~14_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~15\ : std_logic;
SIGNAL \inst7|inst|Add0~16_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~17\ : std_logic;
SIGNAL \inst7|inst|Add0~18_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~19\ : std_logic;
SIGNAL \inst7|inst|Add0~20_combout\ : std_logic;
SIGNAL \inst7|inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~21\ : std_logic;
SIGNAL \inst7|inst|Add0~23\ : std_logic;
SIGNAL \inst7|inst|Add0~24_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~25\ : std_logic;
SIGNAL \inst7|inst|Add0~26_combout\ : std_logic;
SIGNAL \inst7|inst|timeLCDClk[13]~6_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~27\ : std_logic;
SIGNAL \inst7|inst|Add0~28_combout\ : std_logic;
SIGNAL \inst7|inst|timeLCDClk[14]~7_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~29\ : std_logic;
SIGNAL \inst7|inst|Add0~30_combout\ : std_logic;
SIGNAL \inst7|inst|timeLCDClk[15]~8_combout\ : std_logic;
SIGNAL \inst7|inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|inst|Add0~31\ : std_logic;
SIGNAL \inst7|inst|Add0~32_combout\ : std_logic;
SIGNAL \inst7|inst|timeLCDClk[16]~1_combout\ : std_logic;
SIGNAL \inst7|inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~0_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~1_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~2_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~4_combout\ : std_logic;
SIGNAL \inst7|inst|Current_state~3_combout\ : std_logic;
SIGNAL \inst7|inst|E~0_combout\ : std_logic;
SIGNAL \inst7|inst1|DataOrCommand~3_combout\ : std_logic;
SIGNAL \inst7|inst1|DataOrCommand~2_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux1~18_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~1_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~6_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~5_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~4_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~7_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~2_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~3_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~8_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~10_combout\ : std_logic;
SIGNAL \inst7|inst2|Mux4~11_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \inst|CountReset~0_combout\ : std_logic;
SIGNAL \inst|CountReset~1_combout\ : std_logic;
SIGNAL \inst|Load[0]~1_combout\ : std_logic;
SIGNAL \inst1|Count[0]~8_combout\ : std_logic;
SIGNAL \inst1|Count[0]~10_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst|Load[1]~0_combout\ : std_logic;
SIGNAL \inst1|Count~18_combout\ : std_logic;
SIGNAL \inst1|Count[18]~25_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|Count[20]~27_combout\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|Count[19]~26_combout\ : std_logic;
SIGNAL \inst1|Equal3~3_combout\ : std_logic;
SIGNAL \inst1|Count~20_combout\ : std_logic;
SIGNAL \inst1|Count[10]~3_combout\ : std_logic;
SIGNAL \inst1|Count~11_combout\ : std_logic;
SIGNAL \inst1|Count[1]~13_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Count[0]~12_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Count[2]~14_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Count[5]~0_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Count[7]~1_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Count[8]~19_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|Count[12]~21_combout\ : std_logic;
SIGNAL \inst1|Count[13]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Count~23_combout\ : std_logic;
SIGNAL \inst1|Equal3~2_combout\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|Equal3~4_combout\ : std_logic;
SIGNAL \inst1|Count[0]~9_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Count[16]~24_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Count[17]~5_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|Count[22]~29_combout\ : std_logic;
SIGNAL \inst1|Add0~45\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst1|Count[23]~30_combout\ : std_logic;
SIGNAL \inst1|Add0~47\ : std_logic;
SIGNAL \inst1|Add0~48_combout\ : std_logic;
SIGNAL \inst1|Count~32_combout\ : std_logic;
SIGNAL \inst1|Add0~49\ : std_logic;
SIGNAL \inst1|Add0~50_combout\ : std_logic;
SIGNAL \inst1|Count[25]~31_combout\ : std_logic;
SIGNAL \inst1|Equal3~5_combout\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Count[9]~2_combout\ : std_logic;
SIGNAL \inst1|Equal3~6_combout\ : std_logic;
SIGNAL \inst1|Equal3~7_combout\ : std_logic;
SIGNAL \inst1|Equal3~8_combout\ : std_logic;
SIGNAL \inst|Decrement~4_combout\ : std_logic;
SIGNAL \inst2|S0~0_combout\ : std_logic;
SIGNAL \inst2|Add11~0_combout\ : std_logic;
SIGNAL \inst|Increment~0_combout\ : std_logic;
SIGNAL \inst|Increment~1_combout\ : std_logic;
SIGNAL \inst2|S0~4_combout\ : std_logic;
SIGNAL \inst2|Add5~0_combout\ : std_logic;
SIGNAL \inst2|S0~5_combout\ : std_logic;
SIGNAL \inst2|S0~6_combout\ : std_logic;
SIGNAL \inst2|S0[2]~3_combout\ : std_logic;
SIGNAL \inst2|S0~8_combout\ : std_logic;
SIGNAL \inst2|Add5~1_combout\ : std_logic;
SIGNAL \inst2|S0~7_combout\ : std_logic;
SIGNAL \inst2|S0~9_combout\ : std_logic;
SIGNAL \inst2|Equal10~0_combout\ : std_logic;
SIGNAL \inst2|S0~1_combout\ : std_logic;
SIGNAL \inst2|S0~2_combout\ : std_logic;
SIGNAL \inst2|Equal10~1_combout\ : std_logic;
SIGNAL \inst2|H1~0_combout\ : std_logic;
SIGNAL \inst2|H1~7_combout\ : std_logic;
SIGNAL \inst2|H1~8_combout\ : std_logic;
SIGNAL \inst2|M0~2_combout\ : std_logic;
SIGNAL \inst2|M0~5_combout\ : std_logic;
SIGNAL \inst2|M0~6_combout\ : std_logic;
SIGNAL \inst2|S1[0]~0_combout\ : std_logic;
SIGNAL \inst2|S1~11_combout\ : std_logic;
SIGNAL \inst2|S1~3_combout\ : std_logic;
SIGNAL \inst2|S1~4_combout\ : std_logic;
SIGNAL \inst2|S1[1]~5_combout\ : std_logic;
SIGNAL \inst2|S1[1]~12_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst2|H0[1]~19_combout\ : std_logic;
SIGNAL \inst2|S1~6_combout\ : std_logic;
SIGNAL \inst2|S1~7_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|H0~7_combout\ : std_logic;
SIGNAL \inst2|M0[2]~4_combout\ : std_logic;
SIGNAL \inst2|M0~9_combout\ : std_logic;
SIGNAL \inst2|M0[0]~0_combout\ : std_logic;
SIGNAL \inst2|M0~10_combout\ : std_logic;
SIGNAL \inst2|Equal8~1_combout\ : std_logic;
SIGNAL \inst2|M0~7_combout\ : std_logic;
SIGNAL \inst2|M0~8_combout\ : std_logic;
SIGNAL \inst2|Equal8~0_combout\ : std_logic;
SIGNAL \inst2|M1~9_combout\ : std_logic;
SIGNAL \inst2|M1~10_combout\ : std_logic;
SIGNAL \inst2|process_0~6_combout\ : std_logic;
SIGNAL \inst2|H0[1]~9_combout\ : std_logic;
SIGNAL \inst2|Add2~2_combout\ : std_logic;
SIGNAL \inst2|M1~6_combout\ : std_logic;
SIGNAL \inst2|Add2~1_combout\ : std_logic;
SIGNAL \inst2|M1~7_combout\ : std_logic;
SIGNAL \inst2|M1[2]~3_combout\ : std_logic;
SIGNAL \inst2|M1[2]~5_combout\ : std_logic;
SIGNAL \inst2|Equal7~0_combout\ : std_logic;
SIGNAL \inst2|H0[1]~6_combout\ : std_logic;
SIGNAL \inst2|M1~8_combout\ : std_logic;
SIGNAL \inst2|Add2~0_combout\ : std_logic;
SIGNAL \inst2|M1~11_combout\ : std_logic;
SIGNAL \inst2|M1~2_combout\ : std_logic;
SIGNAL \inst2|H0~17_combout\ : std_logic;
SIGNAL \inst2|H1[2]~3_combout\ : std_logic;
SIGNAL \inst2|H1[2]~4_combout\ : std_logic;
SIGNAL \inst2|H1~9_combout\ : std_logic;
SIGNAL \inst2|H1~11_combout\ : std_logic;
SIGNAL \inst2|H0~18_combout\ : std_logic;
SIGNAL \inst2|H0~20_combout\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1_combout\ : std_logic;
SIGNAL \inst2|H1~5_combout\ : std_logic;
SIGNAL \inst2|H1~6_combout\ : std_logic;
SIGNAL \inst2|H1~1_combout\ : std_logic;
SIGNAL \inst2|H1~2_combout\ : std_logic;
SIGNAL \inst2|process_0~1_combout\ : std_logic;
SIGNAL \inst2|H0~12_combout\ : std_logic;
SIGNAL \inst2|H0~16_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|H0~13_combout\ : std_logic;
SIGNAL \inst2|H0~15_combout\ : std_logic;
SIGNAL \inst2|H0[1]~8_combout\ : std_logic;
SIGNAL \inst2|H0[1]~10_combout\ : std_logic;
SIGNAL \inst2|H0~2_combout\ : std_logic;
SIGNAL \inst2|H0~3_combout\ : std_logic;
SIGNAL \inst2|H0~5_combout\ : std_logic;
SIGNAL \inst2|H0~11_combout\ : std_logic;
SIGNAL \inst2|H0~14_combout\ : std_logic;
SIGNAL \inst4|Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst4|Segments_g_to_a[5]~1_combout\ : std_logic;
SIGNAL \inst4|Segments_g_to_a[4]~2_combout\ : std_logic;
SIGNAL \inst4|Segments_g_to_a[3]~3_combout\ : std_logic;
SIGNAL \inst4|Segments_g_to_a[2]~4_combout\ : std_logic;
SIGNAL \inst4|Segments_g_to_a[1]~5_combout\ : std_logic;
SIGNAL \inst4|Segments_g_to_a[0]~6_combout\ : std_logic;
SIGNAL \inst3|Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst3|Segments_g_to_a[5]~1_combout\ : std_logic;
SIGNAL \inst3|Segments_g_to_a[4]~2_combout\ : std_logic;
SIGNAL \inst3|Segments_g_to_a[3]~3_combout\ : std_logic;
SIGNAL \inst3|Segments_g_to_a[2]~4_combout\ : std_logic;
SIGNAL \inst3|Segments_g_to_a[1]~5_combout\ : std_logic;
SIGNAL \inst3|Segments_g_to_a[0]~6_combout\ : std_logic;
SIGNAL \inst2|Add3~0_combout\ : std_logic;
SIGNAL \inst2|M0~1_combout\ : std_logic;
SIGNAL \inst2|M0~3_combout\ : std_logic;
SIGNAL \inst6|Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst6|Segments_g_to_a[5]~1_combout\ : std_logic;
SIGNAL \inst6|Segments_g_to_a[4]~2_combout\ : std_logic;
SIGNAL \inst6|Segments_g_to_a[3]~3_combout\ : std_logic;
SIGNAL \inst6|Segments_g_to_a[2]~4_combout\ : std_logic;
SIGNAL \inst6|Segments_g_to_a[1]~5_combout\ : std_logic;
SIGNAL \inst6|Segments_g_to_a[0]~6_combout\ : std_logic;
SIGNAL \inst5|Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst5|Segments_g_to_a[5]~1_combout\ : std_logic;
SIGNAL \inst5|Segments_g_to_a[4]~2_combout\ : std_logic;
SIGNAL \inst5|Segments_g_to_a[3]~3_combout\ : std_logic;
SIGNAL \inst5|Segments_g_to_a[2]~4_combout\ : std_logic;
SIGNAL \inst5|Segments_g_to_a[1]~5_combout\ : std_logic;
SIGNAL \inst5|Segments_g_to_a[0]~6_combout\ : std_logic;
SIGNAL \inst9|Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst9|Segments_g_to_a[5]~1_combout\ : std_logic;
SIGNAL \inst9|Segments_g_to_a[4]~2_combout\ : std_logic;
SIGNAL \inst9|Segments_g_to_a[3]~3_combout\ : std_logic;
SIGNAL \inst9|Segments_g_to_a[2]~4_combout\ : std_logic;
SIGNAL \inst9|Segments_g_to_a[1]~5_combout\ : std_logic;
SIGNAL \inst9|Segments_g_to_a[0]~6_combout\ : std_logic;
SIGNAL \inst2|Add4~2_combout\ : std_logic;
SIGNAL \inst2|S1~9_combout\ : std_logic;
SIGNAL \inst8|Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst8|Segments_g_to_a[5]~1_combout\ : std_logic;
SIGNAL \inst8|Segments_g_to_a[4]~2_combout\ : std_logic;
SIGNAL \inst8|Segments_g_to_a[3]~3_combout\ : std_logic;
SIGNAL \inst8|Segments_g_to_a[2]~4_combout\ : std_logic;
SIGNAL \inst8|Segments_g_to_a[1]~5_combout\ : std_logic;
SIGNAL \inst8|Segments_g_to_a[0]~6_combout\ : std_logic;
SIGNAL \inst2|M1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|M0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|H1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|H0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|inst|timeLCDClk\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst7|inst1|Char_Count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|S1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst7|inst1|Current_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Current_State\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|inst|Current_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|S0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|ALT_INV_inst13~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|ALT_INV_Segments_g_to_a[2]~4_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Segments_g_to_a[2]~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Segments_g_to_a[2]~4_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Segments_g_to_a[2]~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Segments_g_to_a[2]~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Segments_g_to_a[6]~0_combout\ : std_logic;
SIGNAL \inst7|inst1|ALT_INV_DataOrCommand~2_combout\ : std_logic;
SIGNAL \inst7|inst|ALT_INV_E~0_combout\ : std_logic;

BEGIN

LCD_ON_DE2 <= ww_LCD_ON_DE2;
ww_Clock <= Clock;
ww_TapePresent <= TapePresent;
ww_WriteProtect <= WriteProtect;
ww_EndOfTape <= EndOfTape;
ww_StartOfTape <= StartOfTape;
ww_Play <= Play;
ww_Pause <= Pause;
ww_Stop <= Stop;
ww_Reset <= Reset;
ww_Rec <= Rec;
ww_FF <= FF;
ww_RW4 <= RW4;
LCD_BLON_DE2 <= ww_LCD_BLON_DE2;
E <= ww_E;
RW <= ww_RW;
RS <= ww_RS;
DB <= ww_DB;
H0 <= ww_H0;
H1 <= ww_H1;
M0 <= ww_M0;
M1 <= ww_M1;
S0 <= ww_S0;
S1 <= ww_S1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst7|inst13~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst7|inst13~regout\);

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);
\inst7|ALT_INV_inst13~clkctrl_outclk\ <= NOT \inst7|inst13~clkctrl_outclk\;
\inst8|ALT_INV_Segments_g_to_a[2]~4_combout\ <= NOT \inst8|Segments_g_to_a[2]~4_combout\;
\inst8|ALT_INV_Segments_g_to_a[6]~0_combout\ <= NOT \inst8|Segments_g_to_a[6]~0_combout\;
\inst9|ALT_INV_Segments_g_to_a[6]~0_combout\ <= NOT \inst9|Segments_g_to_a[6]~0_combout\;
\inst5|ALT_INV_Segments_g_to_a[2]~4_combout\ <= NOT \inst5|Segments_g_to_a[2]~4_combout\;
\inst5|ALT_INV_Segments_g_to_a[6]~0_combout\ <= NOT \inst5|Segments_g_to_a[6]~0_combout\;
\inst6|ALT_INV_Segments_g_to_a[2]~4_combout\ <= NOT \inst6|Segments_g_to_a[2]~4_combout\;
\inst6|ALT_INV_Segments_g_to_a[6]~0_combout\ <= NOT \inst6|Segments_g_to_a[6]~0_combout\;
\inst3|ALT_INV_Segments_g_to_a[2]~4_combout\ <= NOT \inst3|Segments_g_to_a[2]~4_combout\;
\inst3|ALT_INV_Segments_g_to_a[6]~0_combout\ <= NOT \inst3|Segments_g_to_a[6]~0_combout\;
\inst4|ALT_INV_Segments_g_to_a[2]~4_combout\ <= NOT \inst4|Segments_g_to_a[2]~4_combout\;
\inst4|ALT_INV_Segments_g_to_a[6]~0_combout\ <= NOT \inst4|Segments_g_to_a[6]~0_combout\;
\inst7|inst1|ALT_INV_DataOrCommand~2_combout\ <= NOT \inst7|inst1|DataOrCommand~2_combout\;
\inst7|inst|ALT_INV_E~0_combout\ <= NOT \inst7|inst|E~0_combout\;

-- Location: LCCOMB_X28_Y17_N20
\inst7|inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~4_combout\ = (\inst7|inst|timeLCDClk\(2) & ((GND) # (!\inst7|inst|Add0~3\))) # (!\inst7|inst|timeLCDClk\(2) & (\inst7|inst|Add0~3\ $ (GND)))
-- \inst7|inst|Add0~5\ = CARRY((\inst7|inst|timeLCDClk\(2)) # (!\inst7|inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|timeLCDClk\(2),
	datad => VCC,
	cin => \inst7|inst|Add0~3\,
	combout => \inst7|inst|Add0~4_combout\,
	cout => \inst7|inst|Add0~5\);

-- Location: LCCOMB_X28_Y16_N6
\inst7|inst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~22_combout\ = (\inst7|inst|timeLCDClk\(11) & (!\inst7|inst|Add0~21\)) # (!\inst7|inst|timeLCDClk\(11) & (\inst7|inst|Add0~21\ & VCC))
-- \inst7|inst|Add0~23\ = CARRY((\inst7|inst|timeLCDClk\(11) & !\inst7|inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|timeLCDClk\(11),
	datad => VCC,
	cin => \inst7|inst|Add0~21\,
	combout => \inst7|inst|Add0~22_combout\,
	cout => \inst7|inst|Add0~23\);

-- Location: LCCOMB_X36_Y10_N8
\inst1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|Count\(1) & (\inst1|Add0~1\ & VCC)) # (!\inst1|Count\(1) & (!\inst1|Add0~1\))
-- \inst1|Add0~3\ = CARRY((!\inst1|Count\(1) & !\inst1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X36_Y10_N12
\inst1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|Count\(3) & (\inst1|Add0~5\ & VCC)) # (!\inst1|Count\(3) & (!\inst1|Add0~5\))
-- \inst1|Add0~7\ = CARRY((!\inst1|Count\(3) & !\inst1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X36_Y10_N14
\inst1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|Count\(4) & ((GND) # (!\inst1|Add0~7\))) # (!\inst1|Count\(4) & (\inst1|Add0~7\ $ (GND)))
-- \inst1|Add0~9\ = CARRY((\inst1|Count\(4)) # (!\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X36_Y10_N18
\inst1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|Count\(6) & ((GND) # (!\inst1|Add0~11\))) # (!\inst1|Count\(6) & (\inst1|Add0~11\ $ (GND)))
-- \inst1|Add0~13\ = CARRY((\inst1|Count\(6)) # (!\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X36_Y10_N26
\inst1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|Count\(10) & ((GND) # (!\inst1|Add0~19\))) # (!\inst1|Count\(10) & (\inst1|Add0~19\ $ (GND)))
-- \inst1|Add0~21\ = CARRY((\inst1|Count\(10)) # (!\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X36_Y10_N28
\inst1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|Count\(11) & (\inst1|Add0~21\ & VCC)) # (!\inst1|Count\(11) & (!\inst1|Add0~21\))
-- \inst1|Add0~23\ = CARRY((!\inst1|Count\(11) & !\inst1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X36_Y9_N0
\inst1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|Count\(13) & (\inst1|Add0~25\ & VCC)) # (!\inst1|Count\(13) & (!\inst1|Add0~25\))
-- \inst1|Add0~27\ = CARRY((!\inst1|Count\(13) & !\inst1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X36_Y9_N2
\inst1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|Count\(14) & ((GND) # (!\inst1|Add0~27\))) # (!\inst1|Count\(14) & (\inst1|Add0~27\ $ (GND)))
-- \inst1|Add0~29\ = CARRY((\inst1|Count\(14)) # (!\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X36_Y9_N16
\inst1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|Count\(21) & (\inst1|Add0~41\ & VCC)) # (!\inst1|Count\(21) & (!\inst1|Add0~41\))
-- \inst1|Add0~43\ = CARRY((!\inst1|Count\(21) & !\inst1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X32_Y17_N24
\inst7|inst2|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~8_combout\ = (!\inst7|inst1|AddressOut~0_combout\ & ((\inst|Current_State\(2)) # (\inst|Current_State\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|AddressOut~0_combout\,
	datac => \inst|Current_State\(2),
	datad => \inst|Current_State\(0),
	combout => \inst7|inst2|Mux1~8_combout\);

-- Location: LCCOMB_X31_Y15_N22
\inst7|inst2|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~9_combout\ = (!\inst7|inst1|Char_Count\(0) & (\inst7|inst1|Char_Count\(1) & \inst7|inst2|Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst1|Char_Count\(1),
	datad => \inst7|inst2|Mux3~6_combout\,
	combout => \inst7|inst2|Mux4~9_combout\);

-- Location: LCCOMB_X30_Y16_N6
\inst7|inst2|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~4_combout\ = (\inst7|inst1|AddressOut[5]~1_combout\ & (((\inst7|inst1|Char_Count\(1))))) # (!\inst7|inst1|AddressOut[5]~1_combout\ & ((\inst7|inst1|Char_Count\(0) & (\inst7|inst1|Char_Count\(1) $ (!\inst7|inst1|Char_Count\(2)))) # 
-- (!\inst7|inst1|Char_Count\(0) & (!\inst7|inst1|Char_Count\(1) & \inst7|inst1|Char_Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[5]~1_combout\,
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst1|Char_Count\(1),
	datad => \inst7|inst1|Char_Count\(2),
	combout => \inst7|inst2|Mux5~4_combout\);

-- Location: LCCOMB_X31_Y17_N10
\inst7|inst2|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~8_combout\ = (\inst7|inst1|AddressOut[6]~3_combout\ & (!\inst7|inst1|Char_Count\(1) & ((\inst7|inst1|Char_Count\(0)) # (!\inst7|inst1|AddressOut[5]~1_combout\)))) # (!\inst7|inst1|AddressOut[6]~3_combout\ & (\inst7|inst1|Char_Count\(1) $ 
-- (((\inst7|inst1|AddressOut[5]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst1|AddressOut[6]~3_combout\,
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux6~8_combout\);

-- Location: LCCOMB_X32_Y16_N20
\inst7|inst2|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~4_combout\ = (\inst7|inst1|Char_Count\(1) & (((\inst7|inst1|Char_Count\(0))) # (!\inst7|inst1|Char_Count\(2)))) # (!\inst7|inst1|Char_Count\(1) & (\inst7|inst1|AddressOut[5]~1_combout\ & ((\inst7|inst1|Char_Count\(2)) # 
-- (\inst7|inst1|Char_Count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst1|Char_Count\(1),
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux7~4_combout\);

-- Location: LCCOMB_X32_Y16_N6
\inst7|inst2|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~5_combout\ = (!\inst7|inst1|AddressOut[6]~3_combout\ & (\inst7|inst2|Mux7~4_combout\ & !\inst7|inst1|AddressOut[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst2|Mux7~4_combout\,
	datad => \inst7|inst1|AddressOut[7]~4_combout\,
	combout => \inst7|inst2|Mux7~5_combout\);

-- Location: LCCOMB_X32_Y16_N24
\inst7|inst2|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~6_combout\ = (\inst7|inst1|AddressOut[7]~4_combout\ & (\inst7|inst1|AddressOut[5]~1_combout\ & ((\inst7|inst1|Char_Count\(2)) # (\inst7|inst1|Char_Count\(0))))) # (!\inst7|inst1|AddressOut[7]~4_combout\ & (\inst7|inst1|Char_Count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst1|Char_Count\(0),
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux7~6_combout\);

-- Location: LCCOMB_X32_Y15_N30
\inst|Next_State[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~8_combout\ = (!\Play~combout\ & (!\Stop~combout\ & (!\FF~combout\ & !\StartOfTape~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Play~combout\,
	datab => \Stop~combout\,
	datac => \FF~combout\,
	datad => \StartOfTape~combout\,
	combout => \inst|Next_State[1]~8_combout\);

-- Location: LCCOMB_X34_Y16_N16
\inst|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|process_1~0_combout\ = (!\EndOfTape~combout\ & !\Stop~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EndOfTape~combout\,
	datad => \Stop~combout\,
	combout => \inst|process_1~0_combout\);

-- Location: LCCOMB_X34_Y15_N16
\inst|Next_State[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~13_combout\ = (\inst|Current_State\(0) & (((\inst|Next_State[0]~12_combout\ & !\inst|Current_State\(2))))) # (!\inst|Current_State\(0) & ((\inst|process_1~0_combout\) # ((!\inst|Current_State\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~0_combout\,
	datab => \inst|Next_State[0]~12_combout\,
	datac => \inst|Current_State\(0),
	datad => \inst|Current_State\(2),
	combout => \inst|Next_State[1]~13_combout\);

-- Location: LCCOMB_X34_Y15_N6
\inst|Next_State[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[3]~17_combout\ = (!\inst|Current_State\(0) & ((\inst|Current_State\(2) & (\inst|process_1~0_combout\)) # (!\inst|Current_State\(2) & ((\inst|Next_State~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~0_combout\,
	datab => \inst|Next_State~16_combout\,
	datac => \inst|Current_State\(0),
	datad => \inst|Current_State\(2),
	combout => \inst|Next_State[3]~17_combout\);

-- Location: LCCOMB_X35_Y15_N12
\inst|Next_State[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[3]~20_combout\ = (\RW4~combout\ & (!\StartOfTape~combout\ & \inst|Next_State[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RW4~combout\,
	datac => \StartOfTape~combout\,
	datad => \inst|Next_State[3]~11_combout\,
	combout => \inst|Next_State[3]~20_combout\);

-- Location: LCCOMB_X32_Y15_N12
\inst|Next_State[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[0]~23_combout\ = (!\Play~combout\ & (!\FF~combout\ & ((\inst|Current_State\(0)) # (!\TapePresent~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Play~combout\,
	datab => \FF~combout\,
	datac => \inst|Current_State\(0),
	datad => \TapePresent~combout\,
	combout => \inst|Next_State[0]~23_combout\);

-- Location: LCCOMB_X33_Y15_N12
\inst|Next_State[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[0]~27_combout\ = (\inst|Equal9~0_combout\ & ((\inst|Next_State[0]~23_combout\) # ((!\inst|Next_State[0]~25_combout\)))) # (!\inst|Equal9~0_combout\ & (((\inst|Next_State~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State[0]~23_combout\,
	datab => \inst|Next_State[0]~25_combout\,
	datac => \inst|Equal9~0_combout\,
	datad => \inst|Next_State~26_combout\,
	combout => \inst|Next_State[0]~27_combout\);

-- Location: LCCOMB_X33_Y15_N6
\inst|Next_State~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~31_combout\ = (\EndOfTape~combout\) # ((\Stop~combout\) # ((\inst|Current_State\(0)) # (!\TapePresent~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EndOfTape~combout\,
	datab => \Stop~combout\,
	datac => \TapePresent~combout\,
	datad => \inst|Current_State\(0),
	combout => \inst|Next_State~31_combout\);

-- Location: LCCOMB_X32_Y15_N26
\inst|Next_State[1]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~37_combout\ = (!\EndOfTape~combout\ & ((\Play~combout\) # ((\FF~combout\ & !\inst|Current_State\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EndOfTape~combout\,
	datab => \FF~combout\,
	datac => \Play~combout\,
	datad => \inst|Current_State\(1),
	combout => \inst|Next_State[1]~37_combout\);

-- Location: LCCOMB_X32_Y15_N20
\inst|Next_State[1]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~38_combout\ = (\inst|Current_State\(1) & ((\Play~combout\) # ((\FF~combout\ & !\Stop~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Play~combout\,
	datab => \FF~combout\,
	datac => \Stop~combout\,
	datad => \inst|Current_State\(1),
	combout => \inst|Next_State[1]~38_combout\);

-- Location: LCCOMB_X31_Y15_N12
\inst|Next_State[1]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~39_combout\ = (!\inst|Current_State\(3) & (\inst|Next_State[1]~4_combout\ & ((\inst|Next_State[1]~38_combout\) # (\inst|Next_State[1]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(3),
	datab => \inst|Next_State[1]~38_combout\,
	datac => \inst|Next_State[1]~37_combout\,
	datad => \inst|Next_State[1]~4_combout\,
	combout => \inst|Next_State[1]~39_combout\);

-- Location: LCCOMB_X33_Y16_N8
\inst|Next_State~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~50_combout\ = (!\RW4~combout\ & (!\inst|Next_State~45_combout\ & (\inst|process_1~0_combout\ & !\Play~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW4~combout\,
	datab => \inst|Next_State~45_combout\,
	datac => \inst|process_1~0_combout\,
	datad => \Play~combout\,
	combout => \inst|Next_State~50_combout\);

-- Location: LCCOMB_X33_Y16_N26
\inst|Next_State[2]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[2]~51_combout\ = (\inst|Current_State\(0) & (((\inst|Current_State\(1)) # (!\TapePresent~combout\)))) # (!\inst|Current_State\(0) & (\inst|process_1~0_combout\ & ((!\inst|Current_State\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~0_combout\,
	datab => \TapePresent~combout\,
	datac => \inst|Current_State\(0),
	datad => \inst|Current_State\(1),
	combout => \inst|Next_State[2]~51_combout\);

-- Location: LCCOMB_X34_Y16_N30
\inst|Next_State~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~52_combout\ = (!\RW4~combout\ & (!\Play~combout\ & (\inst|Next_State~16_combout\ & !\inst|Next_State~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW4~combout\,
	datab => \Play~combout\,
	datac => \inst|Next_State~16_combout\,
	datad => \inst|Next_State~45_combout\,
	combout => \inst|Next_State~52_combout\);

-- Location: LCCOMB_X33_Y16_N24
\inst|Next_State[2]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[2]~53_combout\ = (\inst|Current_State\(1) & ((\inst|Next_State[2]~51_combout\ & (\inst|Next_State~52_combout\)) # (!\inst|Next_State[2]~51_combout\ & ((\inst|Next_State~50_combout\))))) # (!\inst|Current_State\(1) & 
-- (((\inst|Next_State[2]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(1),
	datab => \inst|Next_State~52_combout\,
	datac => \inst|Next_State~50_combout\,
	datad => \inst|Next_State[2]~51_combout\,
	combout => \inst|Next_State[2]~53_combout\);

-- Location: LCFF_X28_Y17_N21
\inst7|inst|timeLCDClk[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Add0~4_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(2));

-- Location: LCFF_X29_Y16_N29
\inst7|inst|timeLCDClk[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|timeLCDClk[0]~0_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(0));

-- Location: LCCOMB_X28_Y17_N6
\inst7|inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal0~1_combout\ = (!\inst7|inst|timeLCDClk\(5) & (\inst7|inst|timeLCDClk\(6) & (!\inst7|inst|timeLCDClk\(0) & !\inst7|inst|timeLCDClk\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|timeLCDClk\(5),
	datab => \inst7|inst|timeLCDClk\(6),
	datac => \inst7|inst|timeLCDClk\(0),
	datad => \inst7|inst|timeLCDClk\(7),
	combout => \inst7|inst|Equal0~1_combout\);

-- Location: LCFF_X28_Y16_N25
\inst7|inst|timeLCDClk[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|timeLCDClk[11]~5_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(11));

-- Location: LCCOMB_X28_Y16_N22
\inst7|inst|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal0~3_combout\ = (!\inst7|inst|timeLCDClk\(12) & \inst7|inst|timeLCDClk\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst|timeLCDClk\(12),
	datad => \inst7|inst|timeLCDClk\(13),
	combout => \inst7|inst|Equal0~3_combout\);

-- Location: LCFF_X34_Y1_N21
\inst7|inst13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst7|inst13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst13~regout\);

-- Location: LCCOMB_X29_Y15_N20
\inst7|inst|Current_state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~6_combout\ = \inst7|inst1|Current_state\(2) $ (\inst7|inst1|Current_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|Current_state\(2),
	datad => \inst7|inst1|Current_state\(0),
	combout => \inst7|inst|Current_state~6_combout\);

-- Location: LCCOMB_X29_Y16_N20
\inst7|inst|Current_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~10_combout\ = (\inst|Equal0~3_combout\ & ((\inst7|inst|Current_state\(1)) # (\inst7|inst|Current_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Current_state\(1),
	datab => \inst7|inst|Current_state\(2),
	datad => \inst|Equal0~3_combout\,
	combout => \inst7|inst|Current_state~10_combout\);

-- Location: LCCOMB_X31_Y15_N16
\inst7|inst1|Current_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~2_combout\ = (\inst7|inst1|Current_state\(2) & (!\inst7|inst1|Current_state\(1) & (\inst7|inst|Equal2~0_combout\ $ (!\inst7|inst1|Current_state\(0))))) # (!\inst7|inst1|Current_state\(2) & (\inst7|inst1|Current_state\(1) & 
-- ((\inst7|inst1|Current_state\(0)) # (!\inst7|inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(2),
	datab => \inst7|inst|Equal2~0_combout\,
	datac => \inst7|inst1|Current_state\(0),
	datad => \inst7|inst1|Current_state\(1),
	combout => \inst7|inst1|Current_state~2_combout\);

-- Location: LCCOMB_X30_Y15_N16
\inst7|inst1|Current_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~7_combout\ = (\inst|Equal0~0_combout\ & (!\inst|Equal0~1_combout\ & (!\inst7|inst1|Current_state\(0) & !\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst7|inst1|Current_state\(0),
	datad => \inst|Equal0~2_combout\,
	combout => \inst7|inst1|Current_state~7_combout\);

-- Location: LCCOMB_X29_Y15_N12
\inst7|inst1|Current_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~10_combout\ = (!\inst7|inst|Current_state\(2) & (!\inst7|inst|Current_state\(1) & (\inst7|inst1|Current_state\(2) & \inst7|inst|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Current_state\(2),
	datab => \inst7|inst|Current_state\(1),
	datac => \inst7|inst1|Current_state\(2),
	datad => \inst7|inst|Equal2~1_combout\,
	combout => \inst7|inst1|Current_state~10_combout\);

-- Location: LCFF_X33_Y10_N11
\inst1|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(3));

-- Location: LCFF_X33_Y10_N23
\inst1|Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(4));

-- Location: LCFF_X33_Y10_N13
\inst1|Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(6));

-- Location: LCCOMB_X33_Y10_N30
\inst1|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~1_combout\ = (!\inst1|Count\(6) & (!\inst1|Count\(4) & (!\inst1|Count\(11) & !\inst1|Count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(6),
	datab => \inst1|Count\(4),
	datac => \inst1|Count\(11),
	datad => \inst1|Count\(8),
	combout => \inst1|Equal3~1_combout\);

-- Location: LCFF_X35_Y10_N17
\inst1|Count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(14));

-- Location: LCFF_X35_Y10_N21
\inst1|Count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(21));

-- Location: LCCOMB_X30_Y10_N6
\inst2|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = (!\inst2|H1\(1) & (\inst2|H1\(0) & (!\inst2|H1\(2) & \inst2|H1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(1),
	datab => \inst2|H1\(0),
	datac => \inst2|H1\(2),
	datad => \inst2|H1\(3),
	combout => \inst2|process_0~2_combout\);

-- Location: LCCOMB_X30_Y11_N16
\inst2|H0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~4_combout\ = (\inst2|H0\(3) & ((\inst2|H0\(1) $ (\inst2|H0\(2))) # (!\inst2|H0\(0)))) # (!\inst2|H0\(3) & (\inst2|H0\(0) & (\inst2|H0\(1) & \inst2|H0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(3),
	datab => \inst2|H0\(0),
	datac => \inst2|H0\(1),
	datad => \inst2|H0\(2),
	combout => \inst2|H0~4_combout\);

-- Location: LCCOMB_X34_Y11_N6
\inst2|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~5_combout\ = (!\inst2|M1\(0) & (!\inst2|M1\(1) & !\inst2|M1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|M1\(0),
	datac => \inst2|M1\(1),
	datad => \inst2|M1\(2),
	combout => \inst2|process_0~5_combout\);

-- Location: LCCOMB_X29_Y10_N30
\inst4|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (!\inst2|H0\(2) & (!\inst2|H0\(1) & (\inst2|H0\(3) & \inst2|H0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(2),
	datab => \inst2|H0\(1),
	datac => \inst2|H0\(3),
	datad => \inst2|H0\(0),
	combout => \inst4|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y10_N8
\inst2|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = \inst2|H0\(1) $ (\inst2|H0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|H0\(1),
	datad => \inst2|H0\(0),
	combout => \inst2|Add1~0_combout\);

-- Location: LCCOMB_X29_Y10_N20
\inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|H1\(3) $ (((\inst2|H1\(1) & (\inst2|H1\(2) & \inst2|H1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(3),
	datab => \inst2|H1\(1),
	datac => \inst2|H1\(2),
	datad => \inst2|H1\(0),
	combout => \inst2|Add0~0_combout\);

-- Location: LCCOMB_X29_Y10_N12
\inst2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = \inst2|H1\(1) $ (\inst2|H1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|H1\(1),
	datad => \inst2|H1\(0),
	combout => \inst2|Add0~2_combout\);

-- Location: LCCOMB_X30_Y10_N30
\inst2|H1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1~10_combout\ = \inst2|H1\(0) $ (\inst4|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|H1\(0),
	datac => \inst4|Equal0~1_combout\,
	combout => \inst2|H1~10_combout\);

-- Location: LCCOMB_X33_Y9_N12
\inst2|Equal8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal8~2_combout\ = (!\inst2|M0\(0) & !\inst2|M0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|M0\(0),
	datad => \inst2|M0\(1),
	combout => \inst2|Equal8~2_combout\);

-- Location: LCCOMB_X33_Y9_N16
\inst2|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~1_combout\ = \inst2|M0\(2) $ (((\inst2|M0\(1) & \inst2|M0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|M0\(1),
	datac => \inst2|M0\(0),
	datad => \inst2|M0\(2),
	combout => \inst2|Add3~1_combout\);

-- Location: LCCOMB_X33_Y9_N20
\inst2|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~2_combout\ = \inst2|M0\(0) $ (\inst2|M0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|M0\(0),
	datad => \inst2|M0\(1),
	combout => \inst2|Add3~2_combout\);

-- Location: LCCOMB_X32_Y10_N10
\inst2|M1[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M1[2]~4_combout\ = (\inst2|S1\(3)) # (((!\inst2|Equal8~0_combout\) # (!\inst2|Equal10~1_combout\)) # (!\inst8|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(3),
	datab => \inst8|Equal0~0_combout\,
	datac => \inst2|Equal10~1_combout\,
	datad => \inst2|Equal8~0_combout\,
	combout => \inst2|M1[2]~4_combout\);

-- Location: LCCOMB_X31_Y10_N6
\inst2|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add4~0_combout\ = \inst2|S1\(3) $ (((\inst2|S1\(1) & (\inst2|S1\(0) & \inst2|S1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(1),
	datab => \inst2|S1\(0),
	datac => \inst2|S1\(3),
	datad => \inst2|S1\(2),
	combout => \inst2|Add4~0_combout\);

-- Location: LCCOMB_X31_Y10_N24
\inst2|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add4~1_combout\ = \inst2|S1\(2) $ (((\inst2|S1\(1) & \inst2|S1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(1),
	datab => \inst2|S1\(0),
	datad => \inst2|S1\(2),
	combout => \inst2|Add4~1_combout\);

-- Location: LCCOMB_X31_Y10_N10
\inst2|S1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S1~8_combout\ = (!\inst|Increment~1_combout\ & (((\inst2|S1\(3)) # (!\inst2|process_0~4_combout\)) # (!\inst2|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal10~0_combout\,
	datab => \inst2|process_0~4_combout\,
	datac => \inst2|S1\(3),
	datad => \inst|Increment~1_combout\,
	combout => \inst2|S1~8_combout\);

-- Location: LCCOMB_X31_Y9_N10
\inst2|S1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S1~10_combout\ = \inst2|Equal10~0_combout\ $ (\inst2|S1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal10~0_combout\,
	datad => \inst2|S1\(0),
	combout => \inst2|S1~10_combout\);

-- Location: LCCOMB_X29_Y16_N28
\inst7|inst|timeLCDClk[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|timeLCDClk[0]~0_combout\ = (!\inst7|inst|timeLCDClk\(0) & \inst7|inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst|timeLCDClk\(0),
	datad => \inst7|inst|Equal0~5_combout\,
	combout => \inst7|inst|timeLCDClk[0]~0_combout\);

-- Location: LCCOMB_X33_Y10_N10
\inst1|Count[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[3]~15_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~6_combout\)) # (!\inst1|Count~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|Count~11_combout\,
	combout => \inst1|Count[3]~15_combout\);

-- Location: LCCOMB_X33_Y10_N22
\inst1|Count[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[4]~16_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~8_combout\)) # (!\inst1|Count~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|Count~11_combout\,
	combout => \inst1|Count[4]~16_combout\);

-- Location: LCCOMB_X33_Y10_N12
\inst1|Count[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[6]~17_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~12_combout\)) # (!\inst1|Count~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Add0~12_combout\,
	datad => \inst1|Count~11_combout\,
	combout => \inst1|Count[6]~17_combout\);

-- Location: LCCOMB_X35_Y10_N16
\inst1|Count[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[14]~22_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~28_combout\)) # (!\inst1|Count~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Add0~28_combout\,
	datad => \inst1|Count~11_combout\,
	combout => \inst1|Count[14]~22_combout\);

-- Location: LCCOMB_X35_Y10_N20
\inst1|Count[21]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[21]~28_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~42_combout\)) # (!\inst1|Count~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Add0~42_combout\,
	datad => \inst1|Count~11_combout\,
	combout => \inst1|Count[21]~28_combout\);

-- Location: LCCOMB_X30_Y17_N26
\inst7|inst2|Mux2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~17_combout\ = (!\inst7|inst1|Char_Count\(0) & (\inst7|inst1|AddressOut~0_combout\ & (\inst7|inst2|Mux0~0_combout\ & !\inst7|inst1|Char_Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|AddressOut~0_combout\,
	datac => \inst7|inst2|Mux0~0_combout\,
	datad => \inst7|inst1|Char_Count\(1),
	combout => \inst7|inst2|Mux2~17_combout\);

-- Location: LCCOMB_X28_Y16_N24
\inst7|inst|timeLCDClk[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|timeLCDClk[11]~5_combout\ = !\inst7|inst|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst|Add0~22_combout\,
	combout => \inst7|inst|timeLCDClk[11]~5_combout\);

-- Location: LCCOMB_X34_Y1_N20
\inst7|inst13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst13~0_combout\ = !\inst7|inst13~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst13~regout\,
	combout => \inst7|inst13~0_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Rec~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Rec,
	combout => \Rec~combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G13
\inst7|inst13~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|inst13~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|inst13~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TapePresent~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TapePresent,
	combout => \TapePresent~combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Play~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Play,
	combout => \Play~combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Stop~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Stop,
	combout => \Stop~combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FF~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_FF,
	combout => \FF~combout\);

-- Location: LCCOMB_X33_Y16_N2
\inst|Next_State~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~56_combout\ = (\FF~combout\) # ((!\RW4~combout\ & ((\inst|Current_State\(2)) # (!\TapePresent~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW4~combout\,
	datab => \FF~combout\,
	datac => \inst|Current_State\(2),
	datad => \TapePresent~combout\,
	combout => \inst|Next_State~56_combout\);

-- Location: LCCOMB_X33_Y16_N28
\inst|Next_State[2]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[2]~57_combout\ = (\inst|Next_State~56_combout\ & ((\inst|Current_State\(0) & ((!\Stop~combout\))) # (!\inst|Current_State\(0) & (\inst|Next_State~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State~16_combout\,
	datab => \Stop~combout\,
	datac => \inst|Current_State\(0),
	datad => \inst|Next_State~56_combout\,
	combout => \inst|Next_State[2]~57_combout\);

-- Location: LCCOMB_X33_Y16_N30
\inst|Next_State[2]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[2]~58_combout\ = (\inst|Current_State\(1) & (\inst|Next_State[2]~57_combout\ & ((!\inst|Current_State\(0)) # (!\Play~combout\)))) # (!\inst|Current_State\(1) & (((\inst|Current_State\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(1),
	datab => \Play~combout\,
	datac => \inst|Current_State\(0),
	datad => \inst|Next_State[2]~57_combout\,
	combout => \inst|Next_State[2]~58_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WriteProtect~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WriteProtect,
	combout => \WriteProtect~combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EndOfTape~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EndOfTape,
	combout => \EndOfTape~combout\);

-- Location: LCCOMB_X34_Y16_N0
\inst|process_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|process_1~1_combout\ = ((\WriteProtect~combout\) # (\EndOfTape~combout\)) # (!\Rec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rec~combout\,
	datac => \WriteProtect~combout\,
	datad => \EndOfTape~combout\,
	combout => \inst|process_1~1_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\StartOfTape~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_StartOfTape,
	combout => \StartOfTape~combout\);

-- Location: LCCOMB_X33_Y16_N14
\inst|Next_State~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~45_combout\ = (\TapePresent~combout\ & !\inst|Current_State\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TapePresent~combout\,
	datac => \inst|Current_State\(2),
	combout => \inst|Next_State~45_combout\);

-- Location: LCCOMB_X34_Y16_N12
\inst|Next_State~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~54_combout\ = (\RW4~combout\ & (\StartOfTape~combout\ & ((!\inst|Next_State~45_combout\) # (!\inst|process_1~1_combout\)))) # (!\RW4~combout\ & (((!\inst|Next_State~45_combout\)) # (!\inst|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW4~combout\,
	datab => \inst|process_1~1_combout\,
	datac => \StartOfTape~combout\,
	datad => \inst|Next_State~45_combout\,
	combout => \inst|Next_State~54_combout\);

-- Location: LCCOMB_X34_Y16_N14
\inst|Next_State[2]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[2]~55_combout\ = (\EndOfTape~combout\ & (((\inst|Next_State~54_combout\)))) # (!\EndOfTape~combout\ & (!\Play~combout\ & ((\FF~combout\) # (\inst|Next_State~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EndOfTape~combout\,
	datab => \Play~combout\,
	datac => \FF~combout\,
	datad => \inst|Next_State~54_combout\,
	combout => \inst|Next_State[2]~55_combout\);

-- Location: LCCOMB_X33_Y16_N20
\inst|Next_State~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~46_combout\ = (\inst|Next_State[0]~25_combout\ & (!\Play~combout\ & ((\FF~combout\) # (!\inst|Next_State~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State[0]~25_combout\,
	datab => \Play~combout\,
	datac => \inst|Next_State~45_combout\,
	datad => \FF~combout\,
	combout => \inst|Next_State~46_combout\);

-- Location: LCCOMB_X32_Y15_N2
\inst|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal9~0_combout\ = (!\inst|Current_State\(1) & !\inst|Current_State\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(1),
	datac => \inst|Current_State\(2),
	combout => \inst|Equal9~0_combout\);

-- Location: LCCOMB_X32_Y15_N14
\inst|Next_State[1]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~40_combout\ = (!\StartOfTape~combout\ & ((\inst|Current_State\(3)) # ((!\inst|Current_State\(0) & \inst|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartOfTape~combout\,
	datab => \inst|Current_State\(3),
	datac => \inst|Current_State\(0),
	datad => \inst|Equal9~0_combout\,
	combout => \inst|Next_State[1]~40_combout\);

-- Location: LCCOMB_X32_Y15_N4
\inst|Next_State[1]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~41_combout\ = (!\inst|Current_State\(2) & ((\FF~combout\) # ((\Pause~combout\ & !\inst|Current_State\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pause~combout\,
	datab => \FF~combout\,
	datac => \inst|Current_State\(2),
	datad => \inst|Current_State\(0),
	combout => \inst|Next_State[1]~41_combout\);

-- Location: LCCOMB_X32_Y15_N24
\inst|Next_State[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~9_combout\ = (\Pause~combout\ & \inst|Current_State\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pause~combout\,
	datac => \inst|Current_State\(0),
	combout => \inst|Next_State[1]~9_combout\);

-- Location: LCCOMB_X32_Y15_N18
\inst|Next_State[1]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~42_combout\ = (\inst|Next_State[1]~41_combout\) # ((\inst|Current_State\(2) & ((\Play~combout\) # (\inst|Next_State[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Play~combout\,
	datab => \inst|Next_State[1]~41_combout\,
	datac => \inst|Next_State[1]~9_combout\,
	datad => \inst|Current_State\(2),
	combout => \inst|Next_State[1]~42_combout\);

-- Location: LCCOMB_X32_Y15_N28
\inst|Next_State[1]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~43_combout\ = (!\EndOfTape~combout\ & (!\inst|Current_State\(3) & (\inst|Current_State\(1) & \inst|Next_State[1]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EndOfTape~combout\,
	datab => \inst|Current_State\(3),
	datac => \inst|Current_State\(1),
	datad => \inst|Next_State[1]~42_combout\,
	combout => \inst|Next_State[1]~43_combout\);

-- Location: LCCOMB_X32_Y15_N22
\inst|Next_State[1]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~44_combout\ = (\inst|Next_State[1]~39_combout\) # ((!\Stop~combout\ & ((\inst|Next_State[1]~40_combout\) # (\inst|Next_State[1]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State[1]~39_combout\,
	datab => \Stop~combout\,
	datac => \inst|Next_State[1]~40_combout\,
	datad => \inst|Next_State[1]~43_combout\,
	combout => \inst|Next_State[1]~44_combout\);

-- Location: LCCOMB_X32_Y15_N10
\inst|Next_State[1]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~61_combout\ = (\inst|Next_State[1]~15_combout\ & (\TapePresent~combout\ & (\inst|Current_State\(1)))) # (!\inst|Next_State[1]~15_combout\ & (((\inst|Next_State[1]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State[1]~15_combout\,
	datab => \TapePresent~combout\,
	datac => \inst|Current_State\(1),
	datad => \inst|Next_State[1]~44_combout\,
	combout => \inst|Next_State[1]~61_combout\);

-- Location: LCFF_X32_Y15_N11
\inst|Current_State[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Next_State[1]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Current_State\(1));

-- Location: LCCOMB_X33_Y15_N2
\inst|Equal9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal9~1_combout\ = (!\inst|Current_State\(2) & (\inst|Current_State\(3) & (\inst|Current_State\(0) & !\inst|Current_State\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(2),
	datab => \inst|Current_State\(3),
	datac => \inst|Current_State\(0),
	datad => \inst|Current_State\(1),
	combout => \inst|Equal9~1_combout\);

-- Location: LCCOMB_X33_Y16_N18
\inst|Next_State~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~47_combout\ = (\inst|Equal9~1_combout\ & (!\Pause~combout\ & ((\inst|Next_State~46_combout\)))) # (!\inst|Equal9~1_combout\ & (((!\inst|Next_State~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pause~combout\,
	datab => \inst|Next_State~45_combout\,
	datac => \inst|Next_State~46_combout\,
	datad => \inst|Equal9~1_combout\,
	combout => \inst|Next_State~47_combout\);

-- Location: LCCOMB_X33_Y16_N0
\inst|Next_State[2]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[2]~59_combout\ = (\inst|Current_State\(1) & (\inst|Next_State[2]~58_combout\)) # (!\inst|Current_State\(1) & ((\inst|Next_State[2]~58_combout\ & (\inst|Next_State[2]~55_combout\)) # (!\inst|Next_State[2]~58_combout\ & 
-- ((\inst|Next_State~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(1),
	datab => \inst|Next_State[2]~58_combout\,
	datac => \inst|Next_State[2]~55_combout\,
	datad => \inst|Next_State~47_combout\,
	combout => \inst|Next_State[2]~59_combout\);

-- Location: LCCOMB_X33_Y16_N22
\inst|Next_State[2]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[2]~60_combout\ = (\inst|Current_State\(2) & (\inst|Next_State[2]~53_combout\)) # (!\inst|Current_State\(2) & (((!\inst|Current_State\(3) & \inst|Next_State[2]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State[2]~53_combout\,
	datab => \inst|Current_State\(3),
	datac => \inst|Current_State\(2),
	datad => \inst|Next_State[2]~59_combout\,
	combout => \inst|Next_State[2]~60_combout\);

-- Location: LCCOMB_X33_Y16_N4
\inst|Next_State[2]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[2]~48_combout\ = (!\inst|Current_State\(0) & !\inst|Current_State\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Current_State\(0),
	datad => \inst|Current_State\(1),
	combout => \inst|Next_State[2]~48_combout\);

-- Location: LCCOMB_X33_Y16_N10
\inst|Next_State[2]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[2]~49_combout\ = (\inst|Current_State\(2)) # ((\inst|Next_State[2]~48_combout\ & (\inst|Next_State~46_combout\)) # (!\inst|Next_State[2]~48_combout\ & ((\inst|Next_State~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(2),
	datab => \inst|Next_State[2]~48_combout\,
	datac => \inst|Next_State~46_combout\,
	datad => \inst|Next_State~47_combout\,
	combout => \inst|Next_State[2]~49_combout\);

-- Location: LCCOMB_X33_Y16_N16
\inst|Next_State[2]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[2]~62_combout\ = (\inst|Next_State[2]~60_combout\) # ((\inst|Current_State\(3) & \inst|Next_State[2]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Next_State[2]~60_combout\,
	datac => \inst|Current_State\(3),
	datad => \inst|Next_State[2]~49_combout\,
	combout => \inst|Next_State[2]~62_combout\);

-- Location: LCFF_X33_Y16_N17
\inst|Current_State[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Next_State[2]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Current_State\(2));

-- Location: LCCOMB_X34_Y16_N8
\inst|Next_State[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[0]~25_combout\ = (!\StartOfTape~combout\ & !\Stop~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StartOfTape~combout\,
	datad => \Stop~combout\,
	combout => \inst|Next_State[0]~25_combout\);

-- Location: LCCOMB_X33_Y15_N8
\inst|Next_State~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~24_combout\ = (\TapePresent~combout\ & !\inst|Current_State\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TapePresent~combout\,
	datad => \inst|Current_State\(0),
	combout => \inst|Next_State~24_combout\);

-- Location: LCCOMB_X33_Y15_N26
\inst|Next_State~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~26_combout\ = (\inst|Equal9~1_combout\ & (((!\inst|Next_State[0]~25_combout\)) # (!\Play~combout\))) # (!\inst|Equal9~1_combout\ & (((!\inst|Next_State~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Play~combout\,
	datab => \inst|Next_State[0]~25_combout\,
	datac => \inst|Next_State~24_combout\,
	datad => \inst|Equal9~1_combout\,
	combout => \inst|Next_State~26_combout\);

-- Location: LCCOMB_X33_Y15_N22
\inst|Next_State[0]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[0]~63_combout\ = (\inst|Current_State\(1)) # ((\inst|Current_State\(2)) # (\inst|Next_State~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(1),
	datac => \inst|Current_State\(2),
	datad => \inst|Next_State~26_combout\,
	combout => \inst|Next_State[0]~63_combout\);

-- Location: LCCOMB_X34_Y16_N6
\inst|Next_State[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[3]~11_combout\ = (\EndOfTape~combout\) # ((!\FF~combout\ & !\Play~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EndOfTape~combout\,
	datac => \FF~combout\,
	datad => \Play~combout\,
	combout => \inst|Next_State[3]~11_combout\);

-- Location: LCCOMB_X34_Y16_N18
\inst|Next_State[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[0]~12_combout\ = (\inst|process_1~1_combout\ & (\inst|Next_State[3]~11_combout\ & ((\StartOfTape~combout\) # (!\RW4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW4~combout\,
	datab => \inst|process_1~1_combout\,
	datac => \StartOfTape~combout\,
	datad => \inst|Next_State[3]~11_combout\,
	combout => \inst|Next_State[0]~12_combout\);

-- Location: LCCOMB_X34_Y15_N8
\inst|Next_State[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[0]~28_combout\ = (\inst|Current_State\(1) & (((!\inst|process_1~0_combout\ & \inst|Current_State\(2))) # (!\Play~combout\))) # (!\inst|Current_State\(1) & (((\inst|Current_State\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~0_combout\,
	datab => \Play~combout\,
	datac => \inst|Current_State\(2),
	datad => \inst|Current_State\(1),
	combout => \inst|Next_State[0]~28_combout\);

-- Location: LCCOMB_X34_Y15_N14
\inst|Next_State[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[0]~29_combout\ = (\inst|Next_State[0]~28_combout\) # ((\inst|Next_State[0]~12_combout\ & !\inst|Current_State\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Next_State[0]~12_combout\,
	datac => \inst|Next_State[0]~28_combout\,
	datad => \inst|Current_State\(1),
	combout => \inst|Next_State[0]~29_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RW4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RW4,
	combout => \RW4~combout\);

-- Location: LCCOMB_X34_Y15_N30
\inst|Next_State~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~33_combout\ = ((!\Play~combout\ & (!\RW4~combout\ & !\inst|Next_State~24_combout\))) # (!\inst|process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~0_combout\,
	datab => \Play~combout\,
	datac => \RW4~combout\,
	datad => \inst|Next_State~24_combout\,
	combout => \inst|Next_State~33_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pause~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pause,
	combout => \Pause~combout\);

-- Location: LCCOMB_X32_Y15_N6
\inst|Next_State~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~16_combout\ = (!\EndOfTape~combout\ & (!\Stop~combout\ & !\Pause~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EndOfTape~combout\,
	datac => \Stop~combout\,
	datad => \Pause~combout\,
	combout => \inst|Next_State~16_combout\);

-- Location: LCCOMB_X34_Y15_N4
\inst|Next_State~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State~30_combout\ = (\FF~combout\) # (((\RW4~combout\) # (!\inst|Next_State~24_combout\)) # (!\inst|Next_State~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF~combout\,
	datab => \inst|Next_State~16_combout\,
	datac => \RW4~combout\,
	datad => \inst|Next_State~24_combout\,
	combout => \inst|Next_State~30_combout\);

-- Location: LCCOMB_X33_Y15_N28
\inst|Next_State[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[0]~32_combout\ = (\inst|Current_State\(1) & (((\inst|Current_State\(2))))) # (!\inst|Current_State\(1) & ((\inst|Current_State\(2) & (\inst|Next_State~31_combout\)) # (!\inst|Current_State\(2) & ((\inst|Next_State~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State~31_combout\,
	datab => \inst|Current_State\(1),
	datac => \inst|Current_State\(2),
	datad => \inst|Next_State~26_combout\,
	combout => \inst|Next_State[0]~32_combout\);

-- Location: LCCOMB_X34_Y15_N12
\inst|Next_State[0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[0]~34_combout\ = (\inst|Current_State\(1) & ((\inst|Next_State[0]~32_combout\ & (\inst|Next_State~33_combout\)) # (!\inst|Next_State[0]~32_combout\ & ((\inst|Next_State~30_combout\))))) # (!\inst|Current_State\(1) & 
-- (((\inst|Next_State[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(1),
	datab => \inst|Next_State~33_combout\,
	datac => \inst|Next_State~30_combout\,
	datad => \inst|Next_State[0]~32_combout\,
	combout => \inst|Next_State[0]~34_combout\);

-- Location: LCCOMB_X34_Y15_N22
\inst|Next_State[0]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[0]~35_combout\ = (\inst|Current_State\(3) & (\inst|Current_State\(0))) # (!\inst|Current_State\(3) & ((\inst|Current_State\(0) & (\inst|Next_State[0]~29_combout\)) # (!\inst|Current_State\(0) & ((\inst|Next_State[0]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(3),
	datab => \inst|Current_State\(0),
	datac => \inst|Next_State[0]~29_combout\,
	datad => \inst|Next_State[0]~34_combout\,
	combout => \inst|Next_State[0]~35_combout\);

-- Location: LCCOMB_X33_Y15_N10
\inst|Next_State[0]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[0]~36_combout\ = (\inst|Current_State\(3) & ((\inst|Next_State[0]~35_combout\ & ((\inst|Next_State[0]~63_combout\))) # (!\inst|Next_State[0]~35_combout\ & (\inst|Next_State[0]~27_combout\)))) # (!\inst|Current_State\(3) & 
-- (((\inst|Next_State[0]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State[0]~27_combout\,
	datab => \inst|Next_State[0]~63_combout\,
	datac => \inst|Current_State\(3),
	datad => \inst|Next_State[0]~35_combout\,
	combout => \inst|Next_State[0]~36_combout\);

-- Location: LCFF_X33_Y15_N5
\inst|Current_State[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst|Next_State[0]~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Current_State\(0));

-- Location: LCCOMB_X34_Y15_N24
\inst|Next_State[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[3]~18_combout\ = (!\Stop~combout\ & (!\Play~combout\ & ((!\EndOfTape~combout\) # (!\inst|Current_State\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stop~combout\,
	datab => \Play~combout\,
	datac => \inst|Current_State\(2),
	datad => \EndOfTape~combout\,
	combout => \inst|Next_State[3]~18_combout\);

-- Location: LCCOMB_X34_Y15_N28
\inst|Next_State[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~2_combout\ = (\inst|Current_State\(2) & ((\inst|Current_State\(0) & ((\Pause~combout\))) # (!\inst|Current_State\(0) & (\Play~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Play~combout\,
	datab => \Pause~combout\,
	datac => \inst|Current_State\(0),
	datad => \inst|Current_State\(2),
	combout => \inst|Next_State[1]~2_combout\);

-- Location: LCCOMB_X34_Y15_N2
\inst|Next_State[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~3_combout\ = (\inst|Current_State\(1) & (!\inst|Next_State[1]~2_combout\ & ((\inst|Current_State\(2)) # (!\FF~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF~combout\,
	datab => \inst|Current_State\(2),
	datac => \inst|Current_State\(1),
	datad => \inst|Next_State[1]~2_combout\,
	combout => \inst|Next_State[1]~3_combout\);

-- Location: LCCOMB_X34_Y15_N26
\inst|Next_State[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[3]~19_combout\ = (\inst|Next_State[1]~3_combout\ & ((\inst|Next_State[3]~17_combout\) # ((\inst|Current_State\(0) & \inst|Next_State[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State[3]~17_combout\,
	datab => \inst|Current_State\(0),
	datac => \inst|Next_State[3]~18_combout\,
	datad => \inst|Next_State[1]~3_combout\,
	combout => \inst|Next_State[3]~19_combout\);

-- Location: LCCOMB_X33_Y15_N30
\inst|Next_State[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[3]~21_combout\ = (\inst|Next_State[3]~19_combout\) # ((\inst|Next_State[3]~20_combout\ & (\inst|Current_State\(0) & \inst|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State[3]~20_combout\,
	datab => \inst|Current_State\(0),
	datac => \inst|Next_State[3]~19_combout\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|Next_State[3]~21_combout\);

-- Location: LCCOMB_X33_Y15_N20
\inst|Next_State[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[3]~22_combout\ = (\inst|Current_State\(3) & (\TapePresent~combout\ & (\inst|Next_State[1]~15_combout\))) # (!\inst|Current_State\(3) & (((!\inst|Next_State[1]~15_combout\ & \inst|Next_State[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(3),
	datab => \TapePresent~combout\,
	datac => \inst|Next_State[1]~15_combout\,
	datad => \inst|Next_State[3]~21_combout\,
	combout => \inst|Next_State[3]~22_combout\);

-- Location: LCFF_X33_Y15_N19
\inst|Current_State[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst|Next_State[3]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Current_State\(3));

-- Location: LCCOMB_X32_Y15_N16
\inst|Next_State[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~10_combout\ = (\inst|Current_State\(3) & (((\inst|Next_State[1]~8_combout\ & !\inst|Next_State[1]~9_combout\)) # (!\inst|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State[1]~8_combout\,
	datab => \inst|Current_State\(3),
	datac => \inst|Next_State[1]~9_combout\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|Next_State[1]~10_combout\);

-- Location: LCCOMB_X33_Y15_N4
\inst|Next_State[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~14_combout\ = (!\inst|Current_State\(3) & !\inst|Current_State\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Current_State\(3),
	datad => \inst|Current_State\(1),
	combout => \inst|Next_State[1]~14_combout\);

-- Location: LCCOMB_X34_Y15_N0
\inst|Next_State[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~4_combout\ = (\inst|Current_State\(0) & !\inst|Current_State\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Current_State\(0),
	datad => \inst|Current_State\(2),
	combout => \inst|Next_State[1]~4_combout\);

-- Location: LCCOMB_X34_Y15_N10
\inst|Next_State[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~5_combout\ = (\inst|Current_State\(0) & (!\Play~combout\ & ((\inst|Current_State\(2))))) # (!\inst|Current_State\(0) & (((\inst|Current_State\(2)) # (!\Pause~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Play~combout\,
	datab => \Pause~combout\,
	datac => \inst|Current_State\(0),
	datad => \inst|Current_State\(2),
	combout => \inst|Next_State[1]~5_combout\);

-- Location: LCCOMB_X34_Y15_N20
\inst|Next_State[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~6_combout\ = (\EndOfTape~combout\ & (\inst|Next_State[1]~4_combout\ & (!\Play~combout\))) # (!\EndOfTape~combout\ & ((\inst|Next_State[1]~5_combout\) # ((\inst|Next_State[1]~4_combout\ & !\Play~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EndOfTape~combout\,
	datab => \inst|Next_State[1]~4_combout\,
	datac => \Play~combout\,
	datad => \inst|Next_State[1]~5_combout\,
	combout => \inst|Next_State[1]~6_combout\);

-- Location: LCCOMB_X34_Y15_N18
\inst|Next_State[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~7_combout\ = (!\Stop~combout\ & (!\RW4~combout\ & (\inst|Next_State[1]~6_combout\ & \inst|Next_State[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stop~combout\,
	datab => \RW4~combout\,
	datac => \inst|Next_State[1]~6_combout\,
	datad => \inst|Next_State[1]~3_combout\,
	combout => \inst|Next_State[1]~7_combout\);

-- Location: LCCOMB_X33_Y15_N24
\inst|Next_State[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Next_State[1]~15_combout\ = (\inst|Next_State[1]~10_combout\) # ((\inst|Next_State[1]~7_combout\) # ((\inst|Next_State[1]~13_combout\ & \inst|Next_State[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State[1]~13_combout\,
	datab => \inst|Next_State[1]~10_combout\,
	datac => \inst|Next_State[1]~14_combout\,
	datad => \inst|Next_State[1]~7_combout\,
	combout => \inst|Next_State[1]~15_combout\);

-- Location: LCCOMB_X33_Y15_N14
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|Next_State[1]~15_combout\ & (\inst|Current_State\(1) & (!\TapePresent~combout\))) # (!\inst|Next_State[1]~15_combout\ & (\inst|Current_State\(1) $ (((\inst|Next_State[1]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(1),
	datab => \TapePresent~combout\,
	datac => \inst|Next_State[1]~15_combout\,
	datad => \inst|Next_State[1]~44_combout\,
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y15_N16
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|Current_State\(3) & (\inst|Next_State[3]~22_combout\ & (\inst|Current_State\(0) $ (!\inst|Next_State[0]~36_combout\)))) # (!\inst|Current_State\(3) & (!\inst|Next_State[3]~22_combout\ & (\inst|Current_State\(0) $ 
-- (!\inst|Next_State[0]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(3),
	datab => \inst|Current_State\(0),
	datac => \inst|Next_State[3]~22_combout\,
	datad => \inst|Next_State[0]~36_combout\,
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y16_N12
\inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = \inst|Current_State\(2) $ (((\inst|Next_State[2]~60_combout\) # ((\inst|Next_State[2]~49_combout\ & \inst|Current_State\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_State[2]~49_combout\,
	datab => \inst|Current_State\(3),
	datac => \inst|Current_State\(2),
	datad => \inst|Next_State[2]~60_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y15_N10
\inst7|inst|Current_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~5_combout\ = (!\inst7|inst1|Current_state\(1) & (!\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & !\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(1),
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst7|inst|Current_state~5_combout\);

-- Location: LCCOMB_X29_Y16_N0
\inst7|inst|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal2~0_combout\ = (!\inst7|inst|Current_state\(3) & (!\inst7|inst|Current_state\(2) & (!\inst7|inst|Current_state\(1) & !\inst7|inst|Current_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Current_state\(3),
	datab => \inst7|inst|Current_state\(2),
	datac => \inst7|inst|Current_state\(1),
	datad => \inst7|inst|Current_state\(0),
	combout => \inst7|inst|Equal2~0_combout\);

-- Location: LCCOMB_X31_Y15_N30
\inst7|inst1|Current_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~1_combout\ = (!\inst7|inst1|Current_state\(2) & (\inst7|inst|Equal2~0_combout\ & (\inst7|inst1|Current_state\(0) & !\inst7|inst1|Current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(2),
	datab => \inst7|inst|Equal2~0_combout\,
	datac => \inst7|inst1|Current_state\(0),
	datad => \inst7|inst1|Current_state\(1),
	combout => \inst7|inst1|Current_state~1_combout\);

-- Location: LCCOMB_X30_Y15_N14
\inst7|inst1|Current_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~0_combout\ = (\inst|Equal0~0_combout\ & (!\inst|Equal0~1_combout\ & !\inst|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst7|inst1|Current_state~0_combout\);

-- Location: LCCOMB_X31_Y17_N20
\inst7|inst1|Char_Count[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Char_Count[0]~5_combout\ = \inst7|inst1|Char_Count\(0) $ (VCC)
-- \inst7|inst1|Char_Count[0]~6\ = CARRY(\inst7|inst1|Char_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Char_Count\(0),
	datad => VCC,
	combout => \inst7|inst1|Char_Count[0]~5_combout\,
	cout => \inst7|inst1|Char_Count[0]~6\);

-- Location: LCCOMB_X32_Y17_N18
\inst7|inst1|CounterReset~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|CounterReset~0_combout\ = (!\inst7|inst1|Current_state\(2) & (\inst7|inst1|Current_state\(0) $ (!\inst7|inst1|Current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Current_state\(2),
	datac => \inst7|inst1|Current_state\(0),
	datad => \inst7|inst1|Current_state\(1),
	combout => \inst7|inst1|CounterReset~0_combout\);

-- Location: LCCOMB_X31_Y15_N18
\inst7|inst1|Char_Count[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Char_Count[4]~11_combout\ = (\inst7|inst|Equal2~0_combout\ & (\inst7|inst1|Current_state\(2) $ (((\inst7|inst1|Current_state\(1)) # (!\inst7|inst1|Current_state\(0)))))) # (!\inst7|inst|Equal2~0_combout\ & (!\inst7|inst1|Current_state\(2) & 
-- (\inst7|inst1|Current_state\(1) $ (!\inst7|inst1|Current_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(1),
	datab => \inst7|inst1|Current_state\(0),
	datac => \inst7|inst1|Current_state\(2),
	datad => \inst7|inst|Equal2~0_combout\,
	combout => \inst7|inst1|Char_Count[4]~11_combout\);

-- Location: LCFF_X31_Y16_N1
\inst7|inst1|Char_Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|ALT_INV_inst13~clkctrl_outclk\,
	sdata => \inst7|inst1|Char_Count[0]~5_combout\,
	sclr => \inst7|inst1|CounterReset~0_combout\,
	sload => VCC,
	ena => \inst7|inst1|Char_Count[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst1|Char_Count\(0));

-- Location: LCCOMB_X32_Y17_N28
\inst7|inst1|AddressOut~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|AddressOut~0_combout\ = (!\inst7|inst1|Current_state\(2) & (\inst7|inst1|Current_state\(0) $ (\inst7|inst1|Current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Current_state\(0),
	datac => \inst7|inst1|Current_state\(2),
	datad => \inst7|inst1|Current_state\(1),
	combout => \inst7|inst1|AddressOut~0_combout\);

-- Location: LCCOMB_X31_Y17_N22
\inst7|inst1|Char_Count[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Char_Count[1]~7_combout\ = (\inst7|inst1|Char_Count\(1) & (!\inst7|inst1|Char_Count[0]~6\)) # (!\inst7|inst1|Char_Count\(1) & ((\inst7|inst1|Char_Count[0]~6\) # (GND)))
-- \inst7|inst1|Char_Count[1]~8\ = CARRY((!\inst7|inst1|Char_Count[0]~6\) # (!\inst7|inst1|Char_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Char_Count\(1),
	datad => VCC,
	cin => \inst7|inst1|Char_Count[0]~6\,
	combout => \inst7|inst1|Char_Count[1]~7_combout\,
	cout => \inst7|inst1|Char_Count[1]~8\);

-- Location: LCFF_X31_Y17_N23
\inst7|inst1|Char_Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|ALT_INV_inst13~clkctrl_outclk\,
	datain => \inst7|inst1|Char_Count[1]~7_combout\,
	sclr => \inst7|inst1|CounterReset~0_combout\,
	ena => \inst7|inst1|Char_Count[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst1|Char_Count\(1));

-- Location: LCCOMB_X31_Y17_N24
\inst7|inst1|Char_Count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Char_Count[2]~9_combout\ = (\inst7|inst1|Char_Count\(2) & (\inst7|inst1|Char_Count[1]~8\ $ (GND))) # (!\inst7|inst1|Char_Count\(2) & (!\inst7|inst1|Char_Count[1]~8\ & VCC))
-- \inst7|inst1|Char_Count[2]~10\ = CARRY((\inst7|inst1|Char_Count\(2) & !\inst7|inst1|Char_Count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datad => VCC,
	cin => \inst7|inst1|Char_Count[1]~8\,
	combout => \inst7|inst1|Char_Count[2]~9_combout\,
	cout => \inst7|inst1|Char_Count[2]~10\);

-- Location: LCCOMB_X31_Y17_N26
\inst7|inst1|Char_Count[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Char_Count[3]~12_combout\ = (\inst7|inst1|Char_Count\(3) & (!\inst7|inst1|Char_Count[2]~10\)) # (!\inst7|inst1|Char_Count\(3) & ((\inst7|inst1|Char_Count[2]~10\) # (GND)))
-- \inst7|inst1|Char_Count[3]~13\ = CARRY((!\inst7|inst1|Char_Count[2]~10\) # (!\inst7|inst1|Char_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Char_Count\(3),
	datad => VCC,
	cin => \inst7|inst1|Char_Count[2]~10\,
	combout => \inst7|inst1|Char_Count[3]~12_combout\,
	cout => \inst7|inst1|Char_Count[3]~13\);

-- Location: LCFF_X31_Y17_N27
\inst7|inst1|Char_Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|ALT_INV_inst13~clkctrl_outclk\,
	datain => \inst7|inst1|Char_Count[3]~12_combout\,
	sclr => \inst7|inst1|CounterReset~0_combout\,
	ena => \inst7|inst1|Char_Count[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst1|Char_Count\(3));

-- Location: LCCOMB_X31_Y17_N28
\inst7|inst1|Char_Count[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Char_Count[4]~14_combout\ = \inst7|inst1|Char_Count\(4) $ (!\inst7|inst1|Char_Count[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(4),
	cin => \inst7|inst1|Char_Count[3]~13\,
	combout => \inst7|inst1|Char_Count[4]~14_combout\);

-- Location: LCFF_X31_Y17_N29
\inst7|inst1|Char_Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|ALT_INV_inst13~clkctrl_outclk\,
	datain => \inst7|inst1|Char_Count[4]~14_combout\,
	sclr => \inst7|inst1|CounterReset~0_combout\,
	ena => \inst7|inst1|Char_Count[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst1|Char_Count\(4));

-- Location: LCFF_X31_Y17_N25
\inst7|inst1|Char_Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|ALT_INV_inst13~clkctrl_outclk\,
	datain => \inst7|inst1|Char_Count[2]~9_combout\,
	sclr => \inst7|inst1|CounterReset~0_combout\,
	ena => \inst7|inst1|Char_Count[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst1|Char_Count\(2));

-- Location: LCCOMB_X30_Y17_N4
\inst7|inst2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux0~0_combout\ = (!\inst7|inst1|Char_Count\(3) & (!\inst7|inst1|Char_Count\(4) & !\inst7|inst1|Char_Count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(3),
	datac => \inst7|inst1|Char_Count\(4),
	datad => \inst7|inst1|Char_Count\(2),
	combout => \inst7|inst2|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y17_N16
\inst7|inst2|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~2_combout\ = (\inst7|inst1|AddressOut~0_combout\ & (\inst7|inst2|Mux0~0_combout\ & !\inst7|inst1|Char_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|AddressOut~0_combout\,
	datac => \inst7|inst2|Mux0~0_combout\,
	datad => \inst7|inst1|Char_Count\(1),
	combout => \inst7|inst2|Mux2~2_combout\);

-- Location: LCCOMB_X31_Y15_N0
\inst7|inst1|AddressOut[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|AddressOut[8]~2_combout\ = (\inst|Current_State\(3) & ((\inst7|inst1|Current_state\(2)) # (\inst7|inst1|Current_state\(1) $ (!\inst7|inst1|Current_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(3),
	datab => \inst7|inst1|Current_state\(1),
	datac => \inst7|inst1|Current_state\(0),
	datad => \inst7|inst1|Current_state\(2),
	combout => \inst7|inst1|AddressOut[8]~2_combout\);

-- Location: LCCOMB_X32_Y16_N0
\inst7|inst1|AddressOut[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|AddressOut[7]~4_combout\ = (\inst|Current_State\(2) & ((\inst7|inst1|Current_state\(2)) # (\inst7|inst1|Current_state\(1) $ (!\inst7|inst1|Current_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(2),
	datab => \inst7|inst1|Current_state\(1),
	datac => \inst|Current_State\(2),
	datad => \inst7|inst1|Current_state\(0),
	combout => \inst7|inst1|AddressOut[7]~4_combout\);

-- Location: LCCOMB_X32_Y15_N8
\inst7|inst1|AddressOut[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|AddressOut[6]~3_combout\ = (\inst|Current_State\(1) & ((\inst7|inst1|Current_state\(2)) # (\inst7|inst1|Current_state\(0) $ (!\inst7|inst1|Current_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(0),
	datab => \inst7|inst1|Current_state\(1),
	datac => \inst7|inst1|Current_state\(2),
	datad => \inst|Current_State\(1),
	combout => \inst7|inst1|AddressOut[6]~3_combout\);

-- Location: LCCOMB_X32_Y15_N0
\inst7|inst1|AddressOut[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|AddressOut[5]~1_combout\ = (\inst|Current_State\(0) & ((\inst7|inst1|Current_state\(2)) # (\inst7|inst1|Current_state\(0) $ (!\inst7|inst1|Current_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(0),
	datab => \inst7|inst1|Current_state\(1),
	datac => \inst7|inst1|Current_state\(2),
	datad => \inst|Current_State\(0),
	combout => \inst7|inst1|AddressOut[5]~1_combout\);

-- Location: LCCOMB_X31_Y16_N2
\inst7|inst2|Mux5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~11_combout\ = (\inst7|inst1|AddressOut[6]~3_combout\ & (((\inst7|inst1|AddressOut[7]~4_combout\) # (!\inst7|inst1|AddressOut[5]~1_combout\)) # (!\inst7|inst1|Char_Count\(0)))) # (!\inst7|inst1|AddressOut[6]~3_combout\ & 
-- ((\inst7|inst1|AddressOut[5]~1_combout\) # ((!\inst7|inst1|Char_Count\(0) & \inst7|inst1|AddressOut[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst1|AddressOut[6]~3_combout\,
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux5~11_combout\);

-- Location: LCCOMB_X31_Y16_N14
\inst7|inst2|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~7_combout\ = (\inst7|inst1|Char_Count\(0) & (\inst7|inst1|AddressOut[5]~1_combout\ & ((\inst7|inst1|AddressOut[6]~3_combout\) # (!\inst7|inst1|AddressOut[7]~4_combout\)))) # (!\inst7|inst1|Char_Count\(0) & 
-- (\inst7|inst1|AddressOut[7]~4_combout\ $ (\inst7|inst1|AddressOut[6]~3_combout\ $ (\inst7|inst1|AddressOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst1|AddressOut[6]~3_combout\,
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux5~7_combout\);

-- Location: LCCOMB_X31_Y16_N20
\inst7|inst2|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~8_combout\ = (\inst7|inst1|Char_Count\(0) & (\inst7|inst1|AddressOut[6]~3_combout\ & (!\inst7|inst1|AddressOut[7]~4_combout\ & \inst7|inst1|AddressOut[5]~1_combout\))) # (!\inst7|inst1|Char_Count\(0) & 
-- (\inst7|inst1|AddressOut[7]~4_combout\ & ((!\inst7|inst1|AddressOut[5]~1_combout\) # (!\inst7|inst1|AddressOut[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux5~8_combout\);

-- Location: LCCOMB_X31_Y16_N26
\inst7|inst2|Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~9_combout\ = (\inst7|inst1|Char_Count\(0) & (\inst7|inst1|AddressOut[7]~4_combout\ & (\inst7|inst1|AddressOut[6]~3_combout\ $ (\inst7|inst1|AddressOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst1|AddressOut[6]~3_combout\,
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux5~9_combout\);

-- Location: LCCOMB_X31_Y16_N12
\inst7|inst2|Mux5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~10_combout\ = (\inst7|inst1|Char_Count\(1) & (\inst7|inst1|Char_Count\(2))) # (!\inst7|inst1|Char_Count\(1) & ((\inst7|inst1|Char_Count\(2) & (\inst7|inst2|Mux5~8_combout\)) # (!\inst7|inst1|Char_Count\(2) & 
-- ((\inst7|inst2|Mux5~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst2|Mux5~8_combout\,
	datad => \inst7|inst2|Mux5~9_combout\,
	combout => \inst7|inst2|Mux5~10_combout\);

-- Location: LCCOMB_X31_Y16_N16
\inst7|inst2|Mux5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~12_combout\ = (\inst7|inst1|Char_Count\(1) & ((\inst7|inst2|Mux5~10_combout\ & (\inst7|inst2|Mux5~11_combout\)) # (!\inst7|inst2|Mux5~10_combout\ & ((\inst7|inst2|Mux5~7_combout\))))) # (!\inst7|inst1|Char_Count\(1) & 
-- (((\inst7|inst2|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst2|Mux5~11_combout\,
	datac => \inst7|inst2|Mux5~7_combout\,
	datad => \inst7|inst2|Mux5~10_combout\,
	combout => \inst7|inst2|Mux5~12_combout\);

-- Location: LCCOMB_X32_Y17_N16
\inst7|inst2|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~5_combout\ = (\inst7|inst1|Char_Count\(2) & ((\inst7|inst1|AddressOut[6]~3_combout\) # ((!\inst7|inst1|Char_Count\(1) & !\inst7|inst1|Char_Count\(0))))) # (!\inst7|inst1|Char_Count\(2) & (!\inst7|inst1|Char_Count\(1) & 
-- (\inst7|inst1|Char_Count\(0) $ (\inst7|inst1|AddressOut[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|Char_Count\(0),
	datad => \inst7|inst1|AddressOut[6]~3_combout\,
	combout => \inst7|inst2|Mux5~5_combout\);

-- Location: LCCOMB_X32_Y17_N10
\inst7|inst2|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~5_combout\ = (\inst7|inst1|Char_Count\(2)) # ((\inst7|inst1|Char_Count\(1)) # ((\inst7|inst1|Char_Count\(0) & \inst7|inst1|AddressOut[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|Char_Count\(1),
	datad => \inst7|inst1|AddressOut[6]~3_combout\,
	combout => \inst7|inst2|Mux1~5_combout\);

-- Location: LCCOMB_X31_Y16_N28
\inst7|inst2|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~6_combout\ = (\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst7|inst1|AddressOut[5]~1_combout\ & (!\inst7|inst2|Mux5~5_combout\)) # (!\inst7|inst1|AddressOut[5]~1_combout\ & ((!\inst7|inst2|Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[5]~1_combout\,
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst2|Mux5~5_combout\,
	datad => \inst7|inst2|Mux1~5_combout\,
	combout => \inst7|inst2|Mux5~6_combout\);

-- Location: LCCOMB_X30_Y16_N0
\inst7|inst2|Mux5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~13_combout\ = (\inst7|inst1|Char_Count\(3) & ((\inst7|inst1|AddressOut[8]~2_combout\) # ((\inst7|inst2|Mux5~6_combout\)))) # (!\inst7|inst1|Char_Count\(3) & (!\inst7|inst1|AddressOut[8]~2_combout\ & (\inst7|inst2|Mux5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(3),
	datab => \inst7|inst1|AddressOut[8]~2_combout\,
	datac => \inst7|inst2|Mux5~12_combout\,
	datad => \inst7|inst2|Mux5~6_combout\,
	combout => \inst7|inst2|Mux5~13_combout\);

-- Location: LCCOMB_X30_Y16_N14
\inst7|inst2|Mux5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~14_combout\ = (\inst7|inst1|Char_Count\(0) & (((\inst7|inst1|Char_Count\(2)) # (!\inst7|inst1|AddressOut[5]~1_combout\)) # (!\inst7|inst1|Char_Count\(1)))) # (!\inst7|inst1|Char_Count\(0) & ((\inst7|inst1|Char_Count\(1)) # 
-- (\inst7|inst1|AddressOut[5]~1_combout\ $ (\inst7|inst1|Char_Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|Char_Count\(1),
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst1|Char_Count\(2),
	combout => \inst7|inst2|Mux5~14_combout\);

-- Location: LCCOMB_X30_Y16_N18
\inst7|inst2|Mux5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~16_combout\ = (!\inst7|inst1|AddressOut[6]~3_combout\ & (!\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst7|inst2|Mux5~4_combout\) # (\inst7|inst2|Mux5~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux5~4_combout\,
	datab => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst2|Mux5~13_combout\,
	combout => \inst7|inst2|Mux5~16_combout\);

-- Location: LCCOMB_X30_Y16_N12
\inst7|inst2|Mux5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~17_combout\ = (\inst7|inst1|AddressOut[8]~2_combout\ & (\inst7|inst2|Mux5~16_combout\ & ((!\inst7|inst2|Mux5~14_combout\) # (!\inst7|inst2|Mux5~13_combout\)))) # (!\inst7|inst1|AddressOut[8]~2_combout\ & (\inst7|inst2|Mux5~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[8]~2_combout\,
	datab => \inst7|inst2|Mux5~13_combout\,
	datac => \inst7|inst2|Mux5~14_combout\,
	datad => \inst7|inst2|Mux5~16_combout\,
	combout => \inst7|inst2|Mux5~17_combout\);

-- Location: LCCOMB_X30_Y16_N16
\inst7|inst2|Mux5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux5~15_combout\ = (\inst7|inst2|Mux1~17_combout\ & ((\inst7|inst2|Mux5~17_combout\) # ((\inst7|inst1|Char_Count\(0) & \inst7|inst2|Mux2~2_combout\)))) # (!\inst7|inst2|Mux1~17_combout\ & (\inst7|inst1|Char_Count\(0) & 
-- (\inst7|inst2|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux1~17_combout\,
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst2|Mux2~2_combout\,
	datad => \inst7|inst2|Mux5~17_combout\,
	combout => \inst7|inst2|Mux5~15_combout\);

-- Location: LCCOMB_X32_Y17_N2
\inst7|inst2|Mux1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~15_combout\ = (\inst7|inst1|AddressOut[5]~1_combout\ & (\inst7|inst1|Char_Count\(2) $ (((!\inst7|inst1|Char_Count\(0) & !\inst7|inst1|Char_Count\(1)))))) # (!\inst7|inst1|AddressOut[5]~1_combout\ & ((\inst7|inst1|Char_Count\(0)) # 
-- ((\inst7|inst1|Char_Count\(1)) # (\inst7|inst1|Char_Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|Char_Count\(1),
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst1|Char_Count\(2),
	combout => \inst7|inst2|Mux1~15_combout\);

-- Location: LCCOMB_X32_Y17_N0
\inst7|inst2|Mux1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~19_combout\ = (\inst7|inst1|AddressOut[6]~3_combout\) # ((\inst7|inst1|AddressOut[7]~4_combout\) # (\inst7|inst2|Mux1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[6]~3_combout\,
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst2|Mux1~15_combout\,
	combout => \inst7|inst2|Mux1~19_combout\);

-- Location: LCCOMB_X31_Y15_N8
\inst7|inst2|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~2_combout\ = (\inst7|inst1|Char_Count\(1)) # ((\inst7|inst1|Char_Count\(0) & ((\inst7|inst1|AddressOut[5]~1_combout\) # (!\inst7|inst1|Char_Count\(2)))) # (!\inst7|inst1|Char_Count\(0) & ((\inst7|inst1|Char_Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst1|Char_Count\(2),
	combout => \inst7|inst2|Mux1~2_combout\);

-- Location: LCCOMB_X31_Y15_N14
\inst7|inst2|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~2_combout\ = (!\inst7|inst1|AddressOut[6]~3_combout\ & !\inst7|inst1|AddressOut[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|AddressOut[6]~3_combout\,
	datad => \inst7|inst1|AddressOut[7]~4_combout\,
	combout => \inst7|inst2|Mux3~2_combout\);

-- Location: LCCOMB_X31_Y15_N6
\inst7|inst2|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~3_combout\ = (\inst7|inst1|AddressOut[6]~3_combout\ & (!\inst7|inst1|Char_Count\(2) & !\inst7|inst1|Char_Count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst1|Char_Count\(2),
	datad => \inst7|inst1|Char_Count\(0),
	combout => \inst7|inst2|Mux1~3_combout\);

-- Location: LCCOMB_X31_Y15_N24
\inst7|inst2|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~4_combout\ = (\inst7|inst1|Char_Count\(1) & (\inst7|inst2|Mux1~2_combout\ & (\inst7|inst2|Mux3~2_combout\))) # (!\inst7|inst1|Char_Count\(1) & ((\inst7|inst2|Mux1~3_combout\) # ((\inst7|inst2|Mux1~2_combout\ & 
-- \inst7|inst2|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst2|Mux1~2_combout\,
	datac => \inst7|inst2|Mux3~2_combout\,
	datad => \inst7|inst2|Mux1~3_combout\,
	combout => \inst7|inst2|Mux1~4_combout\);

-- Location: LCCOMB_X32_Y17_N12
\inst7|inst2|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~6_combout\ = (\inst7|inst1|Char_Count\(2) & (\inst7|inst1|AddressOut[6]~3_combout\)) # (!\inst7|inst1|Char_Count\(2) & (!\inst7|inst1|Char_Count\(1) & (\inst7|inst1|AddressOut[6]~3_combout\ $ (\inst7|inst1|Char_Count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[6]~3_combout\,
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|Char_Count\(0),
	datad => \inst7|inst1|Char_Count\(1),
	combout => \inst7|inst2|Mux1~6_combout\);

-- Location: LCCOMB_X32_Y17_N14
\inst7|inst2|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~7_combout\ = (\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst7|inst1|AddressOut[5]~1_combout\ & ((!\inst7|inst2|Mux1~6_combout\))) # (!\inst7|inst1|AddressOut[5]~1_combout\ & (!\inst7|inst2|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux1~5_combout\,
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst2|Mux1~6_combout\,
	combout => \inst7|inst2|Mux1~7_combout\);

-- Location: LCCOMB_X32_Y17_N8
\inst7|inst2|Mux1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~12_combout\ = (\inst7|inst1|Char_Count\(0) & (\inst7|inst1|Char_Count\(2) & (\inst7|inst1|AddressOut[5]~1_combout\ & !\inst7|inst1|AddressOut[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst1|AddressOut[7]~4_combout\,
	combout => \inst7|inst2|Mux1~12_combout\);

-- Location: LCCOMB_X32_Y17_N20
\inst7|inst2|Mux1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~10_combout\ = (\inst7|inst1|Char_Count\(0) & ((\inst7|inst1|AddressOut[5]~1_combout\ & ((!\inst7|inst1|AddressOut[7]~4_combout\) # (!\inst7|inst1|Char_Count\(2)))) # (!\inst7|inst1|AddressOut[5]~1_combout\ & 
-- ((\inst7|inst1|AddressOut[7]~4_combout\))))) # (!\inst7|inst1|Char_Count\(0) & (\inst7|inst1|Char_Count\(2) & ((\inst7|inst1|AddressOut[5]~1_combout\) # (\inst7|inst1|AddressOut[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst1|AddressOut[7]~4_combout\,
	combout => \inst7|inst2|Mux1~10_combout\);

-- Location: LCCOMB_X32_Y17_N26
\inst7|inst2|Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~9_combout\ = (\inst7|inst1|Char_Count\(0) & (((\inst7|inst1|AddressOut[5]~1_combout\) # (!\inst7|inst1|AddressOut[7]~4_combout\)) # (!\inst7|inst1|Char_Count\(2)))) # (!\inst7|inst1|Char_Count\(0) & (\inst7|inst1|Char_Count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst1|AddressOut[7]~4_combout\,
	combout => \inst7|inst2|Mux1~9_combout\);

-- Location: LCCOMB_X32_Y17_N6
\inst7|inst2|Mux1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~11_combout\ = (\inst7|inst1|AddressOut[6]~3_combout\ & ((\inst7|inst1|Char_Count\(1)) # ((\inst7|inst2|Mux1~9_combout\)))) # (!\inst7|inst1|AddressOut[6]~3_combout\ & (!\inst7|inst1|Char_Count\(1) & (\inst7|inst2|Mux1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[6]~3_combout\,
	datab => \inst7|inst1|Char_Count\(1),
	datac => \inst7|inst2|Mux1~10_combout\,
	datad => \inst7|inst2|Mux1~9_combout\,
	combout => \inst7|inst2|Mux1~11_combout\);

-- Location: LCCOMB_X32_Y17_N22
\inst7|inst2|Mux1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~13_combout\ = (\inst7|inst1|Char_Count\(1) & ((\inst7|inst2|Mux1~11_combout\ & ((!\inst7|inst2|Mux1~12_combout\))) # (!\inst7|inst2|Mux1~11_combout\ & (\inst7|inst2|Mux1~8_combout\)))) # (!\inst7|inst1|Char_Count\(1) & 
-- (((\inst7|inst2|Mux1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux1~8_combout\,
	datab => \inst7|inst1|Char_Count\(1),
	datac => \inst7|inst2|Mux1~12_combout\,
	datad => \inst7|inst2|Mux1~11_combout\,
	combout => \inst7|inst2|Mux1~13_combout\);

-- Location: LCCOMB_X32_Y17_N4
\inst7|inst2|Mux1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~14_combout\ = (\inst7|inst1|Char_Count\(3) & ((\inst7|inst1|AddressOut[8]~2_combout\) # ((\inst7|inst2|Mux1~7_combout\)))) # (!\inst7|inst1|Char_Count\(3) & (!\inst7|inst1|AddressOut[8]~2_combout\ & ((\inst7|inst2|Mux1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(3),
	datab => \inst7|inst1|AddressOut[8]~2_combout\,
	datac => \inst7|inst2|Mux1~7_combout\,
	datad => \inst7|inst2|Mux1~13_combout\,
	combout => \inst7|inst2|Mux1~14_combout\);

-- Location: LCCOMB_X31_Y17_N8
\inst7|inst2|Mux1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~16_combout\ = (\inst7|inst1|AddressOut[8]~2_combout\ & ((\inst7|inst2|Mux1~14_combout\ & (!\inst7|inst2|Mux1~19_combout\)) # (!\inst7|inst2|Mux1~14_combout\ & ((\inst7|inst2|Mux1~4_combout\))))) # (!\inst7|inst1|AddressOut[8]~2_combout\ 
-- & (((\inst7|inst2|Mux1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[8]~2_combout\,
	datab => \inst7|inst2|Mux1~19_combout\,
	datac => \inst7|inst2|Mux1~4_combout\,
	datad => \inst7|inst2|Mux1~14_combout\,
	combout => \inst7|inst2|Mux1~16_combout\);

-- Location: LCCOMB_X31_Y17_N14
\inst7|inst2|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~3_combout\ = (\inst7|inst1|Char_Count\(2) & (\inst7|inst1|Char_Count\(3) & (!\inst7|inst1|Char_Count\(4) & \inst7|inst1|Char_Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datab => \inst7|inst1|Char_Count\(3),
	datac => \inst7|inst1|Char_Count\(4),
	datad => \inst7|inst1|Char_Count\(1),
	combout => \inst7|inst2|Mux2~3_combout\);

-- Location: LCCOMB_X30_Y17_N28
\inst7|inst2|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~8_combout\ = (\inst7|inst1|Char_Count\(0) & (\inst7|inst1|Char_Count\(2) & ((\inst7|inst1|Char_Count\(3)) # (!\inst7|inst1|AddressOut[5]~1_combout\)))) # (!\inst7|inst1|Char_Count\(0) & (\inst7|inst1|Char_Count\(3) & 
-- (\inst7|inst1|Char_Count\(2) $ (\inst7|inst1|AddressOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|Char_Count\(3),
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux2~8_combout\);

-- Location: LCCOMB_X30_Y17_N30
\inst7|inst2|Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~9_combout\ = (\inst7|inst1|Char_Count\(4) & (!\inst7|inst1|Char_Count\(2) & (!\inst7|inst1|Char_Count\(3)))) # (!\inst7|inst1|Char_Count\(4) & (((\inst7|inst2|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(4),
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|Char_Count\(3),
	datad => \inst7|inst2|Mux2~8_combout\,
	combout => \inst7|inst2|Mux2~9_combout\);

-- Location: LCCOMB_X30_Y17_N20
\inst7|inst2|Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~10_combout\ = (\inst7|inst1|AddressOut[8]~2_combout\ & (((\inst7|inst2|Mux2~3_combout\) # (\inst7|inst2|Mux2~9_combout\)))) # (!\inst7|inst1|AddressOut[8]~2_combout\ & (\inst7|inst1|Char_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(3),
	datab => \inst7|inst1|AddressOut[8]~2_combout\,
	datac => \inst7|inst2|Mux2~3_combout\,
	datad => \inst7|inst2|Mux2~9_combout\,
	combout => \inst7|inst2|Mux2~10_combout\);

-- Location: LCCOMB_X31_Y17_N16
\inst7|inst2|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~6_combout\ = (!\inst7|inst1|Char_Count\(1) & ((\inst7|inst1|AddressOut[5]~1_combout\) # ((\inst7|inst1|AddressOut[6]~3_combout\) # (\inst7|inst1|AddressOut[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[5]~1_combout\,
	datab => \inst7|inst1|Char_Count\(1),
	datac => \inst7|inst1|AddressOut[6]~3_combout\,
	datad => \inst7|inst1|AddressOut[7]~4_combout\,
	combout => \inst7|inst2|Mux2~6_combout\);

-- Location: LCCOMB_X31_Y17_N12
\inst7|inst2|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~4_combout\ = (\inst7|inst1|Char_Count\(1) & (\inst7|inst1|AddressOut[6]~3_combout\ & (!\inst7|inst1|AddressOut[7]~4_combout\ & \inst7|inst1|AddressOut[5]~1_combout\))) # (!\inst7|inst1|Char_Count\(1) & 
-- (\inst7|inst1|AddressOut[7]~4_combout\ & (\inst7|inst1|AddressOut[6]~3_combout\ $ (\inst7|inst1|AddressOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux2~4_combout\);

-- Location: LCCOMB_X31_Y17_N30
\inst7|inst2|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~5_combout\ = (\inst7|inst1|Char_Count\(2) & (\inst7|inst1|Char_Count\(0) & (!\inst7|inst1|Char_Count\(4) & \inst7|inst2|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst1|Char_Count\(4),
	datad => \inst7|inst2|Mux2~4_combout\,
	combout => \inst7|inst2|Mux2~5_combout\);

-- Location: LCCOMB_X30_Y17_N18
\inst7|inst2|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~7_combout\ = (\inst7|inst2|Mux2~5_combout\) # ((\inst7|inst1|Char_Count\(4) & (!\inst7|inst1|Char_Count\(2) & \inst7|inst2|Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(4),
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst2|Mux2~6_combout\,
	datad => \inst7|inst2|Mux2~5_combout\,
	combout => \inst7|inst2|Mux2~7_combout\);

-- Location: LCCOMB_X30_Y17_N14
\inst7|inst2|Mux2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~11_combout\ = (\inst7|inst1|AddressOut[8]~2_combout\ & (\inst7|inst2|Mux3~2_combout\ & (\inst7|inst2|Mux2~10_combout\))) # (!\inst7|inst1|AddressOut[8]~2_combout\ & (((\inst7|inst2|Mux2~10_combout\) # (\inst7|inst2|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[8]~2_combout\,
	datab => \inst7|inst2|Mux3~2_combout\,
	datac => \inst7|inst2|Mux2~10_combout\,
	datad => \inst7|inst2|Mux2~7_combout\,
	combout => \inst7|inst2|Mux2~11_combout\);

-- Location: LCCOMB_X31_Y16_N10
\inst7|inst2|Mux2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~15_combout\ = (!\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst|Current_State\(1)) # (\inst7|inst1|AddressOut[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(1),
	datac => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux2~15_combout\);

-- Location: LCCOMB_X31_Y15_N20
\inst7|inst2|Mux2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~13_combout\ = (\inst7|inst1|Char_Count\(1) & (((!\inst7|inst1|AddressOut[5]~1_combout\)))) # (!\inst7|inst1|Char_Count\(1) & ((\inst7|inst1|AddressOut[5]~1_combout\ & (\inst7|inst1|Char_Count\(0) & !\inst7|inst1|Char_Count\(2))) # 
-- (!\inst7|inst1|AddressOut[5]~1_combout\ & ((\inst7|inst1|Char_Count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst1|Char_Count\(2),
	combout => \inst7|inst2|Mux2~13_combout\);

-- Location: LCCOMB_X31_Y15_N2
\inst7|inst2|Mux2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~12_combout\ = (\inst7|inst1|Char_Count\(2)) # (\inst7|inst1|AddressOut[5]~1_combout\ $ (((\inst7|inst1|Char_Count\(1)) # (\inst7|inst1|Char_Count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datab => \inst7|inst1|AddressOut[5]~1_combout\,
	datac => \inst7|inst1|Char_Count\(1),
	datad => \inst7|inst1|Char_Count\(0),
	combout => \inst7|inst2|Mux2~12_combout\);

-- Location: LCCOMB_X31_Y15_N10
\inst7|inst2|Mux2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~14_combout\ = (\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst7|inst1|AddressOut[6]~3_combout\ & ((\inst7|inst2|Mux2~12_combout\))) # (!\inst7|inst1|AddressOut[6]~3_combout\ & (\inst7|inst2|Mux2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[6]~3_combout\,
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst2|Mux2~13_combout\,
	datad => \inst7|inst2|Mux2~12_combout\,
	combout => \inst7|inst2|Mux2~14_combout\);

-- Location: LCCOMB_X30_Y17_N0
\inst7|inst2|Mux2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~16_combout\ = ((!\inst7|inst1|Char_Count\(4) & ((\inst7|inst2|Mux2~15_combout\) # (\inst7|inst2|Mux2~14_combout\)))) # (!\inst7|inst1|Char_Count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(4),
	datab => \inst7|inst2|Mux2~15_combout\,
	datac => \inst7|inst1|Char_Count\(3),
	datad => \inst7|inst2|Mux2~14_combout\,
	combout => \inst7|inst2|Mux2~16_combout\);

-- Location: LCCOMB_X30_Y17_N12
\inst7|inst2|Mux2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~18_combout\ = (\inst7|inst1|AddressOut[8]~2_combout\ & (((\inst7|inst2|Mux2~3_combout\)) # (!\inst7|inst1|Char_Count\(1)))) # (!\inst7|inst1|AddressOut[8]~2_combout\ & (((\inst7|inst2|Mux2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|AddressOut[8]~2_combout\,
	datac => \inst7|inst2|Mux2~3_combout\,
	datad => \inst7|inst2|Mux2~16_combout\,
	combout => \inst7|inst2|Mux2~18_combout\);

-- Location: LCCOMB_X30_Y17_N6
\inst7|inst2|Mux2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux2~19_combout\ = (\inst7|inst2|Mux2~17_combout\) # ((!\inst7|inst1|AddressOut~0_combout\ & (\inst7|inst2|Mux2~11_combout\ & \inst7|inst2|Mux2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux2~17_combout\,
	datab => \inst7|inst1|AddressOut~0_combout\,
	datac => \inst7|inst2|Mux2~11_combout\,
	datad => \inst7|inst2|Mux2~18_combout\,
	combout => \inst7|inst2|Mux2~19_combout\);

-- Location: LCCOMB_X30_Y17_N24
\inst7|inst1|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal5~0_combout\ = (!\inst7|inst2|Mux2~19_combout\ & ((!\inst7|inst2|Mux1~16_combout\) # (!\inst7|inst2|Mux1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux1~17_combout\,
	datac => \inst7|inst2|Mux1~16_combout\,
	datad => \inst7|inst2|Mux2~19_combout\,
	combout => \inst7|inst1|Equal5~0_combout\);

-- Location: LCCOMB_X30_Y17_N2
\inst7|inst2|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux0~1_combout\ = (!\inst7|inst1|Char_Count\(0) & (!\inst7|inst1|AddressOut~0_combout\ & (\inst7|inst2|Mux0~0_combout\ & !\inst7|inst1|Char_Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|AddressOut~0_combout\,
	datac => \inst7|inst2|Mux0~0_combout\,
	datad => \inst7|inst1|Char_Count\(1),
	combout => \inst7|inst2|Mux0~1_combout\);

-- Location: LCCOMB_X30_Y17_N8
\inst7|inst2|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux0~2_combout\ = (\inst7|inst2|Mux0~1_combout\ & ((\inst7|inst1|AddressOut[5]~1_combout\) # ((\inst7|inst1|AddressOut[8]~2_combout\) # (!\inst7|inst2|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[5]~1_combout\,
	datab => \inst7|inst1|AddressOut[8]~2_combout\,
	datac => \inst7|inst2|Mux3~2_combout\,
	datad => \inst7|inst2|Mux0~1_combout\,
	combout => \inst7|inst2|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y17_N28
\inst7|inst2|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~0_combout\ = (!\inst7|inst1|Char_Count\(0) & (\inst7|inst1|AddressOut~0_combout\ & (\inst7|inst1|Char_Count\(1) & \inst7|inst2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|AddressOut~0_combout\,
	datac => \inst7|inst1|Char_Count\(1),
	datad => \inst7|inst2|Mux0~0_combout\,
	combout => \inst7|inst2|Mux7~0_combout\);

-- Location: LCCOMB_X31_Y15_N28
\inst7|inst2|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~6_combout\ = (!\inst7|inst1|AddressOut[6]~3_combout\ & (!\inst7|inst1|Char_Count\(2) & (\inst7|inst1|AddressOut[5]~1_combout\ & !\inst7|inst1|AddressOut[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[6]~3_combout\,
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst1|AddressOut[7]~4_combout\,
	combout => \inst7|inst2|Mux3~6_combout\);

-- Location: LCCOMB_X30_Y15_N24
\inst7|inst2|Mux3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~16_combout\ = (\inst7|inst1|Char_Count\(1) & \inst7|inst2|Mux3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|Char_Count\(1),
	datad => \inst7|inst2|Mux3~6_combout\,
	combout => \inst7|inst2|Mux3~16_combout\);

-- Location: LCCOMB_X31_Y15_N26
\inst7|inst2|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~2_combout\ = (\inst7|inst1|Char_Count\(2) & (((\inst7|inst1|AddressOut[5]~1_combout\ & !\inst7|inst1|Char_Count\(0))))) # (!\inst7|inst1|Char_Count\(2) & (\inst7|inst1|Char_Count\(0) & (\inst7|inst1|Char_Count\(1) $ 
-- (!\inst7|inst1|AddressOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst1|Char_Count\(0),
	combout => \inst7|inst2|Mux7~2_combout\);

-- Location: LCCOMB_X31_Y15_N4
\inst7|inst2|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~1_combout\ = (\inst7|inst1|AddressOut[5]~1_combout\ & (\inst7|inst1|Char_Count\(1) & \inst7|inst2|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|AddressOut[5]~1_combout\,
	datac => \inst7|inst1|Char_Count\(1),
	datad => \inst7|inst2|Mux1~3_combout\,
	combout => \inst7|inst2|Mux7~1_combout\);

-- Location: LCCOMB_X30_Y15_N30
\inst7|inst2|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~3_combout\ = (\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst7|inst2|Mux7~1_combout\) # ((!\inst7|inst1|AddressOut[6]~3_combout\ & \inst7|inst2|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[6]~3_combout\,
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst2|Mux7~2_combout\,
	datad => \inst7|inst2|Mux7~1_combout\,
	combout => \inst7|inst2|Mux7~3_combout\);

-- Location: LCCOMB_X32_Y16_N4
\inst7|inst2|Mux7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~10_combout\ = (\inst7|inst1|AddressOut[7]~4_combout\ & (((\inst7|inst1|Char_Count\(0))) # (!\inst7|inst1|Char_Count\(2)))) # (!\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst7|inst1|AddressOut[5]~1_combout\ & 
-- (!\inst7|inst1|Char_Count\(2))) # (!\inst7|inst1|AddressOut[5]~1_combout\ & ((\inst7|inst1|Char_Count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst1|Char_Count\(0),
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux7~10_combout\);

-- Location: LCCOMB_X32_Y16_N16
\inst7|inst2|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~8_combout\ = (\inst7|inst1|AddressOut[7]~4_combout\ & (!\inst7|inst1|Char_Count\(0) & (\inst7|inst1|Char_Count\(2)))) # (!\inst7|inst1|AddressOut[7]~4_combout\ & (\inst7|inst1|Char_Count\(0) & (!\inst7|inst1|Char_Count\(2) & 
-- \inst7|inst1|AddressOut[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[7]~4_combout\,
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst1|Char_Count\(2),
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux7~8_combout\);

-- Location: LCCOMB_X32_Y16_N10
\inst7|inst2|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~7_combout\ = (\inst7|inst1|AddressOut[5]~1_combout\ & (\inst7|inst1|Char_Count\(2) $ (\inst7|inst1|AddressOut[7]~4_combout\ $ (\inst7|inst1|Char_Count\(0))))) # (!\inst7|inst1|AddressOut[5]~1_combout\ & 
-- (\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst7|inst1|Char_Count\(0)) # (!\inst7|inst1|Char_Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst1|Char_Count\(0),
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux7~7_combout\);

-- Location: LCCOMB_X32_Y16_N30
\inst7|inst2|Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~9_combout\ = (\inst7|inst1|Char_Count\(1) & ((\inst7|inst1|AddressOut[6]~3_combout\) # ((\inst7|inst2|Mux7~7_combout\)))) # (!\inst7|inst1|Char_Count\(1) & (!\inst7|inst1|AddressOut[6]~3_combout\ & (\inst7|inst2|Mux7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst2|Mux7~8_combout\,
	datad => \inst7|inst2|Mux7~7_combout\,
	combout => \inst7|inst2|Mux7~9_combout\);

-- Location: LCCOMB_X32_Y16_N26
\inst7|inst2|Mux7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~11_combout\ = (\inst7|inst1|AddressOut[6]~3_combout\ & ((\inst7|inst2|Mux7~9_combout\ & ((\inst7|inst2|Mux7~10_combout\))) # (!\inst7|inst2|Mux7~9_combout\ & (\inst7|inst2|Mux7~6_combout\)))) # (!\inst7|inst1|AddressOut[6]~3_combout\ & 
-- (((\inst7|inst2|Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux7~6_combout\,
	datab => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst2|Mux7~10_combout\,
	datad => \inst7|inst2|Mux7~9_combout\,
	combout => \inst7|inst2|Mux7~11_combout\);

-- Location: LCCOMB_X32_Y16_N12
\inst7|inst2|Mux7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~12_combout\ = (\inst7|inst1|AddressOut[8]~2_combout\ & ((\inst7|inst2|Mux7~5_combout\) # ((\inst7|inst1|Char_Count\(3))))) # (!\inst7|inst1|AddressOut[8]~2_combout\ & (((!\inst7|inst1|Char_Count\(3) & \inst7|inst2|Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux7~5_combout\,
	datab => \inst7|inst1|AddressOut[8]~2_combout\,
	datac => \inst7|inst1|Char_Count\(3),
	datad => \inst7|inst2|Mux7~11_combout\,
	combout => \inst7|inst2|Mux7~12_combout\);

-- Location: LCCOMB_X29_Y16_N30
\inst7|inst2|Mux7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~13_combout\ = (\inst7|inst1|Char_Count\(3) & ((\inst7|inst2|Mux7~12_combout\ & (\inst7|inst2|Mux3~16_combout\)) # (!\inst7|inst2|Mux7~12_combout\ & ((\inst7|inst2|Mux7~3_combout\))))) # (!\inst7|inst1|Char_Count\(3) & 
-- (((\inst7|inst2|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(3),
	datab => \inst7|inst2|Mux3~16_combout\,
	datac => \inst7|inst2|Mux7~3_combout\,
	datad => \inst7|inst2|Mux7~12_combout\,
	combout => \inst7|inst2|Mux7~13_combout\);

-- Location: LCCOMB_X29_Y16_N4
\inst7|inst2|Mux7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux7~14_combout\ = (\inst7|inst2|Mux7~0_combout\) # ((\inst7|inst2|Mux1~17_combout\ & \inst7|inst2|Mux7~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux1~17_combout\,
	datab => \inst7|inst2|Mux7~0_combout\,
	datad => \inst7|inst2|Mux7~13_combout\,
	combout => \inst7|inst2|Mux7~14_combout\);

-- Location: LCCOMB_X30_Y16_N8
\inst7|inst2|Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~11_combout\ = (!\inst7|inst1|AddressOut[7]~4_combout\ & (!\inst7|inst1|Char_Count\(2) & ((\inst7|inst1|Char_Count\(0)) # (\inst7|inst1|Char_Count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|Char_Count\(1),
	datac => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst1|Char_Count\(2),
	combout => \inst7|inst2|Mux6~11_combout\);

-- Location: LCCOMB_X30_Y16_N22
\inst7|inst2|Mux6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~12_combout\ = (!\inst7|inst1|AddressOut[6]~3_combout\ & (\inst7|inst2|Mux6~11_combout\ & \inst7|inst1|AddressOut[5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst2|Mux6~11_combout\,
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux6~12_combout\);

-- Location: LCCOMB_X30_Y16_N10
\inst7|inst2|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~2_combout\ = (\inst7|inst1|Char_Count\(2) & ((\inst7|inst1|Char_Count\(1)) # ((!\inst7|inst1|Char_Count\(0) & \inst7|inst1|AddressOut[5]~1_combout\)))) # (!\inst7|inst1|Char_Count\(2) & (\inst7|inst1|Char_Count\(0) & 
-- ((!\inst7|inst1|AddressOut[5]~1_combout\) # (!\inst7|inst1|Char_Count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datab => \inst7|inst1|Char_Count\(1),
	datac => \inst7|inst1|Char_Count\(0),
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux6~2_combout\);

-- Location: LCCOMB_X30_Y16_N4
\inst7|inst2|Mux6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~15_combout\ = (!\inst7|inst1|AddressOut[6]~3_combout\ & (!\inst7|inst1|AddressOut[7]~4_combout\ & \inst7|inst2|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst2|Mux6~2_combout\,
	combout => \inst7|inst2|Mux6~15_combout\);

-- Location: LCCOMB_X31_Y16_N30
\inst7|inst2|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~3_combout\ = (\inst7|inst1|AddressOut[6]~3_combout\ & ((\inst7|inst1|Char_Count\(0) $ (!\inst7|inst1|Char_Count\(1))) # (!\inst7|inst1|AddressOut[5]~1_combout\))) # (!\inst7|inst1|AddressOut[6]~3_combout\ & 
-- ((\inst7|inst1|AddressOut[5]~1_combout\ & ((!\inst7|inst1|Char_Count\(1)) # (!\inst7|inst1|Char_Count\(0)))) # (!\inst7|inst1|AddressOut[5]~1_combout\ & ((\inst7|inst1|Char_Count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst1|Char_Count\(1),
	combout => \inst7|inst2|Mux6~3_combout\);

-- Location: LCCOMB_X30_Y16_N24
\inst7|inst2|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~4_combout\ = (!\inst7|inst1|Char_Count\(2) & (\inst7|inst1|AddressOut[7]~4_combout\ & !\inst7|inst2|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst2|Mux6~3_combout\,
	combout => \inst7|inst2|Mux6~4_combout\);

-- Location: LCCOMB_X31_Y17_N4
\inst7|inst2|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~5_combout\ = (\inst7|inst1|Char_Count\(0) & (((!\inst7|inst1|Char_Count\(1) & \inst7|inst1|AddressOut[6]~3_combout\)) # (!\inst7|inst1|AddressOut[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst1|AddressOut[6]~3_combout\,
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux6~5_combout\);

-- Location: LCCOMB_X31_Y17_N6
\inst7|inst2|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~6_combout\ = (\inst7|inst1|AddressOut[6]~3_combout\ & ((\inst7|inst1|Char_Count\(1) & ((!\inst7|inst1|AddressOut[5]~1_combout\))) # (!\inst7|inst1|Char_Count\(1) & (!\inst7|inst1|Char_Count\(0) & \inst7|inst1|AddressOut[5]~1_combout\)))) 
-- # (!\inst7|inst1|AddressOut[6]~3_combout\ & (((\inst7|inst1|Char_Count\(0) & \inst7|inst1|AddressOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst1|AddressOut[6]~3_combout\,
	datad => \inst7|inst1|AddressOut[5]~1_combout\,
	combout => \inst7|inst2|Mux6~6_combout\);

-- Location: LCCOMB_X31_Y17_N0
\inst7|inst2|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~7_combout\ = (\inst7|inst1|AddressOut[7]~4_combout\ & (\inst7|inst1|Char_Count\(2))) # (!\inst7|inst1|AddressOut[7]~4_combout\ & (\inst7|inst2|Mux6~6_combout\ & (\inst7|inst1|Char_Count\(2) $ (!\inst7|inst1|AddressOut[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst1|AddressOut[6]~3_combout\,
	datad => \inst7|inst2|Mux6~6_combout\,
	combout => \inst7|inst2|Mux6~7_combout\);

-- Location: LCCOMB_X31_Y17_N18
\inst7|inst2|Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~9_combout\ = (\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst7|inst2|Mux6~7_combout\ & (!\inst7|inst2|Mux6~8_combout\)) # (!\inst7|inst2|Mux6~7_combout\ & ((\inst7|inst2|Mux6~5_combout\))))) # (!\inst7|inst1|AddressOut[7]~4_combout\ & 
-- (((\inst7|inst2|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux6~8_combout\,
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst2|Mux6~5_combout\,
	datad => \inst7|inst2|Mux6~7_combout\,
	combout => \inst7|inst2|Mux6~9_combout\);

-- Location: LCCOMB_X30_Y16_N2
\inst7|inst2|Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~10_combout\ = (\inst7|inst1|Char_Count\(3) & ((\inst7|inst1|AddressOut[8]~2_combout\) # ((\inst7|inst2|Mux6~4_combout\)))) # (!\inst7|inst1|Char_Count\(3) & (!\inst7|inst1|AddressOut[8]~2_combout\ & ((\inst7|inst2|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(3),
	datab => \inst7|inst1|AddressOut[8]~2_combout\,
	datac => \inst7|inst2|Mux6~4_combout\,
	datad => \inst7|inst2|Mux6~9_combout\,
	combout => \inst7|inst2|Mux6~10_combout\);

-- Location: LCCOMB_X30_Y16_N28
\inst7|inst2|Mux6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~13_combout\ = (\inst7|inst1|AddressOut[8]~2_combout\ & ((\inst7|inst2|Mux6~10_combout\ & (\inst7|inst2|Mux6~12_combout\)) # (!\inst7|inst2|Mux6~10_combout\ & ((\inst7|inst2|Mux6~15_combout\))))) # (!\inst7|inst1|AddressOut[8]~2_combout\ 
-- & (((\inst7|inst2|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[8]~2_combout\,
	datab => \inst7|inst2|Mux6~12_combout\,
	datac => \inst7|inst2|Mux6~15_combout\,
	datad => \inst7|inst2|Mux6~10_combout\,
	combout => \inst7|inst2|Mux6~13_combout\);

-- Location: LCCOMB_X30_Y16_N30
\inst7|inst2|Mux6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux6~14_combout\ = (\inst7|inst2|Mux1~17_combout\ & ((\inst7|inst2|Mux6~13_combout\) # ((\inst7|inst1|Char_Count\(0) & \inst7|inst2|Mux2~2_combout\)))) # (!\inst7|inst2|Mux1~17_combout\ & (\inst7|inst1|Char_Count\(0) & 
-- (\inst7|inst2|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux1~17_combout\,
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst2|Mux2~2_combout\,
	datad => \inst7|inst2|Mux6~13_combout\,
	combout => \inst7|inst2|Mux6~14_combout\);

-- Location: LCCOMB_X29_Y16_N2
\inst7|inst1|Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal5~2_combout\ = (!\inst7|inst2|Mux4~11_combout\ & (!\inst7|inst2|Mux0~2_combout\ & (!\inst7|inst2|Mux7~14_combout\ & !\inst7|inst2|Mux6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux4~11_combout\,
	datab => \inst7|inst2|Mux0~2_combout\,
	datac => \inst7|inst2|Mux7~14_combout\,
	datad => \inst7|inst2|Mux6~14_combout\,
	combout => \inst7|inst1|Equal5~2_combout\);

-- Location: LCCOMB_X30_Y15_N28
\inst7|inst1|Equal5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal5~3_combout\ = (!\inst7|inst2|Mux3~15_combout\ & (!\inst7|inst2|Mux5~15_combout\ & (\inst7|inst1|Equal5~0_combout\ & \inst7|inst1|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux3~15_combout\,
	datab => \inst7|inst2|Mux5~15_combout\,
	datac => \inst7|inst1|Equal5~0_combout\,
	datad => \inst7|inst1|Equal5~2_combout\,
	combout => \inst7|inst1|Equal5~3_combout\);

-- Location: LCCOMB_X30_Y15_N4
\inst7|inst1|Current_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~3_combout\ = (\inst7|inst1|Current_state~0_combout\ & ((\inst7|inst1|Current_state~2_combout\ & (\inst7|inst1|Current_state~1_combout\)) # (!\inst7|inst1|Current_state~2_combout\ & ((\inst7|inst1|Equal5~3_combout\) # 
-- (!\inst7|inst1|Current_state~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state~2_combout\,
	datab => \inst7|inst1|Current_state~1_combout\,
	datac => \inst7|inst1|Current_state~0_combout\,
	datad => \inst7|inst1|Equal5~3_combout\,
	combout => \inst7|inst1|Current_state~3_combout\);

-- Location: LCFF_X30_Y15_N5
\inst7|inst1|Current_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst1|Current_state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst1|Current_state\(0));

-- Location: LCCOMB_X30_Y15_N18
\inst7|inst1|Current_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~8_combout\ = (\inst7|inst1|Current_state\(1) & (!\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & !\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(1),
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst7|inst1|Current_state~8_combout\);

-- Location: LCCOMB_X30_Y15_N0
\inst7|inst1|Current_state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~9_combout\ = (\inst7|inst1|Current_state\(2) & (((\inst7|inst1|Current_state~8_combout\)))) # (!\inst7|inst1|Current_state\(2) & ((\inst7|inst|Equal2~0_combout\ & (\inst7|inst1|Current_state\(0))) # 
-- (!\inst7|inst|Equal2~0_combout\ & (!\inst7|inst1|Current_state\(0) & \inst7|inst1|Current_state~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal2~0_combout\,
	datab => \inst7|inst1|Current_state\(0),
	datac => \inst7|inst1|Current_state\(2),
	datad => \inst7|inst1|Current_state~8_combout\,
	combout => \inst7|inst1|Current_state~9_combout\);

-- Location: LCCOMB_X30_Y15_N20
\inst7|inst1|Current_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~12_combout\ = ((\inst7|inst1|Current_state\(2)) # (\inst7|inst|Current_state~5_combout\)) # (!\inst7|inst1|Current_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Current_state\(0),
	datac => \inst7|inst1|Current_state\(2),
	datad => \inst7|inst|Current_state~5_combout\,
	combout => \inst7|inst1|Current_state~12_combout\);

-- Location: LCCOMB_X30_Y15_N8
\inst7|inst2|Mux3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~13_combout\ = (\inst7|inst1|Char_Count\(1) & (\inst7|inst1|Char_Count\(0) & \inst7|inst2|Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Char_Count\(1),
	datac => \inst7|inst1|Char_Count\(0),
	datad => \inst7|inst2|Mux3~6_combout\,
	combout => \inst7|inst2|Mux3~13_combout\);

-- Location: LCCOMB_X30_Y15_N12
\inst7|inst2|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~3_combout\ = (\inst7|inst1|Char_Count\(0) & ((\inst7|inst1|Char_Count\(1) & (!\inst7|inst1|AddressOut[5]~1_combout\)) # (!\inst7|inst1|Char_Count\(1) & (\inst7|inst1|AddressOut[5]~1_combout\ & !\inst7|inst1|Char_Count\(2))))) # 
-- (!\inst7|inst1|Char_Count\(0) & (((!\inst7|inst1|AddressOut[5]~1_combout\ & \inst7|inst1|Char_Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|Char_Count\(1),
	datac => \inst7|inst1|AddressOut[5]~1_combout\,
	datad => \inst7|inst1|Char_Count\(2),
	combout => \inst7|inst2|Mux3~3_combout\);

-- Location: LCCOMB_X30_Y15_N26
\inst7|inst2|Mux3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~17_combout\ = (!\inst7|inst1|AddressOut[6]~3_combout\ & (!\inst7|inst1|AddressOut[7]~4_combout\ & \inst7|inst2|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst2|Mux3~3_combout\,
	combout => \inst7|inst2|Mux3~17_combout\);

-- Location: LCCOMB_X31_Y17_N2
\inst7|inst2|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~4_combout\ = (\inst7|inst1|Char_Count\(2)) # ((\inst7|inst1|Char_Count\(0)) # (\inst7|inst1|Char_Count\(1) $ (\inst7|inst1|AddressOut[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datab => \inst7|inst1|Char_Count\(1),
	datac => \inst7|inst1|AddressOut[6]~3_combout\,
	datad => \inst7|inst1|Char_Count\(0),
	combout => \inst7|inst2|Mux3~4_combout\);

-- Location: LCCOMB_X30_Y17_N22
\inst7|inst2|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~5_combout\ = (\inst7|inst1|AddressOut[5]~1_combout\ & (\inst7|inst1|AddressOut[7]~4_combout\ & !\inst7|inst2|Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[5]~1_combout\,
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst2|Mux3~4_combout\,
	combout => \inst7|inst2|Mux3~5_combout\);

-- Location: LCCOMB_X30_Y15_N6
\inst7|inst2|Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~10_combout\ = (\inst7|inst1|AddressOut[5]~1_combout\ & (!\inst7|inst1|Char_Count\(2) & (\inst7|inst1|AddressOut[6]~3_combout\ $ (\inst7|inst1|AddressOut[7]~4_combout\)))) # (!\inst7|inst1|AddressOut[5]~1_combout\ & 
-- (\inst7|inst1|AddressOut[6]~3_combout\ & (\inst7|inst1|AddressOut[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[6]~3_combout\,
	datab => \inst7|inst1|AddressOut[5]~1_combout\,
	datac => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst1|Char_Count\(2),
	combout => \inst7|inst2|Mux3~10_combout\);

-- Location: LCCOMB_X32_Y16_N14
\inst7|inst2|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~7_combout\ = (\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst7|inst1|AddressOut[5]~1_combout\ & (!\inst7|inst1|Char_Count\(2))) # (!\inst7|inst1|AddressOut[5]~1_combout\ & ((!\inst7|inst1|AddressOut[6]~3_combout\))))) # 
-- (!\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst7|inst1|AddressOut[6]~3_combout\ & ((!\inst7|inst1|Char_Count\(2)))) # (!\inst7|inst1|AddressOut[6]~3_combout\ & (\inst7|inst1|AddressOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[7]~4_combout\,
	datab => \inst7|inst1|AddressOut[5]~1_combout\,
	datac => \inst7|inst1|Char_Count\(2),
	datad => \inst7|inst1|AddressOut[6]~3_combout\,
	combout => \inst7|inst2|Mux3~7_combout\);

-- Location: LCCOMB_X32_Y16_N28
\inst7|inst2|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~8_combout\ = (\inst7|inst1|Char_Count\(2) & ((\inst7|inst1|AddressOut[5]~1_combout\ & (!\inst7|inst1|AddressOut[7]~4_combout\)) # (!\inst7|inst1|AddressOut[5]~1_combout\ & ((\inst7|inst1|AddressOut[6]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[5]~1_combout\,
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst1|Char_Count\(2),
	datad => \inst7|inst1|AddressOut[6]~3_combout\,
	combout => \inst7|inst2|Mux3~8_combout\);

-- Location: LCCOMB_X32_Y16_N22
\inst7|inst2|Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~9_combout\ = (\inst7|inst1|Char_Count\(1) & (\inst7|inst1|Char_Count\(0))) # (!\inst7|inst1|Char_Count\(1) & ((\inst7|inst1|Char_Count\(0) & (\inst7|inst2|Mux3~7_combout\)) # (!\inst7|inst1|Char_Count\(0) & 
-- ((\inst7|inst2|Mux3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst2|Mux3~7_combout\,
	datad => \inst7|inst2|Mux3~8_combout\,
	combout => \inst7|inst2|Mux3~9_combout\);

-- Location: LCCOMB_X29_Y15_N6
\inst7|inst2|Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~11_combout\ = (\inst7|inst1|Char_Count\(1) & ((\inst7|inst2|Mux3~9_combout\ & ((\inst7|inst2|Mux3~10_combout\))) # (!\inst7|inst2|Mux3~9_combout\ & (\inst7|inst2|Mux3~6_combout\)))) # (!\inst7|inst1|Char_Count\(1) & 
-- (((\inst7|inst2|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux3~6_combout\,
	datab => \inst7|inst1|Char_Count\(1),
	datac => \inst7|inst2|Mux3~10_combout\,
	datad => \inst7|inst2|Mux3~9_combout\,
	combout => \inst7|inst2|Mux3~11_combout\);

-- Location: LCCOMB_X29_Y15_N28
\inst7|inst2|Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~12_combout\ = (\inst7|inst1|AddressOut[8]~2_combout\ & (\inst7|inst1|Char_Count\(3))) # (!\inst7|inst1|AddressOut[8]~2_combout\ & ((\inst7|inst1|Char_Count\(3) & (\inst7|inst2|Mux3~5_combout\)) # (!\inst7|inst1|Char_Count\(3) & 
-- ((\inst7|inst2|Mux3~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[8]~2_combout\,
	datab => \inst7|inst1|Char_Count\(3),
	datac => \inst7|inst2|Mux3~5_combout\,
	datad => \inst7|inst2|Mux3~11_combout\,
	combout => \inst7|inst2|Mux3~12_combout\);

-- Location: LCCOMB_X29_Y15_N14
\inst7|inst2|Mux3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~14_combout\ = (\inst7|inst1|AddressOut[8]~2_combout\ & ((\inst7|inst2|Mux3~12_combout\ & (\inst7|inst2|Mux3~13_combout\)) # (!\inst7|inst2|Mux3~12_combout\ & ((\inst7|inst2|Mux3~17_combout\))))) # (!\inst7|inst1|AddressOut[8]~2_combout\ 
-- & (((\inst7|inst2|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[8]~2_combout\,
	datab => \inst7|inst2|Mux3~13_combout\,
	datac => \inst7|inst2|Mux3~17_combout\,
	datad => \inst7|inst2|Mux3~12_combout\,
	combout => \inst7|inst2|Mux3~14_combout\);

-- Location: LCCOMB_X29_Y15_N22
\inst7|inst1|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Equal5~1_combout\ = (!\inst7|inst2|Mux2~2_combout\ & (((!\inst7|inst2|Mux3~14_combout\ & !\inst7|inst2|Mux5~17_combout\)) # (!\inst7|inst2|Mux1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux1~17_combout\,
	datab => \inst7|inst2|Mux2~2_combout\,
	datac => \inst7|inst2|Mux3~14_combout\,
	datad => \inst7|inst2|Mux5~17_combout\,
	combout => \inst7|inst1|Equal5~1_combout\);

-- Location: LCCOMB_X30_Y15_N22
\inst7|inst1|Current_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~11_combout\ = (\inst7|inst1|Current_state~10_combout\ & (\inst7|inst1|Equal5~1_combout\ & (\inst7|inst1|Equal5~0_combout\ & \inst7|inst1|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state~10_combout\,
	datab => \inst7|inst1|Equal5~1_combout\,
	datac => \inst7|inst1|Equal5~0_combout\,
	datad => \inst7|inst1|Equal5~2_combout\,
	combout => \inst7|inst1|Current_state~11_combout\);

-- Location: LCCOMB_X30_Y15_N2
\inst7|inst1|Current_state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~13_combout\ = (\inst7|inst1|Current_state~9_combout\ & (((\inst7|inst1|Current_state~12_combout\)))) # (!\inst7|inst1|Current_state~9_combout\ & (\inst7|inst1|Current_state~7_combout\ & 
-- ((\inst7|inst1|Current_state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state~7_combout\,
	datab => \inst7|inst1|Current_state~9_combout\,
	datac => \inst7|inst1|Current_state~12_combout\,
	datad => \inst7|inst1|Current_state~11_combout\,
	combout => \inst7|inst1|Current_state~13_combout\);

-- Location: LCFF_X30_Y15_N3
\inst7|inst1|Current_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst1|Current_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst1|Current_state\(1));

-- Location: LCCOMB_X33_Y15_N0
\inst|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & !\inst|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y17_N10
\inst7|inst2|Mux1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~17_combout\ = (!\inst7|inst1|Char_Count\(4) & ((\inst7|inst1|Current_state\(2)) # (\inst7|inst1|Current_state\(0) $ (!\inst7|inst1|Current_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(0),
	datab => \inst7|inst1|Current_state\(1),
	datac => \inst7|inst1|Char_Count\(4),
	datad => \inst7|inst1|Current_state\(2),
	combout => \inst7|inst2|Mux1~17_combout\);

-- Location: LCCOMB_X29_Y15_N0
\inst7|inst2|Mux3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux3~15_combout\ = (\inst7|inst1|Char_Count\(0) & (\inst7|inst2|Mux1~17_combout\ & (\inst7|inst2|Mux3~14_combout\))) # (!\inst7|inst1|Char_Count\(0) & ((\inst7|inst2|Mux2~2_combout\) # ((\inst7|inst2|Mux1~17_combout\ & 
-- \inst7|inst2|Mux3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst2|Mux1~17_combout\,
	datac => \inst7|inst2|Mux3~14_combout\,
	datad => \inst7|inst2|Mux2~2_combout\,
	combout => \inst7|inst2|Mux3~15_combout\);

-- Location: LCCOMB_X29_Y16_N12
\inst7|inst1|Current_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~4_combout\ = (\inst7|inst|Equal2~0_combout\ & (!\inst7|inst2|Mux3~15_combout\ & (!\inst7|inst2|Mux5~15_combout\ & \inst7|inst1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal2~0_combout\,
	datab => \inst7|inst2|Mux3~15_combout\,
	datac => \inst7|inst2|Mux5~15_combout\,
	datad => \inst7|inst1|Equal5~0_combout\,
	combout => \inst7|inst1|Current_state~4_combout\);

-- Location: LCCOMB_X29_Y16_N22
\inst7|inst1|Current_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~5_combout\ = (\inst|Equal0~3_combout\ & ((\inst7|inst1|Current_state\(0)) # ((!\inst7|inst1|Current_state~4_combout\) # (!\inst7|inst1|Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(0),
	datab => \inst7|inst1|Equal5~2_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst7|inst1|Current_state~4_combout\,
	combout => \inst7|inst1|Current_state~5_combout\);

-- Location: LCCOMB_X29_Y16_N18
\inst7|inst1|Current_state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|Current_state~6_combout\ = (\inst7|inst1|Current_state~5_combout\ & ((\inst7|inst1|Current_state\(1) & (\inst7|inst1|Current_state\(0) & !\inst7|inst1|Current_state\(2))) # (!\inst7|inst1|Current_state\(1) & 
-- ((\inst7|inst1|Current_state\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(0),
	datab => \inst7|inst1|Current_state\(1),
	datac => \inst7|inst1|Current_state\(2),
	datad => \inst7|inst1|Current_state~5_combout\,
	combout => \inst7|inst1|Current_state~6_combout\);

-- Location: LCFF_X29_Y16_N19
\inst7|inst1|Current_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst1|Current_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst1|Current_state\(2));

-- Location: LCCOMB_X29_Y15_N8
\inst7|inst|Current_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~7_combout\ = (\inst7|inst|Equal2~0_combout\ & (\inst7|inst1|Current_state\(2) $ (\inst7|inst1|Current_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|Current_state\(2),
	datac => \inst7|inst|Equal2~0_combout\,
	datad => \inst7|inst1|Current_state\(0),
	combout => \inst7|inst|Current_state~7_combout\);

-- Location: LCCOMB_X29_Y15_N10
\inst7|inst|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal2~1_combout\ = (!\inst7|inst|Current_state\(3) & !\inst7|inst|Current_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|Current_state\(3),
	datac => \inst7|inst|Current_state\(0),
	combout => \inst7|inst|Equal2~1_combout\);

-- Location: LCCOMB_X29_Y15_N30
\inst7|inst|Current_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~8_combout\ = (\inst7|inst|Equal2~1_combout\ & ((\inst7|inst|Current_state\(2)) # ((\inst7|inst|Current_state\(1)) # (\inst7|inst|Current_state~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Current_state\(2),
	datab => \inst7|inst|Current_state\(1),
	datac => \inst7|inst|Current_state~7_combout\,
	datad => \inst7|inst|Equal2~1_combout\,
	combout => \inst7|inst|Current_state~8_combout\);

-- Location: LCCOMB_X29_Y15_N4
\inst7|inst|Current_state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~9_combout\ = (\inst7|inst|Current_state~8_combout\ & ((\inst|Equal0~3_combout\) # ((\inst7|inst|Current_state~6_combout\ & \inst7|inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Current_state~6_combout\,
	datab => \inst7|inst|Current_state~8_combout\,
	datac => \inst7|inst|Equal2~0_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst7|inst|Current_state~9_combout\);

-- Location: LCCOMB_X29_Y16_N6
\inst7|inst|Current_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~11_combout\ = ((!\inst7|inst1|Equal5~1_combout\) # (!\inst7|inst1|Equal5~2_combout\)) # (!\inst7|inst1|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Equal5~0_combout\,
	datab => \inst7|inst1|Equal5~2_combout\,
	datad => \inst7|inst1|Equal5~1_combout\,
	combout => \inst7|inst|Current_state~11_combout\);

-- Location: LCCOMB_X29_Y16_N26
\inst7|inst|Current_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~12_combout\ = (\inst7|inst|Current_state~9_combout\ & ((\inst7|inst|Current_state~10_combout\) # ((\inst7|inst|Current_state~5_combout\ & \inst7|inst|Current_state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Current_state~10_combout\,
	datab => \inst7|inst|Current_state~5_combout\,
	datac => \inst7|inst|Current_state~9_combout\,
	datad => \inst7|inst|Current_state~11_combout\,
	combout => \inst7|inst|Current_state~12_combout\);

-- Location: LCFF_X29_Y16_N27
\inst7|inst|Current_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Current_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|Current_state\(0));

-- Location: LCCOMB_X28_Y17_N16
\inst7|inst|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~1_cout\ = CARRY(\inst7|inst|timeLCDClk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|timeLCDClk\(0),
	datad => VCC,
	cout => \inst7|inst|Add0~1_cout\);

-- Location: LCCOMB_X28_Y17_N18
\inst7|inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~2_combout\ = (\inst7|inst|timeLCDClk\(1) & (\inst7|inst|Add0~1_cout\ & VCC)) # (!\inst7|inst|timeLCDClk\(1) & (!\inst7|inst|Add0~1_cout\))
-- \inst7|inst|Add0~3\ = CARRY((!\inst7|inst|timeLCDClk\(1) & !\inst7|inst|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(1),
	datad => VCC,
	cin => \inst7|inst|Add0~1_cout\,
	combout => \inst7|inst|Add0~2_combout\,
	cout => \inst7|inst|Add0~3\);

-- Location: LCFF_X28_Y17_N19
\inst7|inst|timeLCDClk[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Add0~2_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(1));

-- Location: LCCOMB_X28_Y17_N22
\inst7|inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~6_combout\ = (\inst7|inst|timeLCDClk\(3) & (!\inst7|inst|Add0~5\)) # (!\inst7|inst|timeLCDClk\(3) & (\inst7|inst|Add0~5\ & VCC))
-- \inst7|inst|Add0~7\ = CARRY((\inst7|inst|timeLCDClk\(3) & !\inst7|inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(3),
	datad => VCC,
	cin => \inst7|inst|Add0~5\,
	combout => \inst7|inst|Add0~6_combout\,
	cout => \inst7|inst|Add0~7\);

-- Location: LCCOMB_X29_Y17_N20
\inst7|inst|timeLCDClk[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|timeLCDClk[3]~2_combout\ = !\inst7|inst|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst|Add0~6_combout\,
	combout => \inst7|inst|timeLCDClk[3]~2_combout\);

-- Location: LCFF_X29_Y16_N7
\inst7|inst|timeLCDClk[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	sdata => \inst7|inst|timeLCDClk[3]~2_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	sload => VCC,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(3));

-- Location: LCCOMB_X28_Y17_N24
\inst7|inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~8_combout\ = (\inst7|inst|timeLCDClk\(4) & ((GND) # (!\inst7|inst|Add0~7\))) # (!\inst7|inst|timeLCDClk\(4) & (\inst7|inst|Add0~7\ $ (GND)))
-- \inst7|inst|Add0~9\ = CARRY((\inst7|inst|timeLCDClk\(4)) # (!\inst7|inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|timeLCDClk\(4),
	datad => VCC,
	cin => \inst7|inst|Add0~7\,
	combout => \inst7|inst|Add0~8_combout\,
	cout => \inst7|inst|Add0~9\);

-- Location: LCFF_X28_Y17_N25
\inst7|inst|timeLCDClk[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Add0~8_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(4));

-- Location: LCCOMB_X28_Y17_N0
\inst7|inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal0~0_combout\ = (!\inst7|inst|timeLCDClk\(2) & (!\inst7|inst|timeLCDClk\(1) & (!\inst7|inst|timeLCDClk\(4) & \inst7|inst|timeLCDClk\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|timeLCDClk\(2),
	datab => \inst7|inst|timeLCDClk\(1),
	datac => \inst7|inst|timeLCDClk\(4),
	datad => \inst7|inst|timeLCDClk\(3),
	combout => \inst7|inst|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y17_N26
\inst7|inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~10_combout\ = (\inst7|inst|timeLCDClk\(5) & (\inst7|inst|Add0~9\ & VCC)) # (!\inst7|inst|timeLCDClk\(5) & (!\inst7|inst|Add0~9\))
-- \inst7|inst|Add0~11\ = CARRY((!\inst7|inst|timeLCDClk\(5) & !\inst7|inst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(5),
	datad => VCC,
	cin => \inst7|inst|Add0~9\,
	combout => \inst7|inst|Add0~10_combout\,
	cout => \inst7|inst|Add0~11\);

-- Location: LCFF_X28_Y17_N27
\inst7|inst|timeLCDClk[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Add0~10_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(5));

-- Location: LCCOMB_X28_Y17_N28
\inst7|inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~12_combout\ = (\inst7|inst|timeLCDClk\(6) & (\inst7|inst|Add0~11\ $ (GND))) # (!\inst7|inst|timeLCDClk\(6) & ((GND) # (!\inst7|inst|Add0~11\)))
-- \inst7|inst|Add0~13\ = CARRY((!\inst7|inst|Add0~11\) # (!\inst7|inst|timeLCDClk\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(6),
	datad => VCC,
	cin => \inst7|inst|Add0~11\,
	combout => \inst7|inst|Add0~12_combout\,
	cout => \inst7|inst|Add0~13\);

-- Location: LCCOMB_X29_Y17_N22
\inst7|inst|timeLCDClk[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|timeLCDClk[6]~3_combout\ = !\inst7|inst|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst|Add0~12_combout\,
	combout => \inst7|inst|timeLCDClk[6]~3_combout\);

-- Location: LCFF_X29_Y16_N5
\inst7|inst|timeLCDClk[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	sdata => \inst7|inst|timeLCDClk[6]~3_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	sload => VCC,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(6));

-- Location: LCCOMB_X28_Y17_N30
\inst7|inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~14_combout\ = (\inst7|inst|timeLCDClk\(7) & (\inst7|inst|Add0~13\ & VCC)) # (!\inst7|inst|timeLCDClk\(7) & (!\inst7|inst|Add0~13\))
-- \inst7|inst|Add0~15\ = CARRY((!\inst7|inst|timeLCDClk\(7) & !\inst7|inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(7),
	datad => VCC,
	cin => \inst7|inst|Add0~13\,
	combout => \inst7|inst|Add0~14_combout\,
	cout => \inst7|inst|Add0~15\);

-- Location: LCFF_X28_Y17_N31
\inst7|inst|timeLCDClk[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Add0~14_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(7));

-- Location: LCCOMB_X28_Y16_N0
\inst7|inst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~16_combout\ = (\inst7|inst|timeLCDClk\(8) & ((GND) # (!\inst7|inst|Add0~15\))) # (!\inst7|inst|timeLCDClk\(8) & (\inst7|inst|Add0~15\ $ (GND)))
-- \inst7|inst|Add0~17\ = CARRY((\inst7|inst|timeLCDClk\(8)) # (!\inst7|inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(8),
	datad => VCC,
	cin => \inst7|inst|Add0~15\,
	combout => \inst7|inst|Add0~16_combout\,
	cout => \inst7|inst|Add0~17\);

-- Location: LCFF_X28_Y16_N1
\inst7|inst|timeLCDClk[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Add0~16_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(8));

-- Location: LCCOMB_X28_Y16_N2
\inst7|inst|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~18_combout\ = (\inst7|inst|timeLCDClk\(9) & (\inst7|inst|Add0~17\ & VCC)) # (!\inst7|inst|timeLCDClk\(9) & (!\inst7|inst|Add0~17\))
-- \inst7|inst|Add0~19\ = CARRY((!\inst7|inst|timeLCDClk\(9) & !\inst7|inst|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(9),
	datad => VCC,
	cin => \inst7|inst|Add0~17\,
	combout => \inst7|inst|Add0~18_combout\,
	cout => \inst7|inst|Add0~19\);

-- Location: LCFF_X28_Y16_N3
\inst7|inst|timeLCDClk[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Add0~18_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(9));

-- Location: LCCOMB_X28_Y16_N4
\inst7|inst|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~20_combout\ = (\inst7|inst|timeLCDClk\(10) & ((GND) # (!\inst7|inst|Add0~19\))) # (!\inst7|inst|timeLCDClk\(10) & (\inst7|inst|Add0~19\ $ (GND)))
-- \inst7|inst|Add0~21\ = CARRY((\inst7|inst|timeLCDClk\(10)) # (!\inst7|inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(10),
	datad => VCC,
	cin => \inst7|inst|Add0~19\,
	combout => \inst7|inst|Add0~20_combout\,
	cout => \inst7|inst|Add0~21\);

-- Location: LCFF_X28_Y16_N5
\inst7|inst|timeLCDClk[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Add0~20_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(10));

-- Location: LCCOMB_X28_Y16_N18
\inst7|inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal0~2_combout\ = (\inst7|inst|timeLCDClk\(11) & (!\inst7|inst|timeLCDClk\(9) & (!\inst7|inst|timeLCDClk\(10) & !\inst7|inst|timeLCDClk\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|timeLCDClk\(11),
	datab => \inst7|inst|timeLCDClk\(9),
	datac => \inst7|inst|timeLCDClk\(10),
	datad => \inst7|inst|timeLCDClk\(8),
	combout => \inst7|inst|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y16_N8
\inst7|inst|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~24_combout\ = (\inst7|inst|timeLCDClk\(12) & ((GND) # (!\inst7|inst|Add0~23\))) # (!\inst7|inst|timeLCDClk\(12) & (\inst7|inst|Add0~23\ $ (GND)))
-- \inst7|inst|Add0~25\ = CARRY((\inst7|inst|timeLCDClk\(12)) # (!\inst7|inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(12),
	datad => VCC,
	cin => \inst7|inst|Add0~23\,
	combout => \inst7|inst|Add0~24_combout\,
	cout => \inst7|inst|Add0~25\);

-- Location: LCFF_X28_Y16_N9
\inst7|inst|timeLCDClk[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Add0~24_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(12));

-- Location: LCCOMB_X28_Y16_N10
\inst7|inst|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~26_combout\ = (\inst7|inst|timeLCDClk\(13) & (!\inst7|inst|Add0~25\)) # (!\inst7|inst|timeLCDClk\(13) & (\inst7|inst|Add0~25\ & VCC))
-- \inst7|inst|Add0~27\ = CARRY((\inst7|inst|timeLCDClk\(13) & !\inst7|inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(13),
	datad => VCC,
	cin => \inst7|inst|Add0~25\,
	combout => \inst7|inst|Add0~26_combout\,
	cout => \inst7|inst|Add0~27\);

-- Location: LCCOMB_X28_Y16_N28
\inst7|inst|timeLCDClk[13]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|timeLCDClk[13]~6_combout\ = !\inst7|inst|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst|Add0~26_combout\,
	combout => \inst7|inst|timeLCDClk[13]~6_combout\);

-- Location: LCFF_X28_Y16_N29
\inst7|inst|timeLCDClk[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|timeLCDClk[13]~6_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(13));

-- Location: LCCOMB_X28_Y16_N12
\inst7|inst|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~28_combout\ = (\inst7|inst|timeLCDClk\(14) & (\inst7|inst|Add0~27\ $ (GND))) # (!\inst7|inst|timeLCDClk\(14) & ((GND) # (!\inst7|inst|Add0~27\)))
-- \inst7|inst|Add0~29\ = CARRY((!\inst7|inst|Add0~27\) # (!\inst7|inst|timeLCDClk\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(14),
	datad => VCC,
	cin => \inst7|inst|Add0~27\,
	combout => \inst7|inst|Add0~28_combout\,
	cout => \inst7|inst|Add0~29\);

-- Location: LCCOMB_X29_Y16_N10
\inst7|inst|timeLCDClk[14]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|timeLCDClk[14]~7_combout\ = !\inst7|inst|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst|Add0~28_combout\,
	combout => \inst7|inst|timeLCDClk[14]~7_combout\);

-- Location: LCFF_X29_Y16_N11
\inst7|inst|timeLCDClk[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|timeLCDClk[14]~7_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(14));

-- Location: LCCOMB_X28_Y16_N14
\inst7|inst|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~30_combout\ = (\inst7|inst|timeLCDClk\(15) & (!\inst7|inst|Add0~29\)) # (!\inst7|inst|timeLCDClk\(15) & (\inst7|inst|Add0~29\ & VCC))
-- \inst7|inst|Add0~31\ = CARRY((\inst7|inst|timeLCDClk\(15) & !\inst7|inst|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|timeLCDClk\(15),
	datad => VCC,
	cin => \inst7|inst|Add0~29\,
	combout => \inst7|inst|Add0~30_combout\,
	cout => \inst7|inst|Add0~31\);

-- Location: LCCOMB_X28_Y16_N30
\inst7|inst|timeLCDClk[15]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|timeLCDClk[15]~8_combout\ = !\inst7|inst|Add0~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst|Add0~30_combout\,
	combout => \inst7|inst|timeLCDClk[15]~8_combout\);

-- Location: LCFF_X29_Y16_N21
\inst7|inst|timeLCDClk[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	sdata => \inst7|inst|timeLCDClk[15]~8_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	sload => VCC,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(15));

-- Location: LCCOMB_X28_Y16_N20
\inst7|inst|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal0~4_combout\ = (\inst7|inst|Equal0~3_combout\ & (\inst7|inst|Equal0~2_combout\ & (\inst7|inst|timeLCDClk\(14) & \inst7|inst|timeLCDClk\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal0~3_combout\,
	datab => \inst7|inst|Equal0~2_combout\,
	datac => \inst7|inst|timeLCDClk\(14),
	datad => \inst7|inst|timeLCDClk\(15),
	combout => \inst7|inst|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y16_N16
\inst7|inst|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Add0~32_combout\ = \inst7|inst|Add0~31\ $ (!\inst7|inst|timeLCDClk\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst|timeLCDClk\(16),
	cin => \inst7|inst|Add0~31\,
	combout => \inst7|inst|Add0~32_combout\);

-- Location: LCCOMB_X28_Y16_N26
\inst7|inst|timeLCDClk[16]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|timeLCDClk[16]~1_combout\ = !\inst7|inst|Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst|Add0~32_combout\,
	combout => \inst7|inst|timeLCDClk[16]~1_combout\);

-- Location: LCFF_X28_Y16_N27
\inst7|inst|timeLCDClk[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|timeLCDClk[16]~1_combout\,
	aclr => \inst7|inst|Equal2~0_combout\,
	ena => \inst7|inst|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|timeLCDClk\(16));

-- Location: LCCOMB_X28_Y17_N12
\inst7|inst|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal0~5_combout\ = (((!\inst7|inst|timeLCDClk\(16)) # (!\inst7|inst|Equal0~4_combout\)) # (!\inst7|inst|Equal0~0_combout\)) # (!\inst7|inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal0~1_combout\,
	datab => \inst7|inst|Equal0~0_combout\,
	datac => \inst7|inst|Equal0~4_combout\,
	datad => \inst7|inst|timeLCDClk\(16),
	combout => \inst7|inst|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y15_N26
\inst7|inst|Current_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~0_combout\ = (\inst7|inst|Current_state\(2) & (!\inst7|inst|Current_state\(3) & (\inst7|inst|Current_state\(0)))) # (!\inst7|inst|Current_state\(2) & (\inst7|inst|Current_state\(3) & (!\inst7|inst|Current_state\(0) & 
-- \inst7|inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Current_state\(2),
	datab => \inst7|inst|Current_state\(3),
	datac => \inst7|inst|Current_state\(0),
	datad => \inst7|inst|Equal0~5_combout\,
	combout => \inst7|inst|Current_state~0_combout\);

-- Location: LCCOMB_X29_Y16_N24
\inst7|inst|Current_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~1_combout\ = (\inst7|inst|Current_state~0_combout\ & (\inst|Equal0~3_combout\ & (\inst7|inst|Current_state\(1) $ (!\inst7|inst|Current_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Current_state\(1),
	datab => \inst7|inst|Current_state~0_combout\,
	datac => \inst7|inst|Current_state\(0),
	datad => \inst|Equal0~3_combout\,
	combout => \inst7|inst|Current_state~1_combout\);

-- Location: LCFF_X29_Y16_N25
\inst7|inst|Current_state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Current_state~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|Current_state\(3));

-- Location: LCCOMB_X33_Y16_N6
\inst7|inst|Current_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~2_combout\ = (!\inst|Equal0~2_combout\ & (!\inst7|inst|Current_state\(3) & (!\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst7|inst|Current_state\(3),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst7|inst|Current_state~2_combout\);

-- Location: LCCOMB_X29_Y16_N8
\inst7|inst|Current_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~4_combout\ = (\inst7|inst|Current_state~2_combout\ & (\inst7|inst|Current_state\(0) $ (\inst7|inst|Current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Current_state\(0),
	datac => \inst7|inst|Current_state\(1),
	datad => \inst7|inst|Current_state~2_combout\,
	combout => \inst7|inst|Current_state~4_combout\);

-- Location: LCFF_X29_Y16_N9
\inst7|inst|Current_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Current_state~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|Current_state\(1));

-- Location: LCCOMB_X29_Y16_N14
\inst7|inst|Current_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|Current_state~3_combout\ = (\inst7|inst|Current_state~2_combout\ & (\inst7|inst|Current_state\(2) $ (((\inst7|inst|Current_state\(0) & \inst7|inst|Current_state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Current_state\(0),
	datab => \inst7|inst|Current_state\(1),
	datac => \inst7|inst|Current_state\(2),
	datad => \inst7|inst|Current_state~2_combout\,
	combout => \inst7|inst|Current_state~3_combout\);

-- Location: LCFF_X29_Y16_N15
\inst7|inst|Current_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst13~clkctrl_outclk\,
	datain => \inst7|inst|Current_state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|Current_state\(2));

-- Location: LCCOMB_X29_Y15_N24
\inst7|inst|E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|E~0_combout\ = (\inst7|inst|Current_state\(3)) # ((!\inst7|inst|Current_state\(2) & !\inst7|inst|Current_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Current_state\(2),
	datab => \inst7|inst|Current_state\(1),
	datac => \inst7|inst|Current_state\(3),
	combout => \inst7|inst|E~0_combout\);

-- Location: LCCOMB_X29_Y17_N2
\inst7|inst1|DataOrCommand~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|DataOrCommand~3_combout\ = (!\inst7|inst2|Mux0~2_combout\ & ((\inst7|inst2|Mux2~19_combout\) # ((\inst7|inst2|Mux1~17_combout\ & \inst7|inst2|Mux1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux2~19_combout\,
	datab => \inst7|inst2|Mux0~2_combout\,
	datac => \inst7|inst2|Mux1~17_combout\,
	datad => \inst7|inst2|Mux1~16_combout\,
	combout => \inst7|inst1|DataOrCommand~3_combout\);

-- Location: LCCOMB_X29_Y17_N18
\inst7|inst1|DataOrCommand~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|DataOrCommand~2_combout\ = (\inst7|inst1|Current_state\(2) & (!\inst7|inst1|Current_state\(1) & (!\inst7|inst1|DataOrCommand~3_combout\))) # (!\inst7|inst1|Current_state\(2) & (\inst7|inst1|Current_state\(1) $ 
-- (((\inst7|inst1|Current_state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Current_state\(1),
	datab => \inst7|inst1|DataOrCommand~3_combout\,
	datac => \inst7|inst1|Current_state\(2),
	datad => \inst7|inst1|Current_state\(0),
	combout => \inst7|inst1|DataOrCommand~2_combout\);

-- Location: LCCOMB_X29_Y17_N12
\inst7|inst2|Mux1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux1~18_combout\ = (\inst7|inst2|Mux1~17_combout\ & \inst7|inst2|Mux1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|Mux1~17_combout\,
	datad => \inst7|inst2|Mux1~16_combout\,
	combout => \inst7|inst2|Mux1~18_combout\);

-- Location: LCCOMB_X31_Y16_N0
\inst7|inst2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~0_combout\ = (\inst7|inst1|Char_Count\(2) & (!\inst7|inst1|AddressOut[6]~3_combout\ & ((!\inst7|inst1|Char_Count\(0)) # (!\inst7|inst1|Char_Count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(1),
	datab => \inst7|inst1|Char_Count\(2),
	datac => \inst7|inst1|Char_Count\(0),
	datad => \inst7|inst1|AddressOut[6]~3_combout\,
	combout => \inst7|inst2|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y16_N8
\inst7|inst2|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~1_combout\ = (\inst7|inst1|AddressOut[5]~1_combout\ & (!\inst7|inst1|AddressOut[7]~4_combout\ & \inst7|inst2|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|AddressOut[5]~1_combout\,
	datac => \inst7|inst1|AddressOut[7]~4_combout\,
	datad => \inst7|inst2|Mux4~0_combout\,
	combout => \inst7|inst2|Mux4~1_combout\);

-- Location: LCCOMB_X31_Y16_N22
\inst7|inst2|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~6_combout\ = (!\inst7|inst1|AddressOut[7]~4_combout\ & ((\inst7|inst1|Char_Count\(2)) # (\inst7|inst1|Char_Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|AddressOut[7]~4_combout\,
	datac => \inst7|inst1|Char_Count\(2),
	datad => \inst7|inst1|Char_Count\(1),
	combout => \inst7|inst2|Mux4~6_combout\);

-- Location: LCCOMB_X31_Y16_N4
\inst7|inst2|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~5_combout\ = (\inst7|inst1|AddressOut[5]~1_combout\ & (\inst7|inst1|Char_Count\(0) & (!\inst7|inst1|Char_Count\(2) & !\inst7|inst1|AddressOut[6]~3_combout\))) # (!\inst7|inst1|AddressOut[5]~1_combout\ & ((\inst7|inst1|Char_Count\(2) & 
-- ((\inst7|inst1|AddressOut[6]~3_combout\))) # (!\inst7|inst1|Char_Count\(2) & (!\inst7|inst1|Char_Count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|AddressOut[5]~1_combout\,
	datac => \inst7|inst1|Char_Count\(2),
	datad => \inst7|inst1|AddressOut[6]~3_combout\,
	combout => \inst7|inst2|Mux4~5_combout\);

-- Location: LCCOMB_X31_Y16_N6
\inst7|inst2|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~4_combout\ = (\inst7|inst1|Char_Count\(0) & ((\inst7|inst1|Char_Count\(1) $ (\inst7|inst1|AddressOut[6]~3_combout\)))) # (!\inst7|inst1|Char_Count\(0) & ((\inst7|inst1|AddressOut[6]~3_combout\) # (\inst7|inst1|AddressOut[5]~1_combout\ $ 
-- (!\inst7|inst1|Char_Count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(0),
	datab => \inst7|inst1|AddressOut[5]~1_combout\,
	datac => \inst7|inst1|Char_Count\(1),
	datad => \inst7|inst1|AddressOut[6]~3_combout\,
	combout => \inst7|inst2|Mux4~4_combout\);

-- Location: LCCOMB_X31_Y16_N24
\inst7|inst2|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~7_combout\ = (\inst7|inst2|Mux4~4_combout\ & ((\inst7|inst2|Mux4~6_combout\ & ((\inst7|inst2|Mux4~5_combout\))) # (!\inst7|inst2|Mux4~6_combout\ & (\inst7|inst1|Char_Count\(2) & !\inst7|inst2|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(2),
	datab => \inst7|inst2|Mux4~6_combout\,
	datac => \inst7|inst2|Mux4~5_combout\,
	datad => \inst7|inst2|Mux4~4_combout\,
	combout => \inst7|inst2|Mux4~7_combout\);

-- Location: LCCOMB_X32_Y16_N8
\inst7|inst2|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~2_combout\ = (\inst7|inst1|Char_Count\(2)) # ((\inst7|inst1|AddressOut[5]~1_combout\ & ((!\inst7|inst1|Char_Count\(1)))) # (!\inst7|inst1|AddressOut[5]~1_combout\ & ((\inst7|inst1|Char_Count\(0)) # (\inst7|inst1|Char_Count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|AddressOut[5]~1_combout\,
	datab => \inst7|inst1|Char_Count\(0),
	datac => \inst7|inst1|Char_Count\(1),
	datad => \inst7|inst1|Char_Count\(2),
	combout => \inst7|inst2|Mux4~2_combout\);

-- Location: LCCOMB_X32_Y16_N18
\inst7|inst2|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~3_combout\ = (!\inst7|inst1|AddressOut[6]~3_combout\ & (!\inst7|inst2|Mux4~2_combout\ & \inst7|inst1|AddressOut[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|AddressOut[6]~3_combout\,
	datac => \inst7|inst2|Mux4~2_combout\,
	datad => \inst7|inst1|AddressOut[7]~4_combout\,
	combout => \inst7|inst2|Mux4~3_combout\);

-- Location: LCCOMB_X31_Y16_N18
\inst7|inst2|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~8_combout\ = (\inst7|inst1|Char_Count\(3) & ((\inst7|inst1|AddressOut[8]~2_combout\) # ((\inst7|inst2|Mux4~3_combout\)))) # (!\inst7|inst1|Char_Count\(3) & (!\inst7|inst1|AddressOut[8]~2_combout\ & (\inst7|inst2|Mux4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|Char_Count\(3),
	datab => \inst7|inst1|AddressOut[8]~2_combout\,
	datac => \inst7|inst2|Mux4~7_combout\,
	datad => \inst7|inst2|Mux4~3_combout\,
	combout => \inst7|inst2|Mux4~8_combout\);

-- Location: LCCOMB_X30_Y16_N20
\inst7|inst2|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~10_combout\ = (\inst7|inst1|AddressOut[8]~2_combout\ & ((\inst7|inst2|Mux4~8_combout\ & (\inst7|inst2|Mux4~9_combout\)) # (!\inst7|inst2|Mux4~8_combout\ & ((\inst7|inst2|Mux4~1_combout\))))) # (!\inst7|inst1|AddressOut[8]~2_combout\ & 
-- (((\inst7|inst2|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux4~9_combout\,
	datab => \inst7|inst1|AddressOut[8]~2_combout\,
	datac => \inst7|inst2|Mux4~1_combout\,
	datad => \inst7|inst2|Mux4~8_combout\,
	combout => \inst7|inst2|Mux4~10_combout\);

-- Location: LCCOMB_X29_Y16_N16
\inst7|inst2|Mux4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|Mux4~11_combout\ = (\inst7|inst2|Mux2~2_combout\) # ((\inst7|inst2|Mux1~17_combout\ & \inst7|inst2|Mux4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|Mux1~17_combout\,
	datac => \inst7|inst2|Mux2~2_combout\,
	datad => \inst7|inst2|Mux4~10_combout\,
	combout => \inst7|inst2|Mux4~11_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: LCCOMB_X32_Y14_N20
\inst|CountReset~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CountReset~0_combout\ = (\inst|Current_State\(2) & (((\inst|Current_State\(3)) # (!\inst|Current_State\(0))))) # (!\inst|Current_State\(2) & (((!\inst|Current_State\(3))) # (!\StartOfTape~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartOfTape~combout\,
	datab => \inst|Current_State\(2),
	datac => \inst|Current_State\(3),
	datad => \inst|Current_State\(0),
	combout => \inst|CountReset~0_combout\);

-- Location: LCCOMB_X31_Y10_N22
\inst|CountReset~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CountReset~1_combout\ = ((!\inst|Current_State\(1) & !\inst|CountReset~0_combout\)) # (!\Reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Current_State\(1),
	datac => \Reset~combout\,
	datad => \inst|CountReset~0_combout\,
	combout => \inst|CountReset~1_combout\);

-- Location: LCCOMB_X33_Y10_N26
\inst|Load[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Load[0]~1_combout\ = (!\inst|Current_State\(0) & (\inst1|Equal3~8_combout\ & (\inst|Current_State\(3) $ (!\inst|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(3),
	datab => \inst|Current_State\(0),
	datac => \inst1|Equal3~8_combout\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|Load[0]~1_combout\);

-- Location: LCCOMB_X33_Y15_N18
\inst1|Count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[0]~8_combout\ = (\inst|Current_State\(2) & (!\inst|Current_State\(3) & ((\inst|Current_State\(1)) # (!\inst|Current_State\(0))))) # (!\inst|Current_State\(2) & ((\inst|Current_State\(3) & ((!\inst|Current_State\(1)))) # 
-- (!\inst|Current_State\(3) & (!\inst|Current_State\(0) & \inst|Current_State\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(2),
	datab => \inst|Current_State\(0),
	datac => \inst|Current_State\(3),
	datad => \inst|Current_State\(1),
	combout => \inst1|Count[0]~8_combout\);

-- Location: LCCOMB_X34_Y11_N22
\inst1|Count[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[0]~10_combout\ = (\inst1|Equal3~7_combout\ & (\inst1|Equal3~4_combout\ & \inst1|Count[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~7_combout\,
	datac => \inst1|Equal3~4_combout\,
	datad => \inst1|Count[0]~8_combout\,
	combout => \inst1|Count[0]~10_combout\);

-- Location: LCCOMB_X36_Y9_N8
\inst1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|Count\(17) & (\inst1|Add0~33\ & VCC)) # (!\inst1|Count\(17) & (!\inst1|Add0~33\))
-- \inst1|Add0~35\ = CARRY((!\inst1|Count\(17) & !\inst1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X36_Y9_N10
\inst1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|Count\(18) & ((GND) # (!\inst1|Add0~35\))) # (!\inst1|Count\(18) & (\inst1|Add0~35\ $ (GND)))
-- \inst1|Add0~37\ = CARRY((\inst1|Count\(18)) # (!\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: LCCOMB_X34_Y11_N4
\inst|Load[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Load[1]~0_combout\ = (\inst|Current_State\(1) & (!\inst|Current_State\(3) & (\inst|Current_State\(0) $ (!\inst|Current_State\(2))))) # (!\inst|Current_State\(1) & ((\inst|Current_State\(0) & (!\inst|Current_State\(2) & \inst|Current_State\(3))) # 
-- (!\inst|Current_State\(0) & (\inst|Current_State\(2) & !\inst|Current_State\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(1),
	datab => \inst|Current_State\(0),
	datac => \inst|Current_State\(2),
	datad => \inst|Current_State\(3),
	combout => \inst|Load[1]~0_combout\);

-- Location: LCCOMB_X35_Y10_N6
\inst1|Count~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count~18_combout\ = (\inst|Load[1]~0_combout\) # (!\inst|Load[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Load[1]~0_combout\,
	datad => \inst|Load[0]~1_combout\,
	combout => \inst1|Count~18_combout\);

-- Location: LCCOMB_X35_Y10_N28
\inst1|Count[18]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[18]~25_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~36_combout\)) # (!\inst1|Count~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~9_combout\,
	datab => \inst1|Count[0]~10_combout\,
	datac => \inst1|Add0~36_combout\,
	datad => \inst1|Count~18_combout\,
	combout => \inst1|Count[18]~25_combout\);

-- Location: LCFF_X35_Y10_N29
\inst1|Count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[18]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(18));

-- Location: LCCOMB_X36_Y9_N12
\inst1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|Count\(19) & (\inst1|Add0~37\ & VCC)) # (!\inst1|Count\(19) & (!\inst1|Add0~37\))
-- \inst1|Add0~39\ = CARRY((!\inst1|Count\(19) & !\inst1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X36_Y9_N14
\inst1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|Count\(20) & ((GND) # (!\inst1|Add0~39\))) # (!\inst1|Count\(20) & (\inst1|Add0~39\ $ (GND)))
-- \inst1|Add0~41\ = CARRY((\inst1|Count\(20)) # (!\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X35_Y10_N14
\inst1|Count[20]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[20]~27_combout\ = (!\inst1|Count[0]~9_combout\ & (\inst1|Count~18_combout\ & ((\inst1|Count[0]~10_combout\) # (\inst1|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~9_combout\,
	datab => \inst1|Count[0]~10_combout\,
	datac => \inst1|Add0~40_combout\,
	datad => \inst1|Count~18_combout\,
	combout => \inst1|Count[20]~27_combout\);

-- Location: LCFF_X35_Y10_N15
\inst1|Count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[20]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(20));

-- Location: LCCOMB_X36_Y10_N4
\inst1|Count[19]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[19]~26_combout\ = (!\inst1|Count[0]~9_combout\ & (\inst1|Count~18_combout\ & ((\inst1|Count[0]~10_combout\) # (\inst1|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~9_combout\,
	datab => \inst1|Count[0]~10_combout\,
	datac => \inst1|Add0~38_combout\,
	datad => \inst1|Count~18_combout\,
	combout => \inst1|Count[19]~26_combout\);

-- Location: LCFF_X36_Y10_N5
\inst1|Count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[19]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(19));

-- Location: LCCOMB_X35_Y10_N30
\inst1|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~3_combout\ = (!\inst1|Count\(21) & (!\inst1|Count\(18) & (!\inst1|Count\(20) & !\inst1|Count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(21),
	datab => \inst1|Count\(18),
	datac => \inst1|Count\(20),
	datad => \inst1|Count\(19),
	combout => \inst1|Equal3~3_combout\);

-- Location: LCCOMB_X33_Y10_N16
\inst1|Count~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count~20_combout\ = (\inst1|Add0~22_combout\ & ((!\inst1|Equal3~7_combout\) # (!\inst1|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~22_combout\,
	datab => \inst1|Equal3~4_combout\,
	datac => \inst1|Equal3~7_combout\,
	combout => \inst1|Count~20_combout\);

-- Location: LCFF_X33_Y10_N17
\inst1|Count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(11));

-- Location: LCCOMB_X35_Y10_N26
\inst1|Count[10]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[10]~3_combout\ = (\inst1|Count[0]~10_combout\ & ((!\inst|Load[0]~1_combout\))) # (!\inst1|Count[0]~10_combout\ & (\inst1|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~20_combout\,
	datab => \inst1|Count[0]~10_combout\,
	datad => \inst|Load[0]~1_combout\,
	combout => \inst1|Count[10]~3_combout\);

-- Location: LCFF_X35_Y10_N27
\inst1|Count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[10]~3_combout\,
	sdata => \inst1|Count\(10),
	sload => \inst1|Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(10));

-- Location: LCCOMB_X36_Y10_N2
\inst1|Count~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count~11_combout\ = (!\inst|Load[0]~1_combout\) # (!\inst|Load[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Load[1]~0_combout\,
	datad => \inst|Load[0]~1_combout\,
	combout => \inst1|Count~11_combout\);

-- Location: LCCOMB_X33_Y10_N6
\inst1|Count[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[1]~13_combout\ = (!\inst1|Count[0]~9_combout\ & (((\inst1|Add0~2_combout\ & !\inst1|Count[0]~10_combout\)) # (!\inst1|Count~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Count~11_combout\,
	datad => \inst1|Count[0]~10_combout\,
	combout => \inst1|Count[1]~13_combout\);

-- Location: LCFF_X33_Y10_N7
\inst1|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(1));

-- Location: LCCOMB_X36_Y10_N6
\inst1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|Count\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X33_Y10_N28
\inst1|Count[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[0]~12_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~0_combout\)) # (!\inst1|Count~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|Count~11_combout\,
	combout => \inst1|Count[0]~12_combout\);

-- Location: LCFF_X33_Y10_N29
\inst1|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(0));

-- Location: LCCOMB_X36_Y10_N10
\inst1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|Count\(2) & ((GND) # (!\inst1|Add0~3\))) # (!\inst1|Count\(2) & (\inst1|Add0~3\ $ (GND)))
-- \inst1|Add0~5\ = CARRY((\inst1|Count\(2)) # (!\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X33_Y10_N24
\inst1|Count[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[2]~14_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~4_combout\)) # (!\inst1|Count~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Add0~4_combout\,
	datad => \inst1|Count~11_combout\,
	combout => \inst1|Count[2]~14_combout\);

-- Location: LCFF_X33_Y10_N25
\inst1|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(2));

-- Location: LCCOMB_X36_Y10_N16
\inst1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|Count\(5) & (\inst1|Add0~9\ & VCC)) # (!\inst1|Count\(5) & (!\inst1|Add0~9\))
-- \inst1|Add0~11\ = CARRY((!\inst1|Count\(5) & !\inst1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X34_Y10_N16
\inst1|Count[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[5]~0_combout\ = (\inst1|Count[0]~10_combout\ & (\inst|Load[0]~1_combout\)) # (!\inst1|Count[0]~10_combout\ & ((\inst1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Load[0]~1_combout\,
	datab => \inst1|Count[0]~10_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|Count[5]~0_combout\);

-- Location: LCFF_X34_Y10_N17
\inst1|Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[5]~0_combout\,
	sdata => \inst1|Count\(5),
	sload => \inst1|Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(5));

-- Location: LCCOMB_X36_Y10_N20
\inst1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|Count\(7) & (\inst1|Add0~13\ & VCC)) # (!\inst1|Count\(7) & (!\inst1|Add0~13\))
-- \inst1|Add0~15\ = CARRY((!\inst1|Count\(7) & !\inst1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X34_Y10_N14
\inst1|Count[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[7]~1_combout\ = (\inst1|Count[0]~10_combout\ & (!\inst|Load[0]~1_combout\)) # (!\inst1|Count[0]~10_combout\ & ((\inst1|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Load[0]~1_combout\,
	datab => \inst1|Count[0]~10_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|Count[7]~1_combout\);

-- Location: LCFF_X34_Y10_N15
\inst1|Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[7]~1_combout\,
	sdata => \inst1|Count\(7),
	sload => \inst1|Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(7));

-- Location: LCCOMB_X36_Y10_N22
\inst1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|Count\(8) & ((GND) # (!\inst1|Add0~15\))) # (!\inst1|Count\(8) & (\inst1|Add0~15\ $ (GND)))
-- \inst1|Add0~17\ = CARRY((\inst1|Count\(8)) # (!\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X33_Y10_N2
\inst1|Count[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[8]~19_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~16_combout\)) # (!\inst1|Count~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Add0~16_combout\,
	datad => \inst1|Count~18_combout\,
	combout => \inst1|Count[8]~19_combout\);

-- Location: LCFF_X33_Y10_N3
\inst1|Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(8));

-- Location: LCCOMB_X36_Y10_N24
\inst1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|Count\(9) & (\inst1|Add0~17\ & VCC)) # (!\inst1|Count\(9) & (!\inst1|Add0~17\))
-- \inst1|Add0~19\ = CARRY((!\inst1|Count\(9) & !\inst1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X36_Y10_N30
\inst1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|Count\(12) & ((GND) # (!\inst1|Add0~23\))) # (!\inst1|Count\(12) & (\inst1|Add0~23\ $ (GND)))
-- \inst1|Add0~25\ = CARRY((\inst1|Count\(12)) # (!\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X35_Y10_N18
\inst1|Count[12]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[12]~21_combout\ = (!\inst1|Count[0]~9_combout\ & (\inst1|Count~18_combout\ & ((\inst1|Count[0]~10_combout\) # (\inst1|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Add0~24_combout\,
	datac => \inst1|Count[0]~9_combout\,
	datad => \inst1|Count~18_combout\,
	combout => \inst1|Count[12]~21_combout\);

-- Location: LCFF_X35_Y10_N19
\inst1|Count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[12]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(12));

-- Location: LCCOMB_X33_Y10_N20
\inst1|Count[13]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[13]~4_combout\ = (\inst1|Count[0]~10_combout\ & ((\inst|Load[0]~1_combout\))) # (!\inst1|Count[0]~10_combout\ & (\inst1|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~26_combout\,
	datab => \inst|Load[0]~1_combout\,
	datad => \inst1|Count[0]~10_combout\,
	combout => \inst1|Count[13]~4_combout\);

-- Location: LCFF_X33_Y10_N21
\inst1|Count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[13]~4_combout\,
	sdata => \inst1|Count\(13),
	sload => \inst1|Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(13));

-- Location: LCCOMB_X36_Y9_N4
\inst1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|Count\(15) & (\inst1|Add0~29\ & VCC)) # (!\inst1|Count\(15) & (!\inst1|Add0~29\))
-- \inst1|Add0~31\ = CARRY((!\inst1|Count\(15) & !\inst1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X35_Y10_N2
\inst1|Count~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count~23_combout\ = (\inst|Load[0]~1_combout\) # ((\inst1|Equal3~8_combout\ & (\inst|Load[1]~0_combout\)) # (!\inst1|Equal3~8_combout\ & ((\inst1|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~8_combout\,
	datab => \inst|Load[0]~1_combout\,
	datac => \inst|Load[1]~0_combout\,
	datad => \inst1|Add0~30_combout\,
	combout => \inst1|Count~23_combout\);

-- Location: LCFF_X35_Y10_N3
\inst1|Count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(15));

-- Location: LCCOMB_X35_Y10_N10
\inst1|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~2_combout\ = (!\inst1|Count\(14) & (!\inst1|Count\(12) & (!\inst1|Count\(16) & !\inst1|Count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(14),
	datab => \inst1|Count\(12),
	datac => \inst1|Count\(16),
	datad => \inst1|Count\(15),
	combout => \inst1|Equal3~2_combout\);

-- Location: LCCOMB_X33_Y10_N8
\inst1|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = (!\inst1|Count\(3) & (!\inst1|Count\(0) & (!\inst1|Count\(2) & !\inst1|Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(3),
	datab => \inst1|Count\(0),
	datac => \inst1|Count\(2),
	datad => \inst1|Count\(1),
	combout => \inst1|Equal3~0_combout\);

-- Location: LCCOMB_X34_Y10_N28
\inst1|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~4_combout\ = (\inst1|Equal3~1_combout\ & (\inst1|Equal3~3_combout\ & (\inst1|Equal3~2_combout\ & \inst1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~1_combout\,
	datab => \inst1|Equal3~3_combout\,
	datac => \inst1|Equal3~2_combout\,
	datad => \inst1|Equal3~0_combout\,
	combout => \inst1|Equal3~4_combout\);

-- Location: LCCOMB_X33_Y10_N0
\inst1|Count[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[0]~9_combout\ = (\inst1|Equal3~4_combout\ & (\inst1|Equal3~7_combout\ & !\inst1|Count[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal3~4_combout\,
	datac => \inst1|Equal3~7_combout\,
	datad => \inst1|Count[0]~8_combout\,
	combout => \inst1|Count[0]~9_combout\);

-- Location: LCCOMB_X36_Y9_N6
\inst1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|Count\(16) & ((GND) # (!\inst1|Add0~31\))) # (!\inst1|Count\(16) & (\inst1|Add0~31\ $ (GND)))
-- \inst1|Add0~33\ = CARRY((\inst1|Count\(16)) # (!\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCCOMB_X35_Y10_N8
\inst1|Count[16]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[16]~24_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~32_combout\)) # (!\inst1|Count~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Add0~32_combout\,
	datad => \inst1|Count~18_combout\,
	combout => \inst1|Count[16]~24_combout\);

-- Location: LCFF_X35_Y10_N9
\inst1|Count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[16]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(16));

-- Location: LCCOMB_X35_Y10_N0
\inst1|Count[17]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[17]~5_combout\ = (\inst1|Count[0]~10_combout\ & (\inst|Load[0]~1_combout\)) # (!\inst1|Count[0]~10_combout\ & ((\inst1|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst|Load[0]~1_combout\,
	datad => \inst1|Add0~34_combout\,
	combout => \inst1|Count[17]~5_combout\);

-- Location: LCFF_X35_Y10_N1
\inst1|Count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[17]~5_combout\,
	sdata => \inst1|Count\(17),
	sload => \inst1|Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(17));

-- Location: LCCOMB_X36_Y9_N18
\inst1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|Count\(22) & ((GND) # (!\inst1|Add0~43\))) # (!\inst1|Count\(22) & (\inst1|Add0~43\ $ (GND)))
-- \inst1|Add0~45\ = CARRY((\inst1|Count\(22)) # (!\inst1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(22),
	datad => VCC,
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\,
	cout => \inst1|Add0~45\);

-- Location: LCCOMB_X35_Y10_N4
\inst1|Count[22]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[22]~29_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~44_combout\)) # (!\inst1|Count~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~9_combout\,
	datab => \inst1|Count[0]~10_combout\,
	datac => \inst1|Add0~44_combout\,
	datad => \inst1|Count~11_combout\,
	combout => \inst1|Count[22]~29_combout\);

-- Location: LCFF_X35_Y10_N5
\inst1|Count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(22));

-- Location: LCCOMB_X36_Y9_N20
\inst1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = (\inst1|Count\(23) & (\inst1|Add0~45\ & VCC)) # (!\inst1|Count\(23) & (!\inst1|Add0~45\))
-- \inst1|Add0~47\ = CARRY((!\inst1|Count\(23) & !\inst1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(23),
	datad => VCC,
	cin => \inst1|Add0~45\,
	combout => \inst1|Add0~46_combout\,
	cout => \inst1|Add0~47\);

-- Location: LCCOMB_X35_Y10_N22
\inst1|Count[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[23]~30_combout\ = (\inst1|Count~18_combout\ & (!\inst1|Count[0]~9_combout\ & ((\inst1|Count[0]~10_combout\) # (\inst1|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count~18_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Count[0]~10_combout\,
	datad => \inst1|Add0~46_combout\,
	combout => \inst1|Count[23]~30_combout\);

-- Location: LCFF_X35_Y10_N23
\inst1|Count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[23]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(23));

-- Location: LCCOMB_X36_Y9_N22
\inst1|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~48_combout\ = (\inst1|Count\(24) & ((GND) # (!\inst1|Add0~47\))) # (!\inst1|Count\(24) & (\inst1|Add0~47\ $ (GND)))
-- \inst1|Add0~49\ = CARRY((\inst1|Count\(24)) # (!\inst1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Count\(24),
	datad => VCC,
	cin => \inst1|Add0~47\,
	combout => \inst1|Add0~48_combout\,
	cout => \inst1|Add0~49\);

-- Location: LCCOMB_X34_Y10_N18
\inst1|Count~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count~32_combout\ = (\inst1|Add0~48_combout\ & ((!\inst1|Equal3~4_combout\) # (!\inst1|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~7_combout\,
	datab => \inst1|Equal3~4_combout\,
	datad => \inst1|Add0~48_combout\,
	combout => \inst1|Count~32_combout\);

-- Location: LCFF_X34_Y10_N19
\inst1|Count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(24));

-- Location: LCCOMB_X36_Y9_N24
\inst1|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~50_combout\ = \inst1|Add0~49\ $ (!\inst1|Count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Count\(25),
	cin => \inst1|Add0~49\,
	combout => \inst1|Add0~50_combout\);

-- Location: LCCOMB_X35_Y10_N12
\inst1|Count[25]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[25]~31_combout\ = (!\inst1|Count[0]~9_combout\ & (((!\inst1|Count[0]~10_combout\ & \inst1|Add0~50_combout\)) # (!\inst1|Count~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Count[0]~9_combout\,
	datac => \inst1|Add0~50_combout\,
	datad => \inst1|Count~11_combout\,
	combout => \inst1|Count[25]~31_combout\);

-- Location: LCFF_X35_Y10_N13
\inst1|Count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[25]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(25));

-- Location: LCCOMB_X34_Y10_N20
\inst1|Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~5_combout\ = (!\inst1|Count\(22) & (!\inst1|Count\(24) & (!\inst1|Count\(25) & !\inst1|Count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(22),
	datab => \inst1|Count\(24),
	datac => \inst1|Count\(25),
	datad => \inst1|Count\(23),
	combout => \inst1|Equal3~5_combout\);

-- Location: LCCOMB_X35_Y10_N24
\inst1|Count[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Count[9]~2_combout\ = (\inst1|Count[0]~10_combout\ & ((!\inst|Load[0]~1_combout\))) # (!\inst1|Count[0]~10_combout\ & (\inst1|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count[0]~10_combout\,
	datab => \inst1|Add0~18_combout\,
	datad => \inst|Load[0]~1_combout\,
	combout => \inst1|Count[9]~2_combout\);

-- Location: LCFF_X35_Y10_N25
\inst1|Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst1|Count[9]~2_combout\,
	sdata => \inst1|Count\(9),
	sload => \inst1|Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Count\(9));

-- Location: LCCOMB_X34_Y10_N30
\inst1|Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~6_combout\ = (!\inst1|Count\(5) & (!\inst1|Count\(7) & (!\inst1|Count\(10) & !\inst1|Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(5),
	datab => \inst1|Count\(7),
	datac => \inst1|Count\(10),
	datad => \inst1|Count\(9),
	combout => \inst1|Equal3~6_combout\);

-- Location: LCCOMB_X34_Y10_N4
\inst1|Equal3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~7_combout\ = (!\inst1|Count\(13) & (!\inst1|Count\(17) & (\inst1|Equal3~5_combout\ & \inst1|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Count\(13),
	datab => \inst1|Count\(17),
	datac => \inst1|Equal3~5_combout\,
	datad => \inst1|Equal3~6_combout\,
	combout => \inst1|Equal3~7_combout\);

-- Location: LCCOMB_X34_Y10_N12
\inst1|Equal3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~8_combout\ = (\inst1|Equal3~7_combout\ & \inst1|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal3~7_combout\,
	datad => \inst1|Equal3~4_combout\,
	combout => \inst1|Equal3~8_combout\);

-- Location: LCCOMB_X34_Y10_N26
\inst|Decrement~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Decrement~4_combout\ = ((\inst|Current_State\(2)) # ((\inst|Current_State\(1)) # (!\inst1|Equal3~8_combout\))) # (!\inst|Current_State\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(3),
	datab => \inst|Current_State\(2),
	datac => \inst|Current_State\(1),
	datad => \inst1|Equal3~8_combout\,
	combout => \inst|Decrement~4_combout\);

-- Location: LCCOMB_X32_Y10_N30
\inst2|S0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S0~0_combout\ = (!\inst|CountReset~1_combout\ & (\inst2|S0\(0) $ (((\inst|Increment~1_combout\) # (!\inst|Decrement~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Increment~1_combout\,
	datab => \inst|Decrement~4_combout\,
	datac => \inst2|S0\(0),
	datad => \inst|CountReset~1_combout\,
	combout => \inst2|S0~0_combout\);

-- Location: LCFF_X32_Y10_N31
\inst2|S0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|S0\(0));

-- Location: LCCOMB_X28_Y10_N10
\inst2|Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add11~0_combout\ = \inst2|S0\(2) $ (((\inst2|S0\(1)) # (\inst2|S0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(1),
	datac => \inst2|S0\(2),
	datad => \inst2|S0\(0),
	combout => \inst2|Add11~0_combout\);

-- Location: LCCOMB_X33_Y10_N14
\inst|Increment~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Increment~0_combout\ = (\inst|Current_State\(3)) # ((\inst|Current_State\(0) & ((!\inst|Current_State\(1)) # (!\inst|Current_State\(2)))) # (!\inst|Current_State\(0) & (!\inst|Current_State\(2) & !\inst|Current_State\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(0),
	datab => \inst|Current_State\(3),
	datac => \inst|Current_State\(2),
	datad => \inst|Current_State\(1),
	combout => \inst|Increment~0_combout\);

-- Location: LCCOMB_X34_Y10_N22
\inst|Increment~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Increment~1_combout\ = (\inst1|Equal3~4_combout\ & (\inst1|Equal3~7_combout\ & !\inst|Increment~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal3~4_combout\,
	datac => \inst1|Equal3~7_combout\,
	datad => \inst|Increment~0_combout\,
	combout => \inst|Increment~1_combout\);

-- Location: LCCOMB_X32_Y10_N18
\inst2|S0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S0~4_combout\ = (!\inst2|Equal10~0_combout\ & (!\inst2|Add11~0_combout\ & !\inst|Increment~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal10~0_combout\,
	datac => \inst2|Add11~0_combout\,
	datad => \inst|Increment~1_combout\,
	combout => \inst2|S0~4_combout\);

-- Location: LCCOMB_X28_Y10_N16
\inst2|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add5~0_combout\ = \inst2|S0\(2) $ (((\inst2|S0\(1) & \inst2|S0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(1),
	datac => \inst2|S0\(2),
	datad => \inst2|S0\(0),
	combout => \inst2|Add5~0_combout\);

-- Location: LCCOMB_X33_Y9_N6
\inst2|S0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S0~5_combout\ = (\inst1|Equal3~4_combout\ & (!\inst2|Equal10~1_combout\ & (\inst1|Equal3~7_combout\ & !\inst|Increment~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~4_combout\,
	datab => \inst2|Equal10~1_combout\,
	datac => \inst1|Equal3~7_combout\,
	datad => \inst|Increment~0_combout\,
	combout => \inst2|S0~5_combout\);

-- Location: LCCOMB_X32_Y10_N6
\inst2|S0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S0~6_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|S0~4_combout\) # ((\inst2|Add5~0_combout\ & \inst2|S0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CountReset~1_combout\,
	datab => \inst2|S0~4_combout\,
	datac => \inst2|Add5~0_combout\,
	datad => \inst2|S0~5_combout\,
	combout => \inst2|S0~6_combout\);

-- Location: LCCOMB_X33_Y10_N18
\inst2|S0[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S0[2]~3_combout\ = (\inst|Increment~1_combout\) # ((\inst|CountReset~1_combout\) # (!\inst|Decrement~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Increment~1_combout\,
	datac => \inst|Decrement~4_combout\,
	datad => \inst|CountReset~1_combout\,
	combout => \inst2|S0[2]~3_combout\);

-- Location: LCFF_X32_Y10_N7
\inst2|S0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|S0~6_combout\,
	ena => \inst2|S0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|S0\(2));

-- Location: LCCOMB_X32_Y10_N8
\inst2|S0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S0~8_combout\ = \inst2|S0\(3) $ (((!\inst2|S0\(0) & (!\inst2|S0\(1) & !\inst2|S0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(3),
	datab => \inst2|S0\(0),
	datac => \inst2|S0\(1),
	datad => \inst2|S0\(2),
	combout => \inst2|S0~8_combout\);

-- Location: LCCOMB_X32_Y10_N28
\inst2|Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add5~1_combout\ = \inst2|S0\(3) $ (((\inst2|S0\(0) & (\inst2|S0\(1) & \inst2|S0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(3),
	datab => \inst2|S0\(0),
	datac => \inst2|S0\(1),
	datad => \inst2|S0\(2),
	combout => \inst2|Add5~1_combout\);

-- Location: LCCOMB_X32_Y10_N2
\inst2|S0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S0~7_combout\ = (\inst1|Equal3~8_combout\ & (!\inst|Increment~0_combout\ & (!\inst2|Equal10~1_combout\ & \inst2|Add5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~8_combout\,
	datab => \inst|Increment~0_combout\,
	datac => \inst2|Equal10~1_combout\,
	datad => \inst2|Add5~1_combout\,
	combout => \inst2|S0~7_combout\);

-- Location: LCCOMB_X32_Y10_N12
\inst2|S0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S0~9_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|S0~7_combout\) # ((!\inst|Increment~1_combout\ & \inst2|S0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Increment~1_combout\,
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|S0~8_combout\,
	datad => \inst2|S0~7_combout\,
	combout => \inst2|S0~9_combout\);

-- Location: LCFF_X32_Y10_N13
\inst2|S0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|S0~9_combout\,
	ena => \inst2|S0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|S0\(3));

-- Location: LCCOMB_X32_Y10_N26
\inst2|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal10~0_combout\ = (!\inst2|S0\(2) & (!\inst2|S0\(0) & (!\inst2|S0\(1) & !\inst2|S0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(2),
	datab => \inst2|S0\(0),
	datac => \inst2|S0\(1),
	datad => \inst2|S0\(3),
	combout => \inst2|Equal10~0_combout\);

-- Location: LCCOMB_X32_Y10_N0
\inst2|S0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S0~1_combout\ = (!\inst|CountReset~1_combout\ & ((\inst|Increment~1_combout\ & ((!\inst2|Equal10~1_combout\))) # (!\inst|Increment~1_combout\ & (!\inst2|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Increment~1_combout\,
	datab => \inst2|Equal10~0_combout\,
	datac => \inst2|Equal10~1_combout\,
	datad => \inst|CountReset~1_combout\,
	combout => \inst2|S0~1_combout\);

-- Location: LCCOMB_X32_Y10_N24
\inst2|S0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S0~2_combout\ = (\inst2|S0~1_combout\ & (\inst|Increment~1_combout\ $ (\inst2|S0\(0) $ (!\inst2|S0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Increment~1_combout\,
	datab => \inst2|S0\(0),
	datac => \inst2|S0\(1),
	datad => \inst2|S0~1_combout\,
	combout => \inst2|S0~2_combout\);

-- Location: LCFF_X32_Y10_N25
\inst2|S0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|S0~2_combout\,
	ena => \inst2|S0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|S0\(1));

-- Location: LCCOMB_X32_Y10_N4
\inst2|Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal10~1_combout\ = (!\inst2|S0\(2) & (\inst2|S0\(0) & (!\inst2|S0\(1) & \inst2|S0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(2),
	datab => \inst2|S0\(0),
	datac => \inst2|S0\(1),
	datad => \inst2|S0\(3),
	combout => \inst2|Equal10~1_combout\);

-- Location: LCCOMB_X30_Y10_N12
\inst2|H1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1~0_combout\ = (\inst|Increment~1_combout\ & ((!\inst2|Equal10~1_combout\) # (!\inst2|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~2_combout\,
	datac => \inst2|Equal10~1_combout\,
	datad => \inst|Increment~1_combout\,
	combout => \inst2|H1~0_combout\);

-- Location: LCCOMB_X29_Y10_N2
\inst2|H1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1~7_combout\ = (!\inst|Increment~1_combout\ & (!\inst2|process_0~1_combout\ & (\inst2|H1\(0) $ (!\inst2|H1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(0),
	datab => \inst2|H1\(1),
	datac => \inst|Increment~1_combout\,
	datad => \inst2|process_0~1_combout\,
	combout => \inst2|H1~7_combout\);

-- Location: LCCOMB_X30_Y10_N22
\inst2|H1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1~8_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|H1~7_combout\) # ((\inst2|Add0~2_combout\ & \inst2|H1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|H1~0_combout\,
	datad => \inst2|H1~7_combout\,
	combout => \inst2|H1~8_combout\);

-- Location: LCCOMB_X33_Y9_N14
\inst2|M0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M0~2_combout\ = (!\inst2|Equal8~0_combout\ & (!\inst|Increment~0_combout\ & (\inst1|Equal3~7_combout\ & \inst1|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal8~0_combout\,
	datab => \inst|Increment~0_combout\,
	datac => \inst1|Equal3~7_combout\,
	datad => \inst1|Equal3~4_combout\,
	combout => \inst2|M0~2_combout\);

-- Location: LCCOMB_X33_Y9_N26
\inst2|M0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M0~5_combout\ = (!\inst2|Equal8~1_combout\ & (!\inst|Increment~1_combout\ & (\inst2|Equal8~2_combout\ $ (\inst2|M0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal8~2_combout\,
	datab => \inst2|M0\(2),
	datac => \inst2|Equal8~1_combout\,
	datad => \inst|Increment~1_combout\,
	combout => \inst2|M0~5_combout\);

-- Location: LCCOMB_X33_Y9_N28
\inst2|M0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M0~6_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|M0~5_combout\) # ((\inst2|Add3~1_combout\ & \inst2|M0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add3~1_combout\,
	datab => \inst2|M0~2_combout\,
	datac => \inst|CountReset~1_combout\,
	datad => \inst2|M0~5_combout\,
	combout => \inst2|M0~6_combout\);

-- Location: LCCOMB_X32_Y10_N20
\inst2|S1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S1[0]~0_combout\ = (\inst|Decrement~4_combout\ & ((\inst2|S1\(0)))) # (!\inst|Decrement~4_combout\ & (\inst2|S1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1~10_combout\,
	datac => \inst2|S1\(0),
	datad => \inst|Decrement~4_combout\,
	combout => \inst2|S1[0]~0_combout\);

-- Location: LCCOMB_X32_Y10_N14
\inst2|S1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S1~11_combout\ = \inst2|Equal10~1_combout\ $ (\inst2|S1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal10~1_combout\,
	datac => \inst2|S1\(0),
	combout => \inst2|S1~11_combout\);

-- Location: LCFF_X32_Y10_N21
\inst2|S1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|S1[0]~0_combout\,
	sdata => \inst2|S1~11_combout\,
	sclr => \inst|CountReset~1_combout\,
	sload => \inst|Increment~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|S1\(0));

-- Location: LCCOMB_X31_Y10_N8
\inst2|S1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S1~3_combout\ = (!\inst|Increment~1_combout\ & ((\inst2|process_0~4_combout\ & (!\inst2|Equal10~0_combout\ & !\inst2|S1\(3))) # (!\inst2|process_0~4_combout\ & ((\inst2|S1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal10~0_combout\,
	datab => \inst2|process_0~4_combout\,
	datac => \inst2|S1\(3),
	datad => \inst|Increment~1_combout\,
	combout => \inst2|S1~3_combout\);

-- Location: LCCOMB_X31_Y10_N16
\inst2|S1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S1~4_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|S1~3_combout\) # ((\inst2|Add4~0_combout\ & \inst|Increment~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add4~0_combout\,
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|S1~3_combout\,
	datad => \inst|Increment~1_combout\,
	combout => \inst2|S1~4_combout\);

-- Location: LCCOMB_X31_Y10_N0
\inst2|S1[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S1[1]~5_combout\ = (\inst|Increment~1_combout\ & (((!\inst2|Equal10~1_combout\)))) # (!\inst|Increment~1_combout\ & (((\inst|Decrement~4_combout\)) # (!\inst2|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal10~0_combout\,
	datab => \inst2|Equal10~1_combout\,
	datac => \inst|Increment~1_combout\,
	datad => \inst|Decrement~4_combout\,
	combout => \inst2|S1[1]~5_combout\);

-- Location: LCCOMB_X31_Y10_N26
\inst2|S1[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S1[1]~12_combout\ = (((!\inst|Current_State\(1) & !\inst|CountReset~0_combout\)) # (!\inst2|S1[1]~5_combout\)) # (!\Reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(1),
	datab => \inst|CountReset~0_combout\,
	datac => \Reset~combout\,
	datad => \inst2|S1[1]~5_combout\,
	combout => \inst2|S1[1]~12_combout\);

-- Location: LCFF_X31_Y10_N17
\inst2|S1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|S1~4_combout\,
	ena => \inst2|S1[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|S1\(3));

-- Location: LCCOMB_X31_Y10_N28
\inst8|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (!\inst2|S1\(1) & (\inst2|S1\(2) & \inst2|S1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(1),
	datab => \inst2|S1\(2),
	datad => \inst2|S1\(0),
	combout => \inst8|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y10_N22
\inst2|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = (\inst2|S1\(3)) # ((!\inst8|Equal0~0_combout\) # (!\inst2|Equal10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|S1\(3),
	datac => \inst2|Equal10~1_combout\,
	datad => \inst8|Equal0~0_combout\,
	combout => \inst2|process_0~3_combout\);

-- Location: LCCOMB_X32_Y10_N16
\inst2|H0[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0[1]~19_combout\ = (\inst1|Equal3~7_combout\ & (\inst2|process_0~3_combout\ & (!\inst|Increment~0_combout\ & \inst1|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~7_combout\,
	datab => \inst2|process_0~3_combout\,
	datac => \inst|Increment~0_combout\,
	datad => \inst1|Equal3~4_combout\,
	combout => \inst2|H0[1]~19_combout\);

-- Location: LCCOMB_X31_Y10_N2
\inst2|S1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S1~6_combout\ = (!\inst|Increment~1_combout\ & (\inst2|S1\(2) $ (((!\inst2|S1\(1) & !\inst2|S1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(1),
	datab => \inst2|S1\(2),
	datac => \inst|Increment~1_combout\,
	datad => \inst2|S1\(0),
	combout => \inst2|S1~6_combout\);

-- Location: LCCOMB_X31_Y10_N30
\inst2|S1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S1~7_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|S1~6_combout\) # ((\inst2|Add4~1_combout\ & \inst2|H0[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add4~1_combout\,
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|H0[1]~19_combout\,
	datad => \inst2|S1~6_combout\,
	combout => \inst2|S1~7_combout\);

-- Location: LCFF_X31_Y10_N31
\inst2|S1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|S1~7_combout\,
	ena => \inst2|S1[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|S1\(2));

-- Location: LCCOMB_X31_Y10_N18
\inst2|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = (!\inst2|S1\(1) & (!\inst2|S1\(0) & !\inst2|S1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(1),
	datab => \inst2|S1\(0),
	datad => \inst2|S1\(2),
	combout => \inst2|process_0~4_combout\);

-- Location: LCCOMB_X34_Y10_N6
\inst2|H0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~7_combout\ = (!\inst2|S1\(3) & (\inst2|process_0~4_combout\ & (\inst2|Equal10~0_combout\ & !\inst|Decrement~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(3),
	datab => \inst2|process_0~4_combout\,
	datac => \inst2|Equal10~0_combout\,
	datad => \inst|Decrement~4_combout\,
	combout => \inst2|H0~7_combout\);

-- Location: LCCOMB_X33_Y9_N24
\inst2|M0[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M0[2]~4_combout\ = (\inst|CountReset~1_combout\) # ((!\inst2|H0[1]~19_combout\ & ((\inst|Increment~1_combout\) # (\inst2|H0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0[1]~19_combout\,
	datab => \inst|Increment~1_combout\,
	datac => \inst2|H0~7_combout\,
	datad => \inst|CountReset~1_combout\,
	combout => \inst2|M0[2]~4_combout\);

-- Location: LCFF_X33_Y9_N29
\inst2|M0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|M0~6_combout\,
	ena => \inst2|M0[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|M0\(2));

-- Location: LCCOMB_X34_Y9_N28
\inst2|M0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M0~9_combout\ = \inst2|M0\(0) $ (((\inst2|S1\(3)) # ((!\inst2|Equal10~0_combout\) # (!\inst2|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(3),
	datab => \inst2|M0\(0),
	datac => \inst2|process_0~4_combout\,
	datad => \inst2|Equal10~0_combout\,
	combout => \inst2|M0~9_combout\);

-- Location: LCCOMB_X33_Y9_N4
\inst2|M0[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M0[0]~0_combout\ = (\inst|Decrement~4_combout\ & ((\inst2|M0\(0)))) # (!\inst|Decrement~4_combout\ & (!\inst2|M0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|M0~9_combout\,
	datac => \inst2|M0\(0),
	datad => \inst|Decrement~4_combout\,
	combout => \inst2|M0[0]~0_combout\);

-- Location: LCCOMB_X34_Y9_N14
\inst2|M0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M0~10_combout\ = \inst2|M0\(0) $ (((!\inst2|S1\(3) & (\inst8|Equal0~0_combout\ & \inst2|Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(3),
	datab => \inst2|M0\(0),
	datac => \inst8|Equal0~0_combout\,
	datad => \inst2|Equal10~1_combout\,
	combout => \inst2|M0~10_combout\);

-- Location: LCFF_X33_Y9_N5
\inst2|M0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|M0[0]~0_combout\,
	sdata => \inst2|M0~10_combout\,
	sclr => \inst|CountReset~1_combout\,
	sload => \inst|Increment~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|M0\(0));

-- Location: LCCOMB_X33_Y9_N18
\inst2|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal8~1_combout\ = (!\inst2|M0\(3) & (!\inst2|M0\(2) & (!\inst2|M0\(0) & !\inst2|M0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M0\(3),
	datab => \inst2|M0\(2),
	datac => \inst2|M0\(0),
	datad => \inst2|M0\(1),
	combout => \inst2|Equal8~1_combout\);

-- Location: LCCOMB_X33_Y9_N2
\inst2|M0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M0~7_combout\ = (!\inst2|Equal8~1_combout\ & (((\inst|Increment~0_combout\) # (!\inst1|Equal3~4_combout\)) # (!\inst1|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~7_combout\,
	datab => \inst|Increment~0_combout\,
	datac => \inst2|Equal8~1_combout\,
	datad => \inst1|Equal3~4_combout\,
	combout => \inst2|M0~7_combout\);

-- Location: LCCOMB_X33_Y9_N30
\inst2|M0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M0~8_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|Add3~2_combout\ & (\inst2|M0~2_combout\)) # (!\inst2|Add3~2_combout\ & ((\inst2|M0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add3~2_combout\,
	datab => \inst2|M0~2_combout\,
	datac => \inst|CountReset~1_combout\,
	datad => \inst2|M0~7_combout\,
	combout => \inst2|M0~8_combout\);

-- Location: LCFF_X33_Y9_N31
\inst2|M0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|M0~8_combout\,
	ena => \inst2|M0[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|M0\(1));

-- Location: LCCOMB_X33_Y9_N0
\inst2|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal8~0_combout\ = (\inst2|M0\(3) & (!\inst2|M0\(1) & (\inst2|M0\(0) & !\inst2|M0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M0\(3),
	datab => \inst2|M0\(1),
	datac => \inst2|M0\(0),
	datad => \inst2|M0\(2),
	combout => \inst2|Equal8~0_combout\);

-- Location: LCCOMB_X34_Y11_N12
\inst2|M1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M1~9_combout\ = \inst2|M1\(0) $ (((\inst|Increment~1_combout\ & ((\inst2|Equal8~0_combout\))) # (!\inst|Increment~1_combout\ & (\inst2|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Increment~1_combout\,
	datab => \inst2|M1\(0),
	datac => \inst2|Equal8~1_combout\,
	datad => \inst2|Equal8~0_combout\,
	combout => \inst2|M1~9_combout\);

-- Location: LCCOMB_X34_Y11_N2
\inst2|M1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M1~10_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|H0[1]~8_combout\ & (\inst2|M1\(0))) # (!\inst2|H0[1]~8_combout\ & ((\inst2|M1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0[1]~8_combout\,
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|M1\(0),
	datad => \inst2|M1~9_combout\,
	combout => \inst2|M1~10_combout\);

-- Location: LCFF_X34_Y11_N3
\inst2|M1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|M1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|M1\(0));

-- Location: LCCOMB_X34_Y11_N16
\inst2|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~6_combout\ = ((\inst2|M1\(3)) # (!\inst2|Equal8~1_combout\)) # (!\inst2|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~5_combout\,
	datab => \inst2|Equal8~1_combout\,
	datac => \inst2|M1\(3),
	combout => \inst2|process_0~6_combout\);

-- Location: LCCOMB_X34_Y11_N18
\inst2|H0[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0[1]~9_combout\ = (\inst2|process_0~6_combout\ & (((\inst|Increment~0_combout\) # (!\inst1|Equal3~4_combout\)) # (!\inst1|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~7_combout\,
	datab => \inst1|Equal3~4_combout\,
	datac => \inst2|process_0~6_combout\,
	datad => \inst|Increment~0_combout\,
	combout => \inst2|H0[1]~9_combout\);

-- Location: LCCOMB_X34_Y11_N14
\inst2|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~2_combout\ = \inst2|M1\(1) $ (\inst2|M1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|M1\(1),
	datad => \inst2|M1\(0),
	combout => \inst2|Add2~2_combout\);

-- Location: LCCOMB_X34_Y11_N30
\inst2|M1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M1~6_combout\ = (!\inst|Increment~1_combout\ & (\inst2|M1\(2) $ (((!\inst2|M1\(1) & !\inst2|M1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M1\(1),
	datab => \inst2|M1\(2),
	datac => \inst|Increment~1_combout\,
	datad => \inst2|M1\(0),
	combout => \inst2|M1~6_combout\);

-- Location: LCCOMB_X34_Y11_N28
\inst2|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~1_combout\ = \inst2|M1\(2) $ (((\inst2|M1\(0) & \inst2|M1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|M1\(0),
	datac => \inst2|M1\(1),
	datad => \inst2|M1\(2),
	combout => \inst2|Add2~1_combout\);

-- Location: LCCOMB_X34_Y11_N26
\inst2|M1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M1~7_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|M1~6_combout\) # ((\inst2|Add2~1_combout\ & \inst2|H0[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CountReset~1_combout\,
	datab => \inst2|M1~6_combout\,
	datac => \inst2|Add2~1_combout\,
	datad => \inst2|H0[1]~6_combout\,
	combout => \inst2|M1~7_combout\);

-- Location: LCCOMB_X34_Y10_N10
\inst2|M1[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M1[2]~3_combout\ = (\inst|Increment~0_combout\ & (((!\inst2|H0~7_combout\)) # (!\inst2|Equal8~1_combout\))) # (!\inst|Increment~0_combout\ & (!\inst1|Equal3~8_combout\ & ((!\inst2|H0~7_combout\) # (!\inst2|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Increment~0_combout\,
	datab => \inst2|Equal8~1_combout\,
	datac => \inst1|Equal3~8_combout\,
	datad => \inst2|H0~7_combout\,
	combout => \inst2|M1[2]~3_combout\);

-- Location: LCCOMB_X34_Y10_N0
\inst2|M1[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M1[2]~5_combout\ = (\inst|CountReset~1_combout\) # ((!\inst2|M1[2]~3_combout\ & ((!\inst|Increment~1_combout\) # (!\inst2|M1[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M1[2]~4_combout\,
	datab => \inst|Increment~1_combout\,
	datac => \inst|CountReset~1_combout\,
	datad => \inst2|M1[2]~3_combout\,
	combout => \inst2|M1[2]~5_combout\);

-- Location: LCFF_X34_Y11_N27
\inst2|M1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|M1~7_combout\,
	ena => \inst2|M1[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|M1\(2));

-- Location: LCCOMB_X34_Y11_N0
\inst2|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal7~0_combout\ = (\inst2|M1\(0) & (!\inst2|M1\(1) & \inst2|M1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|M1\(0),
	datac => \inst2|M1\(1),
	datad => \inst2|M1\(2),
	combout => \inst2|Equal7~0_combout\);

-- Location: LCCOMB_X30_Y10_N14
\inst2|H0[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0[1]~6_combout\ = (\inst|Increment~1_combout\ & ((\inst2|M1\(3)) # ((!\inst2|Equal8~0_combout\) # (!\inst2|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M1\(3),
	datab => \inst2|Equal7~0_combout\,
	datac => \inst2|Equal8~0_combout\,
	datad => \inst|Increment~1_combout\,
	combout => \inst2|H0[1]~6_combout\);

-- Location: LCCOMB_X34_Y11_N20
\inst2|M1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M1~8_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|Add2~2_combout\ & ((\inst2|H0[1]~6_combout\))) # (!\inst2|Add2~2_combout\ & (\inst2|H0[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CountReset~1_combout\,
	datab => \inst2|H0[1]~9_combout\,
	datac => \inst2|Add2~2_combout\,
	datad => \inst2|H0[1]~6_combout\,
	combout => \inst2|M1~8_combout\);

-- Location: LCFF_X34_Y11_N21
\inst2|M1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|M1~8_combout\,
	ena => \inst2|M1[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|M1\(1));

-- Location: LCCOMB_X34_Y11_N8
\inst2|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~0_combout\ = \inst2|M1\(3) $ (((\inst2|M1\(0) & (\inst2|M1\(1) & \inst2|M1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M1\(3),
	datab => \inst2|M1\(0),
	datac => \inst2|M1\(1),
	datad => \inst2|M1\(2),
	combout => \inst2|Add2~0_combout\);

-- Location: LCCOMB_X34_Y11_N10
\inst2|M1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M1~11_combout\ = (!\inst|Increment~1_combout\ & ((\inst2|process_0~5_combout\ & (!\inst2|Equal8~1_combout\ & !\inst2|M1\(3))) # (!\inst2|process_0~5_combout\ & ((\inst2|M1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~5_combout\,
	datab => \inst2|Equal8~1_combout\,
	datac => \inst|Increment~1_combout\,
	datad => \inst2|M1\(3),
	combout => \inst2|M1~11_combout\);

-- Location: LCCOMB_X34_Y11_N24
\inst2|M1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M1~2_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|M1~11_combout\) # ((\inst2|Add2~0_combout\ & \inst|Increment~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CountReset~1_combout\,
	datab => \inst2|Add2~0_combout\,
	datac => \inst|Increment~1_combout\,
	datad => \inst2|M1~11_combout\,
	combout => \inst2|M1~2_combout\);

-- Location: LCFF_X34_Y11_N25
\inst2|M1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|M1~2_combout\,
	ena => \inst2|M1[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|M1\(3));

-- Location: LCCOMB_X33_Y10_N4
\inst2|H0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~17_combout\ = (\inst2|Equal7~0_combout\ & (\inst2|Equal8~0_combout\ & (!\inst2|M1\(3) & !\inst2|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal7~0_combout\,
	datab => \inst2|Equal8~0_combout\,
	datac => \inst2|M1\(3),
	datad => \inst2|process_0~3_combout\,
	combout => \inst2|H0~17_combout\);

-- Location: LCCOMB_X34_Y10_N24
\inst2|H1[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1[2]~3_combout\ = (\inst|Increment~1_combout\ & (((!\inst2|H0~17_combout\)))) # (!\inst|Increment~1_combout\ & ((\inst2|process_0~6_combout\) # ((!\inst2|H0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~6_combout\,
	datab => \inst|Increment~1_combout\,
	datac => \inst2|H0~17_combout\,
	datad => \inst2|H0~7_combout\,
	combout => \inst2|H1[2]~3_combout\);

-- Location: LCCOMB_X30_Y10_N18
\inst2|H1[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1[2]~4_combout\ = (\inst|CountReset~1_combout\) # ((!\inst2|H1[2]~3_combout\ & \inst2|H0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|H1[2]~3_combout\,
	datad => \inst2|H0~13_combout\,
	combout => \inst2|H1[2]~4_combout\);

-- Location: LCFF_X30_Y10_N23
\inst2|H1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|H1~8_combout\,
	ena => \inst2|H1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|H1\(1));

-- Location: LCCOMB_X30_Y10_N0
\inst2|H1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1~9_combout\ = (!\inst|Increment~1_combout\ & ((\inst2|process_0~1_combout\) # (\inst2|H1\(0) $ (\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Increment~1_combout\,
	datab => \inst2|process_0~1_combout\,
	datac => \inst2|H1\(0),
	datad => \inst4|Equal0~0_combout\,
	combout => \inst2|H1~9_combout\);

-- Location: LCCOMB_X31_Y10_N14
\inst2|H1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1~11_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|H1~9_combout\) # ((\inst2|H1~10_combout\ & \inst2|H1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1~10_combout\,
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|H1~9_combout\,
	datad => \inst2|H1~0_combout\,
	combout => \inst2|H1~11_combout\);

-- Location: LCCOMB_X34_Y10_N2
\inst2|H0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~18_combout\ = (\inst|Increment~1_combout\ & (((\inst2|H0~17_combout\)))) # (!\inst|Increment~1_combout\ & (!\inst2|process_0~6_combout\ & ((\inst2|H0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~6_combout\,
	datab => \inst|Increment~1_combout\,
	datac => \inst2|H0~17_combout\,
	datad => \inst2|H0~7_combout\,
	combout => \inst2|H0~18_combout\);

-- Location: LCCOMB_X31_Y10_N4
\inst2|H0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~20_combout\ = ((\inst2|H0~18_combout\) # ((!\inst|Current_State\(1) & !\inst|CountReset~0_combout\))) # (!\Reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Current_State\(1),
	datab => \inst|CountReset~0_combout\,
	datac => \Reset~combout\,
	datad => \inst2|H0~18_combout\,
	combout => \inst2|H0~20_combout\);

-- Location: LCFF_X31_Y10_N15
\inst2|H1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|H1~11_combout\,
	ena => \inst2|H0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|H1\(0));

-- Location: LCCOMB_X29_Y10_N28
\inst2|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = (!\inst2|H1\(1) & !\inst2|H1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|H1\(1),
	datad => \inst2|H1\(0),
	combout => \inst2|process_0~0_combout\);

-- Location: LCCOMB_X29_Y10_N4
\inst2|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_combout\ = \inst2|H1\(2) $ (((\inst2|H1\(1) & \inst2|H1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|H1\(1),
	datac => \inst2|H1\(2),
	datad => \inst2|H1\(0),
	combout => \inst2|Add0~1_combout\);

-- Location: LCCOMB_X29_Y10_N10
\inst2|H1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1~5_combout\ = (!\inst|Increment~1_combout\ & (!\inst2|process_0~1_combout\ & (\inst2|H1\(2) $ (\inst2|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(2),
	datab => \inst2|process_0~0_combout\,
	datac => \inst|Increment~1_combout\,
	datad => \inst2|process_0~1_combout\,
	combout => \inst2|H1~5_combout\);

-- Location: LCCOMB_X30_Y10_N20
\inst2|H1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1~6_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|H1~5_combout\) # ((\inst|Increment~1_combout\ & \inst2|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Increment~1_combout\,
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|Add0~1_combout\,
	datad => \inst2|H1~5_combout\,
	combout => \inst2|H1~6_combout\);

-- Location: LCFF_X30_Y10_N21
\inst2|H1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|H1~6_combout\,
	ena => \inst2|H1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|H1\(2));

-- Location: LCCOMB_X29_Y10_N18
\inst2|H1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1~1_combout\ = (!\inst|Increment~1_combout\ & (\inst2|H1\(3) $ (((\inst2|process_0~0_combout\ & !\inst2|H1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(3),
	datab => \inst2|process_0~0_combout\,
	datac => \inst2|H1\(2),
	datad => \inst|Increment~1_combout\,
	combout => \inst2|H1~1_combout\);

-- Location: LCCOMB_X30_Y10_N2
\inst2|H1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H1~2_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|H1~1_combout\) # ((\inst2|Add0~0_combout\ & \inst2|H1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|H1~0_combout\,
	datad => \inst2|H1~1_combout\,
	combout => \inst2|H1~2_combout\);

-- Location: LCFF_X30_Y10_N3
\inst2|H1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|H1~2_combout\,
	ena => \inst2|H1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|H1\(3));

-- Location: LCCOMB_X30_Y10_N4
\inst2|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_0~1_combout\ = (!\inst2|H1\(2) & (!\inst2|H1\(3) & (\inst2|Equal10~0_combout\ & \inst2|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(2),
	datab => \inst2|H1\(3),
	datac => \inst2|Equal10~0_combout\,
	datad => \inst2|process_0~0_combout\,
	combout => \inst2|process_0~1_combout\);

-- Location: LCCOMB_X30_Y10_N10
\inst2|H0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~12_combout\ = (\inst|Increment~1_combout\ & (\inst2|process_0~2_combout\ & (\inst2|Equal10~1_combout\))) # (!\inst|Increment~1_combout\ & (((\inst2|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~2_combout\,
	datab => \inst2|Equal10~1_combout\,
	datac => \inst2|process_0~1_combout\,
	datad => \inst|Increment~1_combout\,
	combout => \inst2|H0~12_combout\);

-- Location: LCCOMB_X31_Y10_N20
\inst2|H0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~16_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|H0~12_combout\ & (!\inst|Increment~1_combout\)) # (!\inst2|H0~12_combout\ & ((!\inst2|H0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Increment~1_combout\,
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|H0\(0),
	datad => \inst2|H0~12_combout\,
	combout => \inst2|H0~16_combout\);

-- Location: LCFF_X31_Y10_N21
\inst2|H0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|H0~16_combout\,
	ena => \inst2|H0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|H0\(0));

-- Location: LCCOMB_X29_Y10_N24
\inst4|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (!\inst2|H0\(2) & (!\inst2|H0\(1) & (!\inst2|H0\(3) & !\inst2|H0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(2),
	datab => \inst2|H0\(1),
	datac => \inst2|H0\(3),
	datad => \inst2|H0\(0),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y10_N28
\inst2|H0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~13_combout\ = (\inst2|H0~12_combout\) # ((\inst|Increment~1_combout\ & (\inst4|Equal0~1_combout\)) # (!\inst|Increment~1_combout\ & ((\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~1_combout\,
	datab => \inst4|Equal0~0_combout\,
	datac => \inst|Increment~1_combout\,
	datad => \inst2|H0~12_combout\,
	combout => \inst2|H0~13_combout\);

-- Location: LCCOMB_X30_Y10_N24
\inst2|H0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~15_combout\ = (!\inst|CountReset~1_combout\ & (!\inst2|H0~13_combout\ & (\inst2|Add1~0_combout\ $ (!\inst|Increment~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~0_combout\,
	datab => \inst|CountReset~1_combout\,
	datac => \inst|Increment~1_combout\,
	datad => \inst2|H0~13_combout\,
	combout => \inst2|H0~15_combout\);

-- Location: LCCOMB_X34_Y10_N8
\inst2|H0[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0[1]~8_combout\ = (\inst|Increment~1_combout\ & (\inst2|process_0~3_combout\)) # (!\inst|Increment~1_combout\ & ((!\inst2|H0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Increment~1_combout\,
	datac => \inst2|process_0~3_combout\,
	datad => \inst2|H0~7_combout\,
	combout => \inst2|H0[1]~8_combout\);

-- Location: LCCOMB_X30_Y10_N16
\inst2|H0[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0[1]~10_combout\ = (\inst|CountReset~1_combout\) # ((!\inst2|H0[1]~6_combout\ & (!\inst2|H0[1]~8_combout\ & !\inst2|H0[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CountReset~1_combout\,
	datab => \inst2|H0[1]~6_combout\,
	datac => \inst2|H0[1]~8_combout\,
	datad => \inst2|H0[1]~9_combout\,
	combout => \inst2|H0[1]~10_combout\);

-- Location: LCFF_X30_Y10_N25
\inst2|H0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|H0~15_combout\,
	ena => \inst2|H0[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|H0\(1));

-- Location: LCCOMB_X29_Y10_N26
\inst2|H0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~2_combout\ = \inst2|H0\(3) $ (((!\inst2|H0\(2) & (!\inst2|H0\(1) & !\inst2|H0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(2),
	datab => \inst2|H0\(3),
	datac => \inst2|H0\(1),
	datad => \inst2|H0\(0),
	combout => \inst2|H0~2_combout\);

-- Location: LCCOMB_X29_Y10_N16
\inst2|H0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~3_combout\ = (!\inst|Increment~1_combout\ & ((\inst2|H0~2_combout\) # (\inst2|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|H0~2_combout\,
	datac => \inst|Increment~1_combout\,
	datad => \inst2|process_0~1_combout\,
	combout => \inst2|H0~3_combout\);

-- Location: LCCOMB_X30_Y10_N8
\inst2|H0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~5_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|H0~3_combout\) # ((\inst2|H0~4_combout\ & \inst2|H1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0~4_combout\,
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|H1~0_combout\,
	datad => \inst2|H0~3_combout\,
	combout => \inst2|H0~5_combout\);

-- Location: LCFF_X30_Y10_N9
\inst2|H0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|H0~5_combout\,
	ena => \inst2|H0[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|H0\(3));

-- Location: LCCOMB_X29_Y10_N6
\inst2|H0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~11_combout\ = \inst2|H0\(2) $ (((\inst2|H0\(1) & (\inst|Increment~1_combout\ & \inst2|H0\(0))) # (!\inst2|H0\(1) & (!\inst|Increment~1_combout\ & !\inst2|H0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(2),
	datab => \inst2|H0\(1),
	datac => \inst|Increment~1_combout\,
	datad => \inst2|H0\(0),
	combout => \inst2|H0~11_combout\);

-- Location: LCCOMB_X30_Y10_N26
\inst2|H0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|H0~14_combout\ = (!\inst|CountReset~1_combout\ & (\inst2|H0~11_combout\ & !\inst2|H0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|CountReset~1_combout\,
	datac => \inst2|H0~11_combout\,
	datad => \inst2|H0~13_combout\,
	combout => \inst2|H0~14_combout\);

-- Location: LCFF_X30_Y10_N27
\inst2|H0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|H0~14_combout\,
	ena => \inst2|H0[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|H0\(2));

-- Location: LCCOMB_X28_Y11_N12
\inst4|Segments_g_to_a[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Segments_g_to_a[6]~0_combout\ = (\inst2|H0\(0) & ((\inst2|H0\(3)) # (\inst2|H0\(2) $ (\inst2|H0\(1))))) # (!\inst2|H0\(0) & ((\inst2|H0\(1)) # (\inst2|H0\(3) $ (\inst2|H0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(3),
	datab => \inst2|H0\(2),
	datac => \inst2|H0\(1),
	datad => \inst2|H0\(0),
	combout => \inst4|Segments_g_to_a[6]~0_combout\);

-- Location: LCCOMB_X28_Y11_N10
\inst4|Segments_g_to_a[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Segments_g_to_a[5]~1_combout\ = (\inst2|H0\(2) & (\inst2|H0\(0) & (\inst2|H0\(3) $ (\inst2|H0\(1))))) # (!\inst2|H0\(2) & (!\inst2|H0\(3) & ((\inst2|H0\(1)) # (\inst2|H0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(3),
	datab => \inst2|H0\(2),
	datac => \inst2|H0\(1),
	datad => \inst2|H0\(0),
	combout => \inst4|Segments_g_to_a[5]~1_combout\);

-- Location: LCCOMB_X28_Y10_N20
\inst4|Segments_g_to_a[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Segments_g_to_a[4]~2_combout\ = (\inst2|H0\(1) & (!\inst2|H0\(3) & ((\inst2|H0\(0))))) # (!\inst2|H0\(1) & ((\inst2|H0\(2) & (!\inst2|H0\(3))) # (!\inst2|H0\(2) & ((\inst2|H0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(3),
	datab => \inst2|H0\(2),
	datac => \inst2|H0\(0),
	datad => \inst2|H0\(1),
	combout => \inst4|Segments_g_to_a[4]~2_combout\);

-- Location: LCCOMB_X28_Y11_N4
\inst4|Segments_g_to_a[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Segments_g_to_a[3]~3_combout\ = (\inst2|H0\(1) & ((\inst2|H0\(2) & ((\inst2|H0\(0)))) # (!\inst2|H0\(2) & (\inst2|H0\(3) & !\inst2|H0\(0))))) # (!\inst2|H0\(1) & (!\inst2|H0\(3) & (\inst2|H0\(2) $ (\inst2|H0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(3),
	datab => \inst2|H0\(2),
	datac => \inst2|H0\(1),
	datad => \inst2|H0\(0),
	combout => \inst4|Segments_g_to_a[3]~3_combout\);

-- Location: LCCOMB_X28_Y11_N6
\inst4|Segments_g_to_a[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Segments_g_to_a[2]~4_combout\ = (\inst2|H0\(3) & (((!\inst2|H0\(1) & \inst2|H0\(0))) # (!\inst2|H0\(2)))) # (!\inst2|H0\(3) & ((\inst2|H0\(2)) # ((\inst2|H0\(0)) # (!\inst2|H0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(3),
	datab => \inst2|H0\(2),
	datac => \inst2|H0\(1),
	datad => \inst2|H0\(0),
	combout => \inst4|Segments_g_to_a[2]~4_combout\);

-- Location: LCCOMB_X28_Y11_N8
\inst4|Segments_g_to_a[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Segments_g_to_a[1]~5_combout\ = (\inst2|H0\(3) & ((\inst2|H0\(0) & ((\inst2|H0\(1)))) # (!\inst2|H0\(0) & (\inst2|H0\(2))))) # (!\inst2|H0\(3) & (\inst2|H0\(2) & (\inst2|H0\(1) $ (\inst2|H0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(3),
	datab => \inst2|H0\(2),
	datac => \inst2|H0\(1),
	datad => \inst2|H0\(0),
	combout => \inst4|Segments_g_to_a[1]~5_combout\);

-- Location: LCCOMB_X28_Y11_N2
\inst4|Segments_g_to_a[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Segments_g_to_a[0]~6_combout\ = (\inst2|H0\(3) & (\inst2|H0\(0) & (\inst2|H0\(2) $ (\inst2|H0\(1))))) # (!\inst2|H0\(3) & (!\inst2|H0\(1) & (\inst2|H0\(2) $ (\inst2|H0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H0\(3),
	datab => \inst2|H0\(2),
	datac => \inst2|H0\(1),
	datad => \inst2|H0\(0),
	combout => \inst4|Segments_g_to_a[0]~6_combout\);

-- Location: LCCOMB_X1_Y15_N12
\inst3|Segments_g_to_a[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Segments_g_to_a[6]~0_combout\ = (\inst2|H1\(0) & ((\inst2|H1\(3)) # (\inst2|H1\(1) $ (\inst2|H1\(2))))) # (!\inst2|H1\(0) & ((\inst2|H1\(1)) # (\inst2|H1\(2) $ (\inst2|H1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(0),
	datab => \inst2|H1\(1),
	datac => \inst2|H1\(2),
	datad => \inst2|H1\(3),
	combout => \inst3|Segments_g_to_a[6]~0_combout\);

-- Location: LCCOMB_X1_Y15_N2
\inst3|Segments_g_to_a[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Segments_g_to_a[5]~1_combout\ = (\inst2|H1\(0) & (\inst2|H1\(3) $ (((\inst2|H1\(1)) # (!\inst2|H1\(2)))))) # (!\inst2|H1\(0) & (\inst2|H1\(1) & (!\inst2|H1\(2) & !\inst2|H1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(0),
	datab => \inst2|H1\(1),
	datac => \inst2|H1\(2),
	datad => \inst2|H1\(3),
	combout => \inst3|Segments_g_to_a[5]~1_combout\);

-- Location: LCCOMB_X1_Y15_N0
\inst3|Segments_g_to_a[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Segments_g_to_a[4]~2_combout\ = (\inst2|H1\(1) & (\inst2|H1\(0) & ((!\inst2|H1\(3))))) # (!\inst2|H1\(1) & ((\inst2|H1\(2) & ((!\inst2|H1\(3)))) # (!\inst2|H1\(2) & (\inst2|H1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(0),
	datab => \inst2|H1\(1),
	datac => \inst2|H1\(2),
	datad => \inst2|H1\(3),
	combout => \inst3|Segments_g_to_a[4]~2_combout\);

-- Location: LCCOMB_X1_Y15_N26
\inst3|Segments_g_to_a[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Segments_g_to_a[3]~3_combout\ = (\inst2|H1\(1) & ((\inst2|H1\(0) & (\inst2|H1\(2))) # (!\inst2|H1\(0) & (!\inst2|H1\(2) & \inst2|H1\(3))))) # (!\inst2|H1\(1) & (!\inst2|H1\(3) & (\inst2|H1\(0) $ (\inst2|H1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(0),
	datab => \inst2|H1\(1),
	datac => \inst2|H1\(2),
	datad => \inst2|H1\(3),
	combout => \inst3|Segments_g_to_a[3]~3_combout\);

-- Location: LCCOMB_X1_Y15_N28
\inst3|Segments_g_to_a[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Segments_g_to_a[2]~4_combout\ = (\inst2|H1\(2) & (((\inst2|H1\(0) & !\inst2|H1\(1))) # (!\inst2|H1\(3)))) # (!\inst2|H1\(2) & ((\inst2|H1\(0)) # ((\inst2|H1\(3)) # (!\inst2|H1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(0),
	datab => \inst2|H1\(1),
	datac => \inst2|H1\(2),
	datad => \inst2|H1\(3),
	combout => \inst3|Segments_g_to_a[2]~4_combout\);

-- Location: LCCOMB_X1_Y15_N30
\inst3|Segments_g_to_a[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Segments_g_to_a[1]~5_combout\ = (\inst2|H1\(1) & ((\inst2|H1\(0) & ((\inst2|H1\(3)))) # (!\inst2|H1\(0) & (\inst2|H1\(2))))) # (!\inst2|H1\(1) & (\inst2|H1\(2) & (\inst2|H1\(0) $ (\inst2|H1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(0),
	datab => \inst2|H1\(1),
	datac => \inst2|H1\(2),
	datad => \inst2|H1\(3),
	combout => \inst3|Segments_g_to_a[1]~5_combout\);

-- Location: LCCOMB_X1_Y15_N20
\inst3|Segments_g_to_a[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Segments_g_to_a[0]~6_combout\ = (\inst2|H1\(2) & (!\inst2|H1\(1) & (\inst2|H1\(0) $ (!\inst2|H1\(3))))) # (!\inst2|H1\(2) & (\inst2|H1\(0) & (\inst2|H1\(1) $ (!\inst2|H1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|H1\(0),
	datab => \inst2|H1\(1),
	datac => \inst2|H1\(2),
	datad => \inst2|H1\(3),
	combout => \inst3|Segments_g_to_a[0]~6_combout\);

-- Location: LCCOMB_X33_Y9_N8
\inst2|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~0_combout\ = \inst2|M0\(3) $ (((\inst2|M0\(1) & (\inst2|M0\(0) & \inst2|M0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M0\(3),
	datab => \inst2|M0\(1),
	datac => \inst2|M0\(0),
	datad => \inst2|M0\(2),
	combout => \inst2|Add3~0_combout\);

-- Location: LCCOMB_X33_Y9_N22
\inst2|M0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M0~1_combout\ = (!\inst|Increment~1_combout\ & (\inst2|M0\(3) $ (((\inst2|Equal8~2_combout\ & !\inst2|M0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal8~2_combout\,
	datab => \inst2|M0\(2),
	datac => \inst2|M0\(3),
	datad => \inst|Increment~1_combout\,
	combout => \inst2|M0~1_combout\);

-- Location: LCCOMB_X33_Y9_N10
\inst2|M0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|M0~3_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|M0~1_combout\) # ((\inst2|M0~2_combout\ & \inst2|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CountReset~1_combout\,
	datab => \inst2|M0~2_combout\,
	datac => \inst2|Add3~0_combout\,
	datad => \inst2|M0~1_combout\,
	combout => \inst2|M0~3_combout\);

-- Location: LCFF_X33_Y9_N11
\inst2|M0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|M0~3_combout\,
	ena => \inst2|M0[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|M0\(3));

-- Location: LCCOMB_X41_Y9_N24
\inst6|Segments_g_to_a[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Segments_g_to_a[6]~0_combout\ = (\inst2|M0\(0) & ((\inst2|M0\(3)) # (\inst2|M0\(1) $ (\inst2|M0\(2))))) # (!\inst2|M0\(0) & ((\inst2|M0\(1)) # (\inst2|M0\(3) $ (\inst2|M0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M0\(3),
	datab => \inst2|M0\(1),
	datac => \inst2|M0\(2),
	datad => \inst2|M0\(0),
	combout => \inst6|Segments_g_to_a[6]~0_combout\);

-- Location: LCCOMB_X41_Y9_N26
\inst6|Segments_g_to_a[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Segments_g_to_a[5]~1_combout\ = (\inst2|M0\(1) & (!\inst2|M0\(3) & ((\inst2|M0\(0)) # (!\inst2|M0\(2))))) # (!\inst2|M0\(1) & (\inst2|M0\(0) & (\inst2|M0\(3) $ (!\inst2|M0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M0\(3),
	datab => \inst2|M0\(1),
	datac => \inst2|M0\(2),
	datad => \inst2|M0\(0),
	combout => \inst6|Segments_g_to_a[5]~1_combout\);

-- Location: LCCOMB_X41_Y9_N8
\inst6|Segments_g_to_a[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Segments_g_to_a[4]~2_combout\ = (\inst2|M0\(1) & (!\inst2|M0\(3) & ((\inst2|M0\(0))))) # (!\inst2|M0\(1) & ((\inst2|M0\(2) & (!\inst2|M0\(3))) # (!\inst2|M0\(2) & ((\inst2|M0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M0\(3),
	datab => \inst2|M0\(1),
	datac => \inst2|M0\(2),
	datad => \inst2|M0\(0),
	combout => \inst6|Segments_g_to_a[4]~2_combout\);

-- Location: LCCOMB_X41_Y9_N10
\inst6|Segments_g_to_a[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Segments_g_to_a[3]~3_combout\ = (\inst2|M0\(1) & ((\inst2|M0\(2) & ((\inst2|M0\(0)))) # (!\inst2|M0\(2) & (\inst2|M0\(3) & !\inst2|M0\(0))))) # (!\inst2|M0\(1) & (!\inst2|M0\(3) & (\inst2|M0\(2) $ (\inst2|M0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M0\(3),
	datab => \inst2|M0\(1),
	datac => \inst2|M0\(2),
	datad => \inst2|M0\(0),
	combout => \inst6|Segments_g_to_a[3]~3_combout\);

-- Location: LCCOMB_X41_Y9_N4
\inst6|Segments_g_to_a[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Segments_g_to_a[2]~4_combout\ = (\inst2|M0\(3) & (((!\inst2|M0\(1) & \inst2|M0\(0))) # (!\inst2|M0\(2)))) # (!\inst2|M0\(3) & (((\inst2|M0\(2)) # (\inst2|M0\(0))) # (!\inst2|M0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M0\(3),
	datab => \inst2|M0\(1),
	datac => \inst2|M0\(2),
	datad => \inst2|M0\(0),
	combout => \inst6|Segments_g_to_a[2]~4_combout\);

-- Location: LCCOMB_X41_Y9_N18
\inst6|Segments_g_to_a[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Segments_g_to_a[1]~5_combout\ = (\inst2|M0\(3) & ((\inst2|M0\(0) & (\inst2|M0\(1))) # (!\inst2|M0\(0) & ((\inst2|M0\(2)))))) # (!\inst2|M0\(3) & (\inst2|M0\(2) & (\inst2|M0\(1) $ (\inst2|M0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M0\(3),
	datab => \inst2|M0\(1),
	datac => \inst2|M0\(2),
	datad => \inst2|M0\(0),
	combout => \inst6|Segments_g_to_a[1]~5_combout\);

-- Location: LCCOMB_X41_Y9_N12
\inst6|Segments_g_to_a[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Segments_g_to_a[0]~6_combout\ = (\inst2|M0\(3) & (\inst2|M0\(0) & (\inst2|M0\(1) $ (\inst2|M0\(2))))) # (!\inst2|M0\(3) & (!\inst2|M0\(1) & (\inst2|M0\(2) $ (\inst2|M0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M0\(3),
	datab => \inst2|M0\(1),
	datac => \inst2|M0\(2),
	datad => \inst2|M0\(0),
	combout => \inst6|Segments_g_to_a[0]~6_combout\);

-- Location: LCCOMB_X61_Y8_N28
\inst5|Segments_g_to_a[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Segments_g_to_a[6]~0_combout\ = (\inst2|M1\(0) & ((\inst2|M1\(3)) # (\inst2|M1\(1) $ (\inst2|M1\(2))))) # (!\inst2|M1\(0) & ((\inst2|M1\(1)) # (\inst2|M1\(2) $ (\inst2|M1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M1\(1),
	datab => \inst2|M1\(0),
	datac => \inst2|M1\(2),
	datad => \inst2|M1\(3),
	combout => \inst5|Segments_g_to_a[6]~0_combout\);

-- Location: LCCOMB_X61_Y8_N18
\inst5|Segments_g_to_a[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Segments_g_to_a[5]~1_combout\ = (\inst2|M1\(1) & (!\inst2|M1\(3) & ((\inst2|M1\(0)) # (!\inst2|M1\(2))))) # (!\inst2|M1\(1) & (\inst2|M1\(0) & (\inst2|M1\(2) $ (!\inst2|M1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M1\(1),
	datab => \inst2|M1\(0),
	datac => \inst2|M1\(2),
	datad => \inst2|M1\(3),
	combout => \inst5|Segments_g_to_a[5]~1_combout\);

-- Location: LCCOMB_X61_Y8_N20
\inst5|Segments_g_to_a[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Segments_g_to_a[4]~2_combout\ = (\inst2|M1\(1) & (\inst2|M1\(0) & ((!\inst2|M1\(3))))) # (!\inst2|M1\(1) & ((\inst2|M1\(2) & ((!\inst2|M1\(3)))) # (!\inst2|M1\(2) & (\inst2|M1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M1\(1),
	datab => \inst2|M1\(0),
	datac => \inst2|M1\(2),
	datad => \inst2|M1\(3),
	combout => \inst5|Segments_g_to_a[4]~2_combout\);

-- Location: LCCOMB_X61_Y8_N14
\inst5|Segments_g_to_a[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Segments_g_to_a[3]~3_combout\ = (\inst2|M1\(1) & ((\inst2|M1\(0) & (\inst2|M1\(2))) # (!\inst2|M1\(0) & (!\inst2|M1\(2) & \inst2|M1\(3))))) # (!\inst2|M1\(1) & (!\inst2|M1\(3) & (\inst2|M1\(0) $ (\inst2|M1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M1\(1),
	datab => \inst2|M1\(0),
	datac => \inst2|M1\(2),
	datad => \inst2|M1\(3),
	combout => \inst5|Segments_g_to_a[3]~3_combout\);

-- Location: LCCOMB_X61_Y8_N4
\inst5|Segments_g_to_a[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Segments_g_to_a[2]~4_combout\ = (\inst2|M1\(2) & (((!\inst2|M1\(1) & \inst2|M1\(0))) # (!\inst2|M1\(3)))) # (!\inst2|M1\(2) & (((\inst2|M1\(0)) # (\inst2|M1\(3))) # (!\inst2|M1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M1\(1),
	datab => \inst2|M1\(0),
	datac => \inst2|M1\(2),
	datad => \inst2|M1\(3),
	combout => \inst5|Segments_g_to_a[2]~4_combout\);

-- Location: LCCOMB_X61_Y8_N30
\inst5|Segments_g_to_a[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Segments_g_to_a[1]~5_combout\ = (\inst2|M1\(1) & ((\inst2|M1\(0) & ((\inst2|M1\(3)))) # (!\inst2|M1\(0) & (\inst2|M1\(2))))) # (!\inst2|M1\(1) & (\inst2|M1\(2) & (\inst2|M1\(0) $ (\inst2|M1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M1\(1),
	datab => \inst2|M1\(0),
	datac => \inst2|M1\(2),
	datad => \inst2|M1\(3),
	combout => \inst5|Segments_g_to_a[1]~5_combout\);

-- Location: LCCOMB_X61_Y8_N16
\inst5|Segments_g_to_a[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Segments_g_to_a[0]~6_combout\ = (\inst2|M1\(2) & (!\inst2|M1\(1) & (\inst2|M1\(0) $ (!\inst2|M1\(3))))) # (!\inst2|M1\(2) & (\inst2|M1\(0) & (\inst2|M1\(1) $ (!\inst2|M1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|M1\(1),
	datab => \inst2|M1\(0),
	datac => \inst2|M1\(2),
	datad => \inst2|M1\(3),
	combout => \inst5|Segments_g_to_a[0]~6_combout\);

-- Location: LCCOMB_X28_Y4_N8
\inst9|Segments_g_to_a[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Segments_g_to_a[6]~0_combout\ = (\inst2|S0\(0) & ((\inst2|S0\(3)) # (\inst2|S0\(1) $ (\inst2|S0\(2))))) # (!\inst2|S0\(0) & ((\inst2|S0\(1)) # (\inst2|S0\(3) $ (\inst2|S0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(1),
	datab => \inst2|S0\(3),
	datac => \inst2|S0\(0),
	datad => \inst2|S0\(2),
	combout => \inst9|Segments_g_to_a[6]~0_combout\);

-- Location: LCCOMB_X28_Y4_N10
\inst9|Segments_g_to_a[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Segments_g_to_a[5]~1_combout\ = (\inst2|S0\(1) & (!\inst2|S0\(3) & ((\inst2|S0\(0)) # (!\inst2|S0\(2))))) # (!\inst2|S0\(1) & (\inst2|S0\(0) & (\inst2|S0\(3) $ (!\inst2|S0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(1),
	datab => \inst2|S0\(3),
	datac => \inst2|S0\(0),
	datad => \inst2|S0\(2),
	combout => \inst9|Segments_g_to_a[5]~1_combout\);

-- Location: LCCOMB_X28_Y4_N12
\inst9|Segments_g_to_a[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Segments_g_to_a[4]~2_combout\ = (\inst2|S0\(1) & (!\inst2|S0\(3) & (\inst2|S0\(0)))) # (!\inst2|S0\(1) & ((\inst2|S0\(2) & (!\inst2|S0\(3))) # (!\inst2|S0\(2) & ((\inst2|S0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(1),
	datab => \inst2|S0\(3),
	datac => \inst2|S0\(0),
	datad => \inst2|S0\(2),
	combout => \inst9|Segments_g_to_a[4]~2_combout\);

-- Location: LCCOMB_X28_Y4_N26
\inst9|Segments_g_to_a[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Segments_g_to_a[3]~3_combout\ = (\inst2|S0\(1) & ((\inst2|S0\(0) & ((\inst2|S0\(2)))) # (!\inst2|S0\(0) & (\inst2|S0\(3) & !\inst2|S0\(2))))) # (!\inst2|S0\(1) & (!\inst2|S0\(3) & (\inst2|S0\(0) $ (\inst2|S0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(1),
	datab => \inst2|S0\(3),
	datac => \inst2|S0\(0),
	datad => \inst2|S0\(2),
	combout => \inst9|Segments_g_to_a[3]~3_combout\);

-- Location: LCCOMB_X28_Y4_N0
\inst9|Segments_g_to_a[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Segments_g_to_a[2]~4_combout\ = (\inst2|S0\(3) & (\inst2|S0\(2) & ((\inst2|S0\(1)) # (!\inst2|S0\(0))))) # (!\inst2|S0\(3) & (\inst2|S0\(1) & (!\inst2|S0\(0) & !\inst2|S0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(1),
	datab => \inst2|S0\(3),
	datac => \inst2|S0\(0),
	datad => \inst2|S0\(2),
	combout => \inst9|Segments_g_to_a[2]~4_combout\);

-- Location: LCCOMB_X28_Y4_N2
\inst9|Segments_g_to_a[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Segments_g_to_a[1]~5_combout\ = (\inst2|S0\(1) & ((\inst2|S0\(0) & (\inst2|S0\(3))) # (!\inst2|S0\(0) & ((\inst2|S0\(2)))))) # (!\inst2|S0\(1) & (\inst2|S0\(2) & (\inst2|S0\(3) $ (\inst2|S0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(1),
	datab => \inst2|S0\(3),
	datac => \inst2|S0\(0),
	datad => \inst2|S0\(2),
	combout => \inst9|Segments_g_to_a[1]~5_combout\);

-- Location: LCCOMB_X28_Y4_N24
\inst9|Segments_g_to_a[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Segments_g_to_a[0]~6_combout\ = (\inst2|S0\(3) & (\inst2|S0\(0) & (\inst2|S0\(1) $ (\inst2|S0\(2))))) # (!\inst2|S0\(3) & (!\inst2|S0\(1) & (\inst2|S0\(0) $ (\inst2|S0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S0\(1),
	datab => \inst2|S0\(3),
	datac => \inst2|S0\(0),
	datad => \inst2|S0\(2),
	combout => \inst9|Segments_g_to_a[0]~6_combout\);

-- Location: LCCOMB_X31_Y9_N0
\inst2|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add4~2_combout\ = \inst2|S1\(1) $ (\inst2|S1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|S1\(1),
	datad => \inst2|S1\(0),
	combout => \inst2|Add4~2_combout\);

-- Location: LCCOMB_X31_Y10_N12
\inst2|S1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|S1~9_combout\ = (!\inst|CountReset~1_combout\ & ((\inst2|Add4~2_combout\ & ((\inst2|H0[1]~19_combout\))) # (!\inst2|Add4~2_combout\ & (\inst2|S1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1~8_combout\,
	datab => \inst2|Add4~2_combout\,
	datac => \inst2|H0[1]~19_combout\,
	datad => \inst|CountReset~1_combout\,
	combout => \inst2|S1~9_combout\);

-- Location: LCFF_X31_Y10_N13
\inst2|S1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst2|S1~9_combout\,
	ena => \inst2|S1[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|S1\(1));

-- Location: LCCOMB_X61_Y8_N6
\inst8|Segments_g_to_a[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Segments_g_to_a[6]~0_combout\ = (\inst2|S1\(0) & ((\inst2|S1\(3)) # (\inst2|S1\(2) $ (\inst2|S1\(1))))) # (!\inst2|S1\(0) & ((\inst2|S1\(1)) # (\inst2|S1\(2) $ (\inst2|S1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(2),
	datab => \inst2|S1\(1),
	datac => \inst2|S1\(0),
	datad => \inst2|S1\(3),
	combout => \inst8|Segments_g_to_a[6]~0_combout\);

-- Location: LCCOMB_X61_Y8_N8
\inst8|Segments_g_to_a[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Segments_g_to_a[5]~1_combout\ = (\inst2|S1\(2) & (\inst2|S1\(0) & (\inst2|S1\(1) $ (\inst2|S1\(3))))) # (!\inst2|S1\(2) & (!\inst2|S1\(3) & ((\inst2|S1\(1)) # (\inst2|S1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(2),
	datab => \inst2|S1\(1),
	datac => \inst2|S1\(0),
	datad => \inst2|S1\(3),
	combout => \inst8|Segments_g_to_a[5]~1_combout\);

-- Location: LCCOMB_X61_Y8_N22
\inst8|Segments_g_to_a[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Segments_g_to_a[4]~2_combout\ = (\inst2|S1\(1) & (((\inst2|S1\(0) & !\inst2|S1\(3))))) # (!\inst2|S1\(1) & ((\inst2|S1\(2) & ((!\inst2|S1\(3)))) # (!\inst2|S1\(2) & (\inst2|S1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(2),
	datab => \inst2|S1\(1),
	datac => \inst2|S1\(0),
	datad => \inst2|S1\(3),
	combout => \inst8|Segments_g_to_a[4]~2_combout\);

-- Location: LCCOMB_X61_Y8_N24
\inst8|Segments_g_to_a[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Segments_g_to_a[3]~3_combout\ = (\inst2|S1\(1) & ((\inst2|S1\(2) & (\inst2|S1\(0))) # (!\inst2|S1\(2) & (!\inst2|S1\(0) & \inst2|S1\(3))))) # (!\inst2|S1\(1) & (!\inst2|S1\(3) & (\inst2|S1\(2) $ (\inst2|S1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(2),
	datab => \inst2|S1\(1),
	datac => \inst2|S1\(0),
	datad => \inst2|S1\(3),
	combout => \inst8|Segments_g_to_a[3]~3_combout\);

-- Location: LCCOMB_X61_Y8_N26
\inst8|Segments_g_to_a[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Segments_g_to_a[2]~4_combout\ = (\inst2|S1\(2) & (((!\inst2|S1\(1) & \inst2|S1\(0))) # (!\inst2|S1\(3)))) # (!\inst2|S1\(2) & (((\inst2|S1\(0)) # (\inst2|S1\(3))) # (!\inst2|S1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(2),
	datab => \inst2|S1\(1),
	datac => \inst2|S1\(0),
	datad => \inst2|S1\(3),
	combout => \inst8|Segments_g_to_a[2]~4_combout\);

-- Location: LCCOMB_X61_Y8_N12
\inst8|Segments_g_to_a[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Segments_g_to_a[1]~5_combout\ = (\inst2|S1\(1) & ((\inst2|S1\(0) & ((\inst2|S1\(3)))) # (!\inst2|S1\(0) & (\inst2|S1\(2))))) # (!\inst2|S1\(1) & (\inst2|S1\(2) & (\inst2|S1\(0) $ (\inst2|S1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(2),
	datab => \inst2|S1\(1),
	datac => \inst2|S1\(0),
	datad => \inst2|S1\(3),
	combout => \inst8|Segments_g_to_a[1]~5_combout\);

-- Location: LCCOMB_X61_Y8_N10
\inst8|Segments_g_to_a[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Segments_g_to_a[0]~6_combout\ = (\inst2|S1\(2) & (!\inst2|S1\(1) & (\inst2|S1\(0) $ (!\inst2|S1\(3))))) # (!\inst2|S1\(2) & (\inst2|S1\(0) & (\inst2|S1\(1) $ (!\inst2|S1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|S1\(2),
	datab => \inst2|S1\(1),
	datac => \inst2|S1\(0),
	datad => \inst2|S1\(3),
	combout => \inst8|Segments_g_to_a[0]~6_combout\);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_ON_DE2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_ON_DE2);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_BLON_DE2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_BLON_DE2);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|inst|ALT_INV_E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RW~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|inst|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RW);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|inst1|ALT_INV_DataOrCommand~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RS);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DB[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|inst2|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DB(7));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DB[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|inst2|Mux1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DB(6));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DB[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|inst2|Mux2~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DB(5));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DB[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|inst2|Mux3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DB(4));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DB[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|inst2|Mux4~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DB(3));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DB[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|inst2|Mux5~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DB(2));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|inst2|Mux6~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DB(1));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|inst2|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DB(0));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Segments_g_to_a[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H0(6));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Segments_g_to_a[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H0(5));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Segments_g_to_a[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H0(4));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Segments_g_to_a[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H0(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Segments_g_to_a[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H0(2));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Segments_g_to_a[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H0(1));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Segments_g_to_a[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H0(0));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|ALT_INV_Segments_g_to_a[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H1(6));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Segments_g_to_a[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H1(5));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Segments_g_to_a[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H1(4));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Segments_g_to_a[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H1(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|ALT_INV_Segments_g_to_a[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H1(2));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Segments_g_to_a[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H1(1));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\H1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Segments_g_to_a[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_H1(0));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|ALT_INV_Segments_g_to_a[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M0(6));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Segments_g_to_a[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M0(5));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Segments_g_to_a[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M0(4));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Segments_g_to_a[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M0(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|ALT_INV_Segments_g_to_a[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M0(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Segments_g_to_a[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M0(1));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Segments_g_to_a[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M0(0));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Segments_g_to_a[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M1(6));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|Segments_g_to_a[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M1(5));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|Segments_g_to_a[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M1(4));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|Segments_g_to_a[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M1(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Segments_g_to_a[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M1(2));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|Segments_g_to_a[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M1(1));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|Segments_g_to_a[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M1(0));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|ALT_INV_Segments_g_to_a[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S0(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Segments_g_to_a[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S0(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Segments_g_to_a[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S0(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Segments_g_to_a[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Segments_g_to_a[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S0(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Segments_g_to_a[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S0(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Segments_g_to_a[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S0(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|ALT_INV_Segments_g_to_a[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Segments_g_to_a[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Segments_g_to_a[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Segments_g_to_a[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|ALT_INV_Segments_g_to_a[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Segments_g_to_a[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Segments_g_to_a[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(0));
END structure;


