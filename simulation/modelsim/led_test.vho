-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/24/2024 22:34:15"

-- 
-- Device: Altera 5M160ZE64C5 Package EQFP64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	led_test IS
    PORT (
	CLK : IN std_logic;
	CLK1 : IN std_logic;
	LED_matrix : OUT std_logic_vector(4 DOWNTO 0);
	ground_matrix : BUFFER std_logic_vector(6 DOWNTO 0);
	BTN_up : IN std_logic;
	BTN_down : IN std_logic;
	vdd : OUT std_logic;
	segment_7 : BUFFER std_logic_vector(3 DOWNTO 0);
	vie : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END led_test;

-- Design Ports Information


ARCHITECTURE structure OF led_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLK1 : std_logic;
SIGNAL ww_LED_matrix : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ground_matrix : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BTN_up : std_logic;
SIGNAL ww_BTN_down : std_logic;
SIGNAL ww_vdd : std_logic;
SIGNAL ww_segment_7 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vie : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~20\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~20\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \BTN_up~combout\ : std_logic;
SIGNAL \process_1~0\ : std_logic;
SIGNAL \BTN_down~combout\ : std_logic;
SIGNAL \prev_BTN_down_state~regout\ : std_logic;
SIGNAL \prev_BTN_up_state~regout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|my_abs_num|_~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUTCOUT1_29\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~27_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17COUT1_30\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2COUT1_31\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12COUT1_32\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22_cout0\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22COUT1_33\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|remainder[0]~0_combout\ : std_logic;
SIGNAL \player_pos~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUTCOUT1_22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17COUT1_23\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7COUT1_24\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUTCOUT1_30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17COUT1_31\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2COUT1_32\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12COUT1_33\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22COUT1_34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ : std_logic;
SIGNAL \player_pos~14_combout\ : std_logic;
SIGNAL \process_1~1\ : std_logic;
SIGNAL \CLK1~combout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~2COUT1_26\ : std_logic;
SIGNAL \Add7~5_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~7COUT1_27\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~12\ : std_logic;
SIGNAL \Add7~12COUT1_28\ : std_logic;
SIGNAL \Add7~15_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~17COUT1_29\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \mur[0]~2_combout\ : std_logic;
SIGNAL \Mux14~2\ : std_logic;
SIGNAL \segment_7_count[1]~2_combout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~2COUT1_26\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~7COUT1_27\ : std_logic;
SIGNAL \Add6~12\ : std_logic;
SIGNAL \Add6~12COUT1_28\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~17COUT1_29\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \vie_count[1]~2_combout\ : std_logic;
SIGNAL \Add6~15_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \mur[2]~0_combout\ : std_logic;
SIGNAL \mur[2]~1_combout\ : std_logic;
SIGNAL \mur[2]~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \vie_count[1]~3_combout\ : std_logic;
SIGNAL \game_over~regout\ : std_logic;
SIGNAL \player_pos[2]~15_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12COUT1_25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ : std_logic;
SIGNAL \player_pos~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|my_abs_num|_~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]~COUTCOUT1_12\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2COUT1_13\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|remainder[2]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|remainder[1]~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \player_pos~10_combout\ : std_logic;
SIGNAL \player~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\ : std_logic;
SIGNAL \player~3_combout\ : std_logic;
SIGNAL \player[0]~COMBOUT\ : std_logic;
SIGNAL \player_pos[2]~COMBOUT\ : std_logic;
SIGNAL \Decoder2~0_combout\ : std_logic;
SIGNAL \player~4_combout\ : std_logic;
SIGNAL \LED_matrix[0]~0_combout\ : std_logic;
SIGNAL \LED_matrix[0]~reg0_regout\ : std_logic;
SIGNAL \player~5_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \player~6_combout\ : std_logic;
SIGNAL \player[1]~COMBOUT\ : std_logic;
SIGNAL \Decoder2~1_combout\ : std_logic;
SIGNAL \player~7_combout\ : std_logic;
SIGNAL \LED_matrix[1]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \player~18_combout\ : std_logic;
SIGNAL \player~8_combout\ : std_logic;
SIGNAL \player~9_combout\ : std_logic;
SIGNAL \LED_matrix[2]~reg0_regout\ : std_logic;
SIGNAL \player~11_combout\ : std_logic;
SIGNAL \player~12_combout\ : std_logic;
SIGNAL \player[3]~COMBOUT\ : std_logic;
SIGNAL \player~13_combout\ : std_logic;
SIGNAL \LED_matrix[3]~reg0_regout\ : std_logic;
SIGNAL \player~16_combout\ : std_logic;
SIGNAL \player~14_combout\ : std_logic;
SIGNAL \player~15_combout\ : std_logic;
SIGNAL \player[4]~COMBOUT\ : std_logic;
SIGNAL \Decoder2~2_combout\ : std_logic;
SIGNAL \player~17_combout\ : std_logic;
SIGNAL \LED_matrix[4]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix_mur[0]~0_combout\ : std_logic;
SIGNAL \ground_matrix[0]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[1]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[2]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[3]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[4]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[5]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[6]~reg0_regout\ : std_logic;
SIGNAL \segment_7[0]~reg0_regout\ : std_logic;
SIGNAL \segment_7[1]~reg0_regout\ : std_logic;
SIGNAL \segment_7[2]~reg0_regout\ : std_logic;
SIGNAL \segment_7[3]~reg0_regout\ : std_logic;
SIGNAL \vie[0]~reg0_regout\ : std_logic;
SIGNAL \vie[1]~reg0_regout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \vie[2]~reg0_regout\ : std_logic;
SIGNAL player : std_logic_vector(4 DOWNTO 0);
SIGNAL vie_count : std_logic_vector(1 DOWNTO 0);
SIGNAL mur : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ligne_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\ : std_logic_vector(2 DOWNTO 0);
SIGNAL segment_7_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ground_matrix_mur : std_logic_vector(6 DOWNTO 0);
SIGNAL player_pos : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL pseudo_random : std_logic_vector(2 DOWNTO 0);
SIGNAL ligne_counter_slow : std_logic_vector(2 DOWNTO 0);
SIGNAL speed : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_game_over~regout\ : std_logic;
SIGNAL \ALT_INV_process_1~1\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_CLK1 <= CLK1;
LED_matrix <= ww_LED_matrix;
ground_matrix <= ww_ground_matrix;
ww_BTN_up <= BTN_up;
ww_BTN_down <= BTN_down;
vdd <= ww_vdd;
segment_7 <= ww_segment_7;
vie <= ww_vie;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_game_over~regout\ <= NOT \game_over~regout\;
\ALT_INV_process_1~1\ <= NOT \process_1~1\;

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN_up~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BTN_up,
	combout => \BTN_up~combout\);

-- Location: LC_X3_Y4_N7
prev_BTN_up_state : maxv_lcell
-- Equation(s):
-- \process_1~0\ = (\BTN_up~combout\) # (((!prev_BTN_up_state)))
-- \prev_BTN_up_state~regout\ = DFFEAS(\process_1~0\, GLOBAL(\CLK~combout\), VCC, , , \BTN_up~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \BTN_up~combout\,
	datac => \BTN_up~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~0\,
	regout => \prev_BTN_up_state~regout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN_down~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BTN_down,
	combout => \BTN_down~combout\);

-- Location: LC_X4_Y3_N7
prev_BTN_down_state : maxv_lcell
-- Equation(s):
-- \process_1~1\ = (!\BTN_down~combout\ & (((prev_BTN_down_state))))
-- \prev_BTN_down_state~regout\ = DFFEAS(\process_1~1\, GLOBAL(\CLK~combout\), VCC, , , \BTN_down~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \BTN_down~combout\,
	datac => \BTN_down~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~1\,
	regout => \prev_BTN_down_state~regout\);

-- Location: LC_X4_Y2_N8
\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella\(0) = (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUT\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUTCOUT1_29\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa55",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella\(0),
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUT\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUTCOUT1_29\);

-- Location: LC_X4_Y3_N2
\Mod1|auto_generated|divider|my_abs_num|_~0\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|my_abs_num|_~0_combout\ = ((player_pos(1) & (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & player_pos(2))) # (!player_pos(1) & (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => player_pos(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|my_abs_num|_~0_combout\);

-- Location: LC_X4_Y2_N9
\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~27\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~27_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUT\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUTCOUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~27_combout\);

-- Location: LC_X4_Y2_N0
\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\ = CARRY(((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~27_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17COUT1_30\ = CARRY(((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~15\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17COUT1_30\);

-- Location: LC_X4_Y2_N1
\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0_combout\ = (\Mod1|auto_generated|divider|my_abs_num|_~0_combout\ $ ((!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\ = CARRY(((!\Mod1|auto_generated|divider|my_abs_num|_~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2COUT1_31\ = CARRY(((!\Mod1|auto_generated|divider|my_abs_num|_~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17COUT1_30\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|my_abs_num|_~0_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2COUT1_31\);

-- Location: LC_X4_Y2_N2
\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10_combout\ = (\Mod1|auto_generated|divider|my_abs_num|_~1_combout\ $ ((!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12\ = CARRY(((\Mod1|auto_generated|divider|my_abs_num|_~1_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12COUT1_32\ = CARRY(((\Mod1|auto_generated|divider|my_abs_num|_~1_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2COUT1_31\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|my_abs_num|_~1_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12COUT1_32\);

-- Location: LC_X4_Y2_N3
\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22_cout0\ = CARRY(((!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22COUT1_33\ = CARRY(((!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff0f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~20\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22_cout0\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22COUT1_33\);

-- Location: LC_X4_Y2_N4
\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\ = (((!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22_cout0\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\);

-- Location: LC_X5_Y2_N0
\Mod1|auto_generated|divider|divider|StageOut[20]~6\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella\(0) & \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella\(0),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\);

-- Location: LC_X5_Y2_N8
\Mod1|auto_generated|divider|divider|StageOut[20]~7\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & !\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\);

-- Location: LC_X5_Y2_N3
\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella\(0) = (\Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\))
-- \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]~COUT\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\)))
-- \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]~COUTCOUT1_12\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee11",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella\(0),
	cout0 => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]~COUT\,
	cout1 => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]~COUTCOUT1_12\);

-- Location: LC_X6_Y2_N1
\Mod1|auto_generated|divider|remainder[0]~0\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|remainder[0]~0_combout\ = (\Add2~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\)))) # (!\Add2~0_combout\ & 
-- (((\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\,
	datab => \Add2~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\,
	datad => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|remainder[0]~0_combout\);

-- Location: LC_X2_Y2_N5
\player_pos~18\ : maxv_lcell
-- Equation(s):
-- \player_pos~18_combout\ = (!\BTN_down~combout\ & (\prev_BTN_down_state~regout\ & (\Add2~0_combout\ $ (!\Mod1|auto_generated|divider|remainder[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_down~combout\,
	datab => \prev_BTN_down_state~regout\,
	datac => \Add2~0_combout\,
	datad => \Mod1|auto_generated|divider|remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos~18_combout\);

-- Location: LC_X3_Y3_N2
\Mod0|auto_generated|divider|divider|StageOut[10]~7\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ = (!player_pos(1) & (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & (player_pos(2) & !\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(1),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datac => player_pos(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\);

-- Location: LC_X3_Y3_N3
\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0) = player_pos(1) $ ((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUT\ = CARRY(player_pos(1) $ ((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUTCOUT1_22\ = CARRY(player_pos(1) $ ((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9999",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(1),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUTCOUT1_22\);

-- Location: LC_X3_Y3_N4
\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUT\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUTCOUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20_combout\);

-- Location: LC_X3_Y3_N5
\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20_combout\))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17COUT1_23\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~15\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17COUT1_23\);

-- Location: LC_X3_Y3_N6
\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5_combout\ = player_pos(2) $ (\Add1~1_combout\ $ ((!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\ & (player_pos(2) $ (!\Add1~1_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7COUT1_24\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17COUT1_23\ & (player_pos(2) $ (!\Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6909",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(2),
	datab => \Add1~1_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7COUT1_24\);

-- Location: LC_X3_Y3_N7
\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10_combout\ = \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\ $ ((((!\Add1~1_combout\)) # (!player_pos(2))))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12\ = CARRY((player_pos(2) & (\Add1~1_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\)))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12COUT1_25\ = CARRY((player_pos(2) & (\Add1~1_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7COUT1_24\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(2),
	datab => \Add1~1_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12COUT1_25\);

-- Location: LC_X3_Y3_N0
\Mod0|auto_generated|divider|divider|StageOut[10]~8\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~8_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~8_combout\);

-- Location: LC_X3_Y3_N1
\Mod0|auto_generated|divider|divider|StageOut[9]~5\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5_combout\ & \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\);

-- Location: LC_X4_Y3_N6
\Mod0|auto_generated|divider|divider|StageOut[9]~4\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ & (player_pos(2) $ (((!player_pos(1) & \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "090a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(2),
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LC_X4_Y3_N3
\Mod0|auto_generated|divider|divider|StageOut[8]~0\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ = ((!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ & (player_pos(1) $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\);

-- Location: LC_X4_Y2_N6
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) = (player_pos(0))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUT\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUTCOUT1_30\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa33",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(0),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUTCOUT1_30\);

-- Location: LC_X4_Y2_N7
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUT\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUTCOUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26_combout\);

-- Location: LC_X3_Y2_N5
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26_combout\))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17COUT1_31\ = CARRY((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~15\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17COUT1_31\);

-- Location: LC_X3_Y2_N6
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\ = \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2COUT1_32\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17COUT1_31\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2COUT1_32\);

-- Location: LC_X3_Y2_N7
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\ = \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2\ & ((\Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12COUT1_33\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2COUT1_32\ & ((\Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12COUT1_33\);

-- Location: LC_X3_Y2_N8
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[10]~8_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22COUT1_34\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[10]~8_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[10]~8_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~20\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22COUT1_34\);

-- Location: LC_X3_Y2_N9
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\);

-- Location: LC_X2_Y2_N2
\player_pos~14\ : maxv_lcell
-- Equation(s):
-- \player_pos~14_combout\ = (\BTN_down~combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))))) # (!\BTN_down~combout\ & (!\prev_BTN_down_state~regout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b00b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_down~combout\,
	datab => \prev_BTN_down_state~regout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos~14_combout\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK1,
	combout => \CLK1~combout\);

-- Location: LC_X4_Y4_N9
\ligne_counter[0]\ : maxv_lcell
-- Equation(s):
-- ligne_counter(0) = DFFEAS((((!ligne_counter(0)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => ligne_counter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter(0));

-- Location: LC_X4_Y4_N3
\pseudo_random[1]\ : maxv_lcell
-- Equation(s):
-- pseudo_random(1) = DFFEAS(((ligne_counter(0) & (!pseudo_random(2) & !pseudo_random(1))) # (!ligne_counter(0) & ((pseudo_random(1))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "330c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => ligne_counter(0),
	datac => pseudo_random(2),
	datad => pseudo_random(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pseudo_random(1));

-- Location: LC_X4_Y4_N0
\pseudo_random[2]\ : maxv_lcell
-- Equation(s):
-- pseudo_random(2) = DFFEAS(((ligne_counter(0) & (!pseudo_random(2) & pseudo_random(1))) # (!ligne_counter(0) & (pseudo_random(2)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => ligne_counter(0),
	datac => pseudo_random(2),
	datad => pseudo_random(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pseudo_random(2));

-- Location: LC_X3_Y4_N0
\Add7~0\ : maxv_lcell
-- Equation(s):
-- \Add7~0_combout\ = (!speed(0))
-- \Add7~2\ = CARRY((speed(0)))
-- \Add7~2COUT1_26\ = CARRY((speed(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => speed(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~0_combout\,
	cout0 => \Add7~2\,
	cout1 => \Add7~2COUT1_26\);

-- Location: LC_X3_Y4_N1
\Add7~5\ : maxv_lcell
-- Equation(s):
-- \Add7~5_combout\ = (speed(1) $ ((\Add7~2\)))
-- \Add7~7\ = CARRY(((!\Add7~2\) # (!speed(1))))
-- \Add7~7COUT1_27\ = CARRY(((!\Add7~2COUT1_26\) # (!speed(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => speed(1),
	cin0 => \Add7~2\,
	cin1 => \Add7~2COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~5_combout\,
	cout0 => \Add7~7\,
	cout1 => \Add7~7COUT1_27\);

-- Location: LC_X6_Y4_N5
\speed[1]\ : maxv_lcell
-- Equation(s):
-- speed(1) = DFFEAS((\Add7~5_combout\ & (((\Add6~20_combout\) # (!\Equal2~0_combout\)) # (!\Add6~15_combout\))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => \Add6~15_combout\,
	datab => \Add7~5_combout\,
	datac => \Add6~20_combout\,
	datad => \Equal2~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => speed(1));

-- Location: LC_X3_Y4_N2
\Add7~10\ : maxv_lcell
-- Equation(s):
-- \Add7~10_combout\ = (speed(2) $ ((!\Add7~7\)))
-- \Add7~12\ = CARRY(((speed(2) & !\Add7~7\)))
-- \Add7~12COUT1_28\ = CARRY(((speed(2) & !\Add7~7COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => speed(2),
	cin0 => \Add7~7\,
	cin1 => \Add7~7COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~10_combout\,
	cout0 => \Add7~12\,
	cout1 => \Add7~12COUT1_28\);

-- Location: LC_X6_Y4_N6
\speed[2]\ : maxv_lcell
-- Equation(s):
-- speed(2) = DFFEAS((\Add7~10_combout\ & (((\Add6~20_combout\) # (!\Equal2~0_combout\)) # (!\Add6~15_combout\))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => \Add6~15_combout\,
	datab => \Add6~20_combout\,
	datac => \Add7~10_combout\,
	datad => \Equal2~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => speed(2));

-- Location: LC_X3_Y4_N3
\Add7~15\ : maxv_lcell
-- Equation(s):
-- \Add7~15_combout\ = (speed(3) $ ((\Add7~12\)))
-- \Add7~17\ = CARRY(((!\Add7~12\) # (!speed(3))))
-- \Add7~17COUT1_29\ = CARRY(((!\Add7~12COUT1_28\) # (!speed(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => speed(3),
	cin0 => \Add7~12\,
	cin1 => \Add7~12COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~15_combout\,
	cout0 => \Add7~17\,
	cout1 => \Add7~17COUT1_29\);

-- Location: LC_X5_Y4_N7
\speed[3]\ : maxv_lcell
-- Equation(s):
-- speed(3) = DFFEAS((\Add7~15_combout\ & (((\Add6~20_combout\) # (!\Add6~15_combout\)) # (!\Equal2~0_combout\))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => \Equal2~0_combout\,
	datab => \Add6~20_combout\,
	datac => \Add6~15_combout\,
	datad => \Add7~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => speed(3));

-- Location: LC_X3_Y4_N4
\Add7~20\ : maxv_lcell
-- Equation(s):
-- \Add7~20_combout\ = ((\Add7~17\ $ (!speed(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => speed(4),
	cin0 => \Add7~17\,
	cin1 => \Add7~17COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~20_combout\);

-- Location: LC_X5_Y4_N2
\speed[4]\ : maxv_lcell
-- Equation(s):
-- speed(4) = DFFEAS((\Add7~20_combout\ & (((\Add6~20_combout\) # (!\Add6~15_combout\)) # (!\Equal2~0_combout\))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => \Equal2~0_combout\,
	datab => \Add6~20_combout\,
	datac => \Add6~15_combout\,
	datad => \Add7~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => speed(4));

-- Location: LC_X4_Y4_N1
\mur[0]~2\ : maxv_lcell
-- Equation(s):
-- \mur[0]~2_combout\ = (\mur[2]~1_combout\ & (((!pseudo_random(1) & !ligne_counter(0))) # (!pseudo_random(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pseudo_random(1),
	datab => ligne_counter(0),
	datac => pseudo_random(2),
	datad => \mur[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mur[0]~2_combout\);

-- Location: LC_X4_Y4_N8
\mur[4]\ : maxv_lcell
-- Equation(s):
-- \Mux14~2\ = (player_pos(2) & (((mur[4])))) # (!player_pos(2) & (((\Mux14~1_combout\))))
-- mur(4) = DFFEAS(\Mux14~2\, GLOBAL(\CLK1~combout\), VCC, , \mur[0]~2_combout\, pseudo_random(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => player_pos(2),
	datac => pseudo_random(2),
	datad => \Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mur[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~2\,
	regout => mur(4));

-- Location: LC_X7_Y4_N2
\segment_7_count[1]~2\ : maxv_lcell
-- Equation(s):
-- \segment_7_count[1]~2_combout\ = (segment_7_count(0) & (((\vie_count[1]~2_combout\ & \Mux14~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => segment_7_count(0),
	datac => \vie_count[1]~2_combout\,
	datad => \Mux14~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \segment_7_count[1]~2_combout\);

-- Location: LC_X7_Y4_N6
\segment_7_count[2]\ : maxv_lcell
-- Equation(s):
-- segment_7_count(2) = DFFEAS((segment_7_count(2) $ (((segment_7_count(1) & \segment_7_count[1]~2_combout\)))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datab => segment_7_count(2),
	datac => segment_7_count(1),
	datad => \segment_7_count[1]~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => segment_7_count(2));

-- Location: LC_X6_Y4_N0
\Add6~0\ : maxv_lcell
-- Equation(s):
-- \Add6~0_combout\ = speed(1) $ ((segment_7_count(0)))
-- \Add6~2\ = CARRY((speed(1) & (segment_7_count(0))))
-- \Add6~2COUT1_26\ = CARRY((speed(1) & (segment_7_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => speed(1),
	datab => segment_7_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0_combout\,
	cout0 => \Add6~2\,
	cout1 => \Add6~2COUT1_26\);

-- Location: LC_X6_Y4_N1
\Add6~5\ : maxv_lcell
-- Equation(s):
-- \Add6~5_combout\ = speed(2) $ (segment_7_count(1) $ ((\Add6~2\)))
-- \Add6~7\ = CARRY((speed(2) & (!segment_7_count(1) & !\Add6~2\)) # (!speed(2) & ((!\Add6~2\) # (!segment_7_count(1)))))
-- \Add6~7COUT1_27\ = CARRY((speed(2) & (!segment_7_count(1) & !\Add6~2COUT1_26\)) # (!speed(2) & ((!\Add6~2COUT1_26\) # (!segment_7_count(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => speed(2),
	datab => segment_7_count(1),
	cin0 => \Add6~2\,
	cin1 => \Add6~2COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~5_combout\,
	cout0 => \Add6~7\,
	cout1 => \Add6~7COUT1_27\);

-- Location: LC_X6_Y4_N2
\Add6~10\ : maxv_lcell
-- Equation(s):
-- \Add6~10_combout\ = segment_7_count(2) $ (speed(3) $ ((!\Add6~7\)))
-- \Add6~12\ = CARRY((segment_7_count(2) & ((speed(3)) # (!\Add6~7\))) # (!segment_7_count(2) & (speed(3) & !\Add6~7\)))
-- \Add6~12COUT1_28\ = CARRY((segment_7_count(2) & ((speed(3)) # (!\Add6~7COUT1_27\))) # (!segment_7_count(2) & (speed(3) & !\Add6~7COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => segment_7_count(2),
	datab => speed(3),
	cin0 => \Add6~7\,
	cin1 => \Add6~7COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~10_combout\,
	cout0 => \Add6~12\,
	cout1 => \Add6~12COUT1_28\);

-- Location: LC_X6_Y4_N3
\Add6~15\ : maxv_lcell
-- Equation(s):
-- \Add6~15_combout\ = segment_7_count(3) $ (speed(4) $ ((\Add6~12\)))
-- \Add6~17\ = CARRY((segment_7_count(3) & (!speed(4) & !\Add6~12\)) # (!segment_7_count(3) & ((!\Add6~12\) # (!speed(4)))))
-- \Add6~17COUT1_29\ = CARRY((segment_7_count(3) & (!speed(4) & !\Add6~12COUT1_28\)) # (!segment_7_count(3) & ((!\Add6~12COUT1_28\) # (!speed(4)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => segment_7_count(3),
	datab => speed(4),
	cin0 => \Add6~12\,
	cin1 => \Add6~12COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~15_combout\,
	cout0 => \Add6~17\,
	cout1 => \Add6~17COUT1_29\);

-- Location: LC_X6_Y4_N4
\Add6~20\ : maxv_lcell
-- Equation(s):
-- \Add6~20_combout\ = (((!\Add6~17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Add6~17\,
	cin1 => \Add6~17COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~20_combout\);

-- Location: LC_X6_Y4_N8
\Equal2~1\ : maxv_lcell
-- Equation(s):
-- \Equal2~1_combout\ = (!\Add6~20_combout\ & (((\Equal2~0_combout\ & \Add6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~20_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add6~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~1_combout\);

-- Location: LC_X5_Y4_N6
\ligne_counter_slow[1]\ : maxv_lcell
-- Equation(s):
-- ligne_counter_slow(1) = DFFEAS(ligne_counter_slow(1) $ (((ligne_counter_slow(0) & (\Equal2~1_combout\)))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c6c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => ligne_counter_slow(0),
	datab => ligne_counter_slow(1),
	datac => \Equal2~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter_slow(1));

-- Location: LC_X6_Y4_N9
\vie_count[1]~2\ : maxv_lcell
-- Equation(s):
-- \vie_count[1]~2_combout\ = (ligne_counter_slow(2) & (ligne_counter_slow(1) & (!ligne_counter_slow(0) & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ligne_counter_slow(2),
	datab => ligne_counter_slow(1),
	datac => ligne_counter_slow(0),
	datad => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \vie_count[1]~2_combout\);

-- Location: LC_X7_Y4_N4
\segment_7_count[0]\ : maxv_lcell
-- Equation(s):
-- segment_7_count(0) = DFFEAS((segment_7_count(0) $ (((\vie_count[1]~2_combout\ & \Mux14~2\)))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datab => \vie_count[1]~2_combout\,
	datac => segment_7_count(0),
	datad => \Mux14~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => segment_7_count(0));

-- Location: LC_X7_Y4_N8
\segment_7_count[1]\ : maxv_lcell
-- Equation(s):
-- segment_7_count(1) = DFFEAS(segment_7_count(1) $ (((segment_7_count(0) & (\Mux14~2\ & \vie_count[1]~2_combout\)))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => segment_7_count(1),
	datab => segment_7_count(0),
	datac => \Mux14~2\,
	datad => \vie_count[1]~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => segment_7_count(1));

-- Location: LC_X7_Y4_N3
\segment_7_count[3]\ : maxv_lcell
-- Equation(s):
-- segment_7_count(3) = DFFEAS(segment_7_count(3) $ (((segment_7_count(1) & (segment_7_count(2) & \segment_7_count[1]~2_combout\)))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => segment_7_count(1),
	datab => segment_7_count(2),
	datac => segment_7_count(3),
	datad => \segment_7_count[1]~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => segment_7_count(3));

-- Location: LC_X3_Y4_N8
\speed[0]\ : maxv_lcell
-- Equation(s):
-- speed(0) = DFFEAS(\Add7~0_combout\ $ (((\Add6~15_combout\ & (\Equal2~0_combout\ & !\Add6~20_combout\)))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f078",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => \Add6~15_combout\,
	datab => \Equal2~0_combout\,
	datac => \Add7~0_combout\,
	datad => \Add6~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => speed(0));

-- Location: LC_X6_Y4_N7
\Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Equal2~0_combout\ = (!speed(0) & (\Add6~0_combout\ & (\Add6~10_combout\ & \Add6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => speed(0),
	datab => \Add6~0_combout\,
	datac => \Add6~10_combout\,
	datad => \Add6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: LC_X3_Y4_N5
\ligne_counter_slow[0]\ : maxv_lcell
-- Equation(s):
-- ligne_counter_slow(0) = DFFEAS(ligne_counter_slow(0) $ (((\Equal2~0_combout\ & (\Add6~15_combout\ & !\Add6~20_combout\)))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa6a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => ligne_counter_slow(0),
	datab => \Equal2~0_combout\,
	datac => \Add6~15_combout\,
	datad => \Add6~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter_slow(0));

-- Location: LC_X5_Y4_N1
\ligne_counter_slow[2]\ : maxv_lcell
-- Equation(s):
-- ligne_counter_slow(2) = DFFEAS(ligne_counter_slow(2) $ (((ligne_counter_slow(0) & (\Equal2~1_combout\ & ligne_counter_slow(1))))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => ligne_counter_slow(0),
	datab => ligne_counter_slow(2),
	datac => \Equal2~1_combout\,
	datad => ligne_counter_slow(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter_slow(2));

-- Location: LC_X5_Y4_N4
\mur[2]~0\ : maxv_lcell
-- Equation(s):
-- \mur[2]~0_combout\ = ((!ligne_counter_slow(2) & (!ligne_counter_slow(1) & !ligne_counter_slow(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ligne_counter_slow(2),
	datac => ligne_counter_slow(1),
	datad => ligne_counter_slow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mur[2]~0_combout\);

-- Location: LC_X5_Y4_N8
\mur[2]~1\ : maxv_lcell
-- Equation(s):
-- \mur[2]~1_combout\ = (\mur[2]~0_combout\ & (!\Add6~20_combout\ & (\Add6~15_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mur[2]~0_combout\,
	datab => \Add6~20_combout\,
	datac => \Add6~15_combout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mur[2]~1_combout\);

-- Location: LC_X4_Y1_N7
\mur[2]~3\ : maxv_lcell
-- Equation(s):
-- \mur[2]~3_combout\ = ((ligne_counter(0) & ((!pseudo_random(2)))) # (!ligne_counter(0) & (!pseudo_random(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f55",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pseudo_random(1),
	datac => pseudo_random(2),
	datad => ligne_counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mur[2]~3_combout\);

-- Location: LC_X4_Y1_N8
\mur[2]\ : maxv_lcell
-- Equation(s):
-- mur(2) = DFFEAS((\mur[2]~1_combout\ & ((\mur[2]~3_combout\) # ((pseudo_random(2) & mur(2))))) # (!\mur[2]~1_combout\ & (((mur(2))))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => pseudo_random(2),
	datab => mur(2),
	datac => \mur[2]~1_combout\,
	datad => \mur[2]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mur(2));

-- Location: LC_X4_Y4_N4
\mur[3]\ : maxv_lcell
-- Equation(s):
-- mur(3) = DFFEAS((pseudo_random(1) & (((ligne_counter(0) & !pseudo_random(2))))), GLOBAL(\CLK1~combout\), VCC, , \mur[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => pseudo_random(1),
	datac => ligne_counter(0),
	datad => pseudo_random(2),
	aclr => GND,
	ena => \mur[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mur(3));

-- Location: LC_X4_Y4_N2
\mur[1]\ : maxv_lcell
-- Equation(s):
-- mur(1) = DFFEAS((!pseudo_random(1) & (((ligne_counter(0) & !pseudo_random(2))))), GLOBAL(\CLK1~combout\), VCC, , \mur[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => pseudo_random(1),
	datac => ligne_counter(0),
	datad => pseudo_random(2),
	aclr => GND,
	ena => \mur[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mur(1));

-- Location: LC_X4_Y4_N5
\mur[0]\ : maxv_lcell
-- Equation(s):
-- mur(0) = DFFEAS((!pseudo_random(1) & (((!ligne_counter(0) & !pseudo_random(2))))), GLOBAL(\CLK1~combout\), VCC, , \mur[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => pseudo_random(1),
	datac => ligne_counter(0),
	datad => pseudo_random(2),
	aclr => GND,
	ena => \mur[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mur(0));

-- Location: LC_X4_Y4_N6
\Mux14~0\ : maxv_lcell
-- Equation(s):
-- \Mux14~0_combout\ = (player_pos(1) & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & (mur(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & ((mur(0)))))) # (!player_pos(1) & 
-- (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(1),
	datab => mur(1),
	datac => mur(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~0_combout\);

-- Location: LC_X4_Y4_N7
\Mux14~1\ : maxv_lcell
-- Equation(s):
-- \Mux14~1_combout\ = (player_pos(1) & (((\Mux14~0_combout\)))) # (!player_pos(1) & ((\Mux14~0_combout\ & ((mur(3)))) # (!\Mux14~0_combout\ & (!mur(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa11",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(1),
	datab => mur(2),
	datac => mur(3),
	datad => \Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~1_combout\);

-- Location: LC_X5_Y4_N9
\vie_count[1]~3\ : maxv_lcell
-- Equation(s):
-- \vie_count[1]~3_combout\ = (\vie_count[1]~2_combout\ & ((player_pos(2) & (!mur(4))) # (!player_pos(2) & ((!\Mux14~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mur(4),
	datab => player_pos(2),
	datac => \vie_count[1]~2_combout\,
	datad => \Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \vie_count[1]~3_combout\);

-- Location: LC_X5_Y4_N3
\vie_count[0]\ : maxv_lcell
-- Equation(s):
-- vie_count(0) = DFFEAS((((!vie_count(0)))), GLOBAL(\CLK1~combout\), VCC, , \vie_count[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datad => vie_count(0),
	aclr => GND,
	ena => \vie_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vie_count(0));

-- Location: LC_X5_Y4_N5
\vie_count[1]\ : maxv_lcell
-- Equation(s):
-- vie_count(1) = DFFEAS(((vie_count(1) $ (vie_count(0)))), GLOBAL(\CLK1~combout\), VCC, , \vie_count[1]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datac => vie_count(1),
	datad => vie_count(0),
	aclr => GND,
	ena => \vie_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vie_count(1));

-- Location: LC_X4_Y1_N9
game_over : maxv_lcell
-- Equation(s):
-- \game_over~regout\ = DFFEAS((\game_over~regout\) # ((vie_count(1) & (!vie_count(0) & \vie_count[1]~3_combout\))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => \game_over~regout\,
	datab => vie_count(1),
	datac => vie_count(0),
	datad => \vie_count[1]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_over~regout\);

-- Location: LC_X4_Y1_N5
\player_pos[2]~15\ : maxv_lcell
-- Equation(s):
-- \player_pos[2]~15_combout\ = (!\game_over~regout\ & ((\process_1~1\) # ((\prev_BTN_up_state~regout\ & !\BTN_up~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~1\,
	datab => \prev_BTN_up_state~regout\,
	datac => \BTN_up~combout\,
	datad => \game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos[2]~15_combout\);

-- Location: LC_X4_Y2_N5
\player_pos[0]\ : maxv_lcell
-- Equation(s):
-- player_pos(0) = DFFEAS((((\player_pos~18_combout\) # (\player_pos~14_combout\))), GLOBAL(\CLK~combout\), VCC, , \player_pos[2]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \player_pos~18_combout\,
	datad => \player_pos~14_combout\,
	aclr => GND,
	ena => \player_pos[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player_pos(0));

-- Location: LC_X3_Y3_N9
\Add1~1\ : maxv_lcell
-- Equation(s):
-- \Add1~1_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & !player_pos(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => player_pos(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~1_combout\);

-- Location: LC_X3_Y3_N8
\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\);

-- Location: LC_X4_Y3_N0
\Mod0|auto_generated|divider|divider|StageOut[8]~1\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\);

-- Location: LC_X3_Y2_N2
\Mod0|auto_generated|divider|divider|StageOut[13]~2\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\);

-- Location: LC_X4_Y3_N9
\player_pos~16\ : maxv_lcell
-- Equation(s):
-- \player_pos~16_combout\ = (\BTN_up~combout\ & (((!player_pos(1))))) # (!\BTN_up~combout\ & ((\prev_BTN_up_state~regout\ & ((\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\))) # (!\prev_BTN_up_state~regout\ & (!player_pos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f0b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_up~combout\,
	datab => \prev_BTN_up_state~regout\,
	datac => player_pos(1),
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos~16_combout\);

-- Location: LC_X4_Y3_N1
\player_pos[1]\ : maxv_lcell
-- Equation(s):
-- player_pos(1) = DFFEAS((\BTN_down~combout\ & (((!\player_pos~16_combout\)))) # (!\BTN_down~combout\ & ((\prev_BTN_down_state~regout\ & (!\player_pos~10_combout\)) # (!\prev_BTN_down_state~regout\ & ((!\player_pos~16_combout\))))), GLOBAL(\CLK~combout\), 
-- VCC, , !\game_over~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "04bf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \BTN_down~combout\,
	datab => \prev_BTN_down_state~regout\,
	datac => \player_pos~10_combout\,
	datad => \player_pos~16_combout\,
	aclr => GND,
	ena => \ALT_INV_game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player_pos(1));

-- Location: LC_X4_Y3_N8
\Mod1|auto_generated|divider|my_abs_num|_~1\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|my_abs_num|_~1_combout\ = ((player_pos(2) & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)) # (!player_pos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => player_pos(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|my_abs_num|_~1_combout\);

-- Location: LC_X5_Y3_N1
\Mod1|auto_generated|divider|divider|StageOut[22]~3\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\ = (((\Mod1|auto_generated|divider|my_abs_num|_~1_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|my_abs_num|_~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\);

-- Location: LC_X5_Y3_N6
\Mod1|auto_generated|divider|divider|StageOut[22]~4\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\);

-- Location: LC_X5_Y2_N4
\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~10\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~10_combout\ = (((\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]~COUT\,
	cin1 => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]~COUTCOUT1_12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~10_combout\);

-- Location: LC_X6_Y2_N8
\Mod1|auto_generated|divider|divider|StageOut[21]~2\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\ = ((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\ & (\Mod1|auto_generated|divider|my_abs_num|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|my_abs_num|_~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\);

-- Location: LC_X5_Y2_N1
\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\ = \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~10_combout\ $ ((!\Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\))
-- \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2\ = CARRY((\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~10_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\)))
-- \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2COUT1_13\ = CARRY((\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~10_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9922",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\,
	cout0 => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2\,
	cout1 => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2COUT1_13\);

-- Location: LC_X5_Y2_N2
\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5_combout\ = (\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\ & 
-- !\Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\,
	cin0 => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2\,
	cin1 => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5_combout\);

-- Location: LC_X5_Y2_N9
\Mod1|auto_generated|divider|remainder[2]~1\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|remainder[2]~1_combout\ = (\Add2~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\)))) # (!\Add2~0_combout\ & 
-- (((\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\,
	datab => \Add2~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\,
	datad => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|remainder[2]~1_combout\);

-- Location: LC_X3_Y2_N4
\Mod0|auto_generated|divider|divider|StageOut[14]~6\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\);

-- Location: LC_X5_Y2_N5
\Mod1|auto_generated|divider|remainder[1]~2\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|remainder[1]~2_combout\ = ((\Add2~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\)) # (!\Add2~0_combout\ & ((\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datad => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|remainder[1]~2_combout\);

-- Location: LC_X5_Y2_N6
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = (\Mod1|auto_generated|divider|remainder[2]~1_combout\ $ (((\Mod1|auto_generated|divider|remainder[0]~0_combout\ & \Mod1|auto_generated|divider|remainder[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|remainder[0]~0_combout\,
	datac => \Mod1|auto_generated|divider|remainder[1]~2_combout\,
	datad => \Mod1|auto_generated|divider|remainder[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\);

-- Location: LC_X5_Y2_N7
\player_pos[2]\ : maxv_lcell
-- Equation(s):
-- \player_pos[2]~COMBOUT\ = (\Add2~0_combout\ & (\Mod1|auto_generated|divider|remainder[2]~1_combout\)) # (!\Add2~0_combout\ & (((!\Add4~0_combout\))))
-- player_pos(2) = DFFEAS(\player_pos[2]~COMBOUT\, GLOBAL(\CLK~combout\), VCC, , \player_pos[2]~15_combout\, \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\, , , !\process_1~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88dd",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add2~0_combout\,
	datab => \Mod1|auto_generated|divider|remainder[2]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	datad => \Add4~0_combout\,
	aclr => GND,
	sload => \ALT_INV_process_1~1\,
	ena => \player_pos[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos[2]~COMBOUT\,
	regout => player_pos(2));

-- Location: LC_X4_Y3_N5
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = (player_pos(2)) # (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))) # (!player_pos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(2),
	datab => player_pos(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\);

-- Location: LC_X6_Y2_N3
\player_pos~10\ : maxv_lcell
-- Equation(s):
-- \player_pos~10_combout\ = (\Add2~0_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\)))) # (!\Add2~0_combout\ & (\Mod1|auto_generated|divider|remainder[0]~0_combout\ $ 
-- ((\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Mod1|auto_generated|divider|remainder[0]~0_combout\,
	datac => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos~10_combout\);

-- Location: LC_X3_Y1_N1
\player~2\ : maxv_lcell
-- Equation(s):
-- \player~2_combout\ = (player(0) & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)) # ((player_pos(2)) # (!player_pos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player(0),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datac => player_pos(2),
	datad => player_pos(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~2_combout\);

-- Location: LC_X3_Y2_N0
\Mod0|auto_generated|divider|divider|StageOut[12]~3\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\);

-- Location: LC_X3_Y2_N3
\player~3\ : maxv_lcell
-- Equation(s):
-- \player~3_combout\ = (\player~2_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \player~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~3_combout\);

-- Location: LC_X6_Y2_N0
\player[0]\ : maxv_lcell
-- Equation(s):
-- \player[0]~COMBOUT\ = (\process_1~0\ & (player(0))) # (!\process_1~0\ & (((\player~3_combout\))))
-- player(0) = DFFEAS(\player[0]~COMBOUT\, GLOBAL(\CLK~combout\), VCC, , !\game_over~regout\, \player~4_combout\, , , \process_1~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player(0),
	datab => \process_1~0\,
	datac => \player~4_combout\,
	datad => \player~3_combout\,
	aclr => GND,
	sload => \process_1~1\,
	ena => \ALT_INV_game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player[0]~COMBOUT\,
	regout => player(0));

-- Location: LC_X6_Y2_N6
\Decoder2~0\ : maxv_lcell
-- Equation(s):
-- \Decoder2~0_combout\ = ((!\player_pos[2]~COMBOUT\ & (\Add2~0_combout\ $ (\Mod1|auto_generated|divider|remainder[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \Mod1|auto_generated|divider|remainder[0]~0_combout\,
	datad => \player_pos[2]~COMBOUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder2~0_combout\);

-- Location: LC_X6_Y2_N7
\player~4\ : maxv_lcell
-- Equation(s):
-- \player~4_combout\ = (\player_pos~10_combout\ & (\Add2~0_combout\ & (\player[0]~COMBOUT\))) # (!\player_pos~10_combout\ & ((\Decoder2~0_combout\) # ((\Add2~0_combout\ & \player[0]~COMBOUT\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \player_pos~10_combout\,
	datab => \Add2~0_combout\,
	datac => \player[0]~COMBOUT\,
	datad => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~4_combout\);

-- Location: LC_X3_Y1_N9
\ligne_counter[1]\ : maxv_lcell
-- Equation(s):
-- ligne_counter(1) = DFFEAS(((ligne_counter(0) $ (ligne_counter(1)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => ligne_counter(0),
	datad => ligne_counter(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter(1));

-- Location: LC_X4_Y1_N6
\ligne_counter[2]\ : maxv_lcell
-- Equation(s):
-- ligne_counter(2) = DFFEAS(ligne_counter(2) $ ((((ligne_counter(1) & ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(2),
	datac => ligne_counter(1),
	datad => ligne_counter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter(2));

-- Location: LC_X4_Y1_N3
\LED_matrix[0]~0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[0]~0_combout\ = ((\game_over~regout\) # ((!ligne_counter(2) & !ligne_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ligne_counter(2),
	datac => ligne_counter(1),
	datad => \game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LED_matrix[0]~0_combout\);

-- Location: LC_X3_Y1_N3
\LED_matrix[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[0]~reg0_regout\ = DFFEAS((ligne_counter(0) & (((!mur(0))))) # (!ligne_counter(0) & (player(0))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, VCC, , , \game_over~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player(0),
	datab => ligne_counter(0),
	datac => VCC,
	datad => mur(0),
	aclr => GND,
	sload => \game_over~regout\,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[0]~reg0_regout\);

-- Location: LC_X3_Y4_N9
\player~5\ : maxv_lcell
-- Equation(s):
-- \player~5_combout\ = ((player_pos(2)) # ((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)) # (!player_pos(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => player_pos(2),
	datac => player_pos(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~5_combout\);

-- Location: LC_X2_Y2_N8
\Decoder1~0\ : maxv_lcell
-- Equation(s):
-- \Decoder1~0_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~0_combout\);

-- Location: LC_X2_Y2_N9
\player~6\ : maxv_lcell
-- Equation(s):
-- \player~6_combout\ = (player(1) & ((\player~5_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & \Decoder1~0_combout\)))) # (!player(1) & (((!\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- \Decoder1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player(1),
	datab => \player~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~6_combout\);

-- Location: LC_X2_Y2_N7
\player[1]\ : maxv_lcell
-- Equation(s):
-- \player[1]~COMBOUT\ = (\process_1~0\ & (player(1))) # (!\process_1~0\ & (((\player~6_combout\))))
-- player(1) = DFFEAS(\player[1]~COMBOUT\, GLOBAL(\CLK~combout\), VCC, , !\game_over~regout\, \player~7_combout\, , , \process_1~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player(1),
	datab => \process_1~0\,
	datac => \player~7_combout\,
	datad => \player~6_combout\,
	aclr => GND,
	sload => \process_1~1\,
	ena => \ALT_INV_game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player[1]~COMBOUT\,
	regout => player(1));

-- Location: LC_X2_Y2_N3
\Decoder2~1\ : maxv_lcell
-- Equation(s):
-- \Decoder2~1_combout\ = ((!\player_pos[2]~COMBOUT\ & (\Mod1|auto_generated|divider|remainder[0]~0_combout\ $ (!\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|remainder[0]~0_combout\,
	datac => \Add2~0_combout\,
	datad => \player_pos[2]~COMBOUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder2~1_combout\);

-- Location: LC_X2_Y2_N4
\player~7\ : maxv_lcell
-- Equation(s):
-- \player~7_combout\ = (\player~5_combout\ & ((\player[1]~COMBOUT\) # ((!\player_pos~10_combout\ & \Decoder2~1_combout\)))) # (!\player~5_combout\ & (!\player_pos~10_combout\ & ((\Decoder2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \player~5_combout\,
	datab => \player_pos~10_combout\,
	datac => \player[1]~COMBOUT\,
	datad => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~7_combout\);

-- Location: LC_X3_Y1_N2
\LED_matrix[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[1]~reg0_regout\ = DFFEAS((ligne_counter(0) & (((!mur(1))))) # (!ligne_counter(0) & (player(1))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, VCC, , , \game_over~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(0),
	datab => player(1),
	datac => VCC,
	datad => mur(1),
	aclr => GND,
	sload => \game_over~regout\,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[1]~reg0_regout\);

-- Location: LC_X3_Y4_N6
\Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & (((!player_pos(1) & !player_pos(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datac => player_pos(1),
	datad => player_pos(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0_combout\);

-- Location: LC_X3_Y1_N6
\player~18\ : maxv_lcell
-- Equation(s):
-- \player~18_combout\ = (!player(2) & (((\BTN_up~combout\) # (!\Decoder0~0_combout\)) # (!\prev_BTN_up_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5155",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player(2),
	datab => \prev_BTN_up_state~regout\,
	datac => \BTN_up~combout\,
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~18_combout\);

-- Location: LC_X3_Y1_N8
\player~8\ : maxv_lcell
-- Equation(s):
-- \player~8_combout\ = (!\process_1~0\ & (\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~8_combout\);

-- Location: LC_X3_Y1_N0
\player~9\ : maxv_lcell
-- Equation(s):
-- \player~9_combout\ = (\process_1~1\ & (!\Decoder0~0_combout\ & ((\player~18_combout\) # (\player~8_combout\)))) # (!\process_1~1\ & (((\player~18_combout\) # (\player~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7770",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~1\,
	datab => \Decoder0~0_combout\,
	datac => \player~18_combout\,
	datad => \player~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~9_combout\);

-- Location: LC_X6_Y2_N9
\player[2]\ : maxv_lcell
-- Equation(s):
-- player(2) = DFFEAS((!\player~9_combout\ & (((!\Decoder2~0_combout\) # (!\process_1~1\)) # (!\player_pos~10_combout\))), GLOBAL(\CLK~combout\), VCC, , !\game_over~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \player_pos~10_combout\,
	datab => \process_1~1\,
	datac => \Decoder2~0_combout\,
	datad => \player~9_combout\,
	aclr => GND,
	ena => \ALT_INV_game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player(2));

-- Location: LC_X3_Y1_N7
\LED_matrix[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[2]~reg0_regout\ = DFFEAS((ligne_counter(0) & (((mur(2))))) # (!ligne_counter(0) & (!player(2))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, VCC, , , \game_over~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd11",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player(2),
	datab => ligne_counter(0),
	datac => VCC,
	datad => mur(2),
	aclr => GND,
	sload => \game_over~regout\,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[2]~reg0_regout\);

-- Location: LC_X3_Y1_N4
\player~11\ : maxv_lcell
-- Equation(s):
-- \player~11_combout\ = (((player_pos(2)) # (player_pos(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datac => player_pos(2),
	datad => player_pos(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~11_combout\);

-- Location: LC_X2_Y2_N1
\player~12\ : maxv_lcell
-- Equation(s):
-- \player~12_combout\ = (player(3) & ((\player~11_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & \Decoder1~0_combout\)))) # (!player(3) & (((\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- \Decoder1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player(3),
	datab => \player~11_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~12_combout\);

-- Location: LC_X2_Y2_N0
\player[3]\ : maxv_lcell
-- Equation(s):
-- \player[3]~COMBOUT\ = (\process_1~0\ & (player(3))) # (!\process_1~0\ & (((\player~12_combout\))))
-- player(3) = DFFEAS(\player[3]~COMBOUT\, GLOBAL(\CLK~combout\), VCC, , !\game_over~regout\, \player~13_combout\, , , \process_1~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player(3),
	datab => \process_1~0\,
	datac => \player~13_combout\,
	datad => \player~12_combout\,
	aclr => GND,
	sload => \process_1~1\,
	ena => \ALT_INV_game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player[3]~COMBOUT\,
	regout => player(3));

-- Location: LC_X2_Y2_N6
\player~13\ : maxv_lcell
-- Equation(s):
-- \player~13_combout\ = (\player~11_combout\ & ((\player[3]~COMBOUT\) # ((\player_pos~10_combout\ & \Decoder2~1_combout\)))) # (!\player~11_combout\ & (\player_pos~10_combout\ & ((\Decoder2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \player~11_combout\,
	datab => \player_pos~10_combout\,
	datac => \player[3]~COMBOUT\,
	datad => \Decoder2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~13_combout\);

-- Location: LC_X3_Y1_N5
\LED_matrix[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[3]~reg0_regout\ = DFFEAS((ligne_counter(0) & (((!mur(3))))) # (!ligne_counter(0) & (player(3))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, VCC, , , \game_over~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player(3),
	datab => ligne_counter(0),
	datac => VCC,
	datad => mur(3),
	aclr => GND,
	sload => \game_over~regout\,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[3]~reg0_regout\);

-- Location: LC_X5_Y1_N2
\player~16\ : maxv_lcell
-- Equation(s):
-- \player~16_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)) # ((!player_pos(1)))) # (!player_pos(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(2),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datac => player_pos(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~16_combout\);

-- Location: LC_X5_Y1_N7
\player~14\ : maxv_lcell
-- Equation(s):
-- \player~14_combout\ = (player(4) & (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)) # (!player_pos(1))) # (!player_pos(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(2),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datac => player_pos(1),
	datad => player(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~14_combout\);

-- Location: LC_X3_Y2_N1
\player~15\ : maxv_lcell
-- Equation(s):
-- \player~15_combout\ = (\player~14_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \player~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~15_combout\);

-- Location: LC_X6_Y2_N4
\player[4]\ : maxv_lcell
-- Equation(s):
-- \player[4]~COMBOUT\ = (\process_1~0\ & (player(4))) # (!\process_1~0\ & (((\player~15_combout\))))
-- player(4) = DFFEAS(\player[4]~COMBOUT\, GLOBAL(\CLK~combout\), VCC, , !\game_over~regout\, \player~17_combout\, , , \process_1~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player(4),
	datab => \process_1~0\,
	datac => \player~17_combout\,
	datad => \player~15_combout\,
	aclr => GND,
	sload => \process_1~1\,
	ena => \ALT_INV_game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player[4]~COMBOUT\,
	regout => player(4));

-- Location: LC_X6_Y2_N2
\Decoder2~2\ : maxv_lcell
-- Equation(s):
-- \Decoder2~2_combout\ = ((\player_pos[2]~COMBOUT\ & (\Add2~0_combout\ $ (\Mod1|auto_generated|divider|remainder[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \Mod1|auto_generated|divider|remainder[0]~0_combout\,
	datad => \player_pos[2]~COMBOUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder2~2_combout\);

-- Location: LC_X6_Y2_N5
\player~17\ : maxv_lcell
-- Equation(s):
-- \player~17_combout\ = (\player_pos~10_combout\ & (\player~16_combout\ & (\player[4]~COMBOUT\))) # (!\player_pos~10_combout\ & ((\Decoder2~2_combout\) # ((\player~16_combout\ & \player[4]~COMBOUT\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \player_pos~10_combout\,
	datab => \player~16_combout\,
	datac => \player[4]~COMBOUT\,
	datad => \Decoder2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~17_combout\);

-- Location: LC_X5_Y1_N3
\LED_matrix[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[4]~reg0_regout\ = DFFEAS((ligne_counter(0) & (((!mur(4))))) # (!ligne_counter(0) & (player(4))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, VCC, , , \game_over~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player(4),
	datab => ligne_counter(0),
	datac => VCC,
	datad => mur(4),
	aclr => GND,
	sload => \game_over~regout\,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[4]~reg0_regout\);

-- Location: LC_X5_Y3_N4
\ground_matrix_mur[0]~0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix_mur[0]~0_combout\ = (\Equal2~1_combout\ & (((!ligne_counter_slow(0)) # (!ligne_counter_slow(1))) # (!ligne_counter_slow(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ligne_counter_slow(2),
	datab => ligne_counter_slow(1),
	datac => ligne_counter_slow(0),
	datad => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ground_matrix_mur[0]~0_combout\);

-- Location: LC_X5_Y3_N7
\ground_matrix_mur[0]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(0) = DFFEAS((((!ligne_counter_slow(2))) # (!ligne_counter_slow(1))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datab => ligne_counter_slow(1),
	datad => ligne_counter_slow(2),
	aclr => GND,
	ena => \ground_matrix_mur[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(0));

-- Location: LC_X5_Y1_N0
\ground_matrix[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[0]~reg0_regout\ = DFFEAS(((ligne_counter(0) & (!\game_over~regout\ & ground_matrix_mur(0)))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => ligne_counter(0),
	datac => \game_over~regout\,
	datad => ground_matrix_mur(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[0]~reg0_regout\);

-- Location: LC_X5_Y3_N2
\ground_matrix_mur[1]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(1) = DFFEAS(((ligne_counter_slow(1)) # ((!ligne_counter_slow(2)) # (!ligne_counter_slow(0)))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datab => ligne_counter_slow(1),
	datac => ligne_counter_slow(0),
	datad => ligne_counter_slow(2),
	aclr => GND,
	ena => \ground_matrix_mur[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(1));

-- Location: LC_X5_Y1_N4
\ground_matrix[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[1]~reg0_regout\ = DFFEAS((!\game_over~regout\ & (((ground_matrix_mur(1)) # (!ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5055",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \game_over~regout\,
	datac => ground_matrix_mur(1),
	datad => ligne_counter(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[1]~reg0_regout\);

-- Location: LC_X5_Y3_N3
\ground_matrix_mur[2]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(2) = DFFEAS(((ligne_counter_slow(1)) # ((ligne_counter_slow(0)) # (!ligne_counter_slow(2)))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datab => ligne_counter_slow(1),
	datac => ligne_counter_slow(0),
	datad => ligne_counter_slow(2),
	aclr => GND,
	ena => \ground_matrix_mur[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(2));

-- Location: LC_X5_Y1_N1
\ground_matrix[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[2]~reg0_regout\ = DFFEAS((!\game_over~regout\ & (((ground_matrix_mur(2)) # (!ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5055",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \game_over~regout\,
	datac => ground_matrix_mur(2),
	datad => ligne_counter(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[2]~reg0_regout\);

-- Location: LC_X5_Y3_N5
\ground_matrix_mur[3]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(3) = DFFEAS((((ligne_counter_slow(2)) # (!ligne_counter_slow(0))) # (!ligne_counter_slow(1))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datab => ligne_counter_slow(1),
	datac => ligne_counter_slow(0),
	datad => ligne_counter_slow(2),
	aclr => GND,
	ena => \ground_matrix_mur[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(3));

-- Location: LC_X5_Y1_N6
\ground_matrix[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[3]~reg0_regout\ = DFFEAS(((!\game_over~regout\ & ((ground_matrix_mur(3)) # (!ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f03",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => ligne_counter(0),
	datac => \game_over~regout\,
	datad => ground_matrix_mur(3),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[3]~reg0_regout\);

-- Location: LC_X5_Y3_N0
\ground_matrix_mur[4]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(4) = DFFEAS((((ligne_counter_slow(0)) # (ligne_counter_slow(2))) # (!ligne_counter_slow(1))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datab => ligne_counter_slow(1),
	datac => ligne_counter_slow(0),
	datad => ligne_counter_slow(2),
	aclr => GND,
	ena => \ground_matrix_mur[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(4));

-- Location: LC_X5_Y1_N5
\ground_matrix[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[4]~reg0_regout\ = DFFEAS((!\game_over~regout\ & (((ground_matrix_mur(4)) # (!ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5055",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \game_over~regout\,
	datac => ground_matrix_mur(4),
	datad => ligne_counter(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[4]~reg0_regout\);

-- Location: LC_X5_Y3_N9
\ground_matrix_mur[5]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(5) = DFFEAS(((ligne_counter_slow(1)) # ((ligne_counter_slow(2)) # (!ligne_counter_slow(0)))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datab => ligne_counter_slow(1),
	datac => ligne_counter_slow(0),
	datad => ligne_counter_slow(2),
	aclr => GND,
	ena => \ground_matrix_mur[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(5));

-- Location: LC_X5_Y1_N9
\ground_matrix[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[5]~reg0_regout\ = DFFEAS((!\game_over~regout\ & (((ground_matrix_mur(5))) # (!ligne_counter(0)))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5511",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \game_over~regout\,
	datab => ligne_counter(0),
	datad => ground_matrix_mur(5),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[5]~reg0_regout\);

-- Location: LC_X5_Y3_N8
\ground_matrix_mur[6]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(6) = DFFEAS((((!\mur[2]~0_combout\))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datad => \mur[2]~0_combout\,
	aclr => GND,
	ena => \ground_matrix_mur[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(6));

-- Location: LC_X5_Y1_N8
\ground_matrix[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[6]~reg0_regout\ = DFFEAS(((!\game_over~regout\ & ((ground_matrix_mur(6)) # (!ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f03",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => ligne_counter(0),
	datac => \game_over~regout\,
	datad => ground_matrix_mur(6),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[6]~reg0_regout\);

-- Location: LC_X7_Y4_N7
\segment_7[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \segment_7[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , segment_7_count(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => segment_7_count(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segment_7[0]~reg0_regout\);

-- Location: LC_X7_Y4_N9
\segment_7[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \segment_7[1]~reg0_regout\ = DFFEAS((((segment_7_count(1)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => segment_7_count(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segment_7[1]~reg0_regout\);

-- Location: LC_X7_Y4_N5
\segment_7[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \segment_7[2]~reg0_regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , segment_7_count(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => segment_7_count(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segment_7[2]~reg0_regout\);

-- Location: LC_X7_Y4_N1
\segment_7[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \segment_7[3]~reg0_regout\ = DFFEAS((((segment_7_count(3)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => segment_7_count(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segment_7[3]~reg0_regout\);

-- Location: LC_X4_Y1_N1
\vie[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \vie[0]~reg0_regout\ = DFFEAS(((!vie_count(0) & ((!vie_count(1))))), GLOBAL(\CLK~combout\), VCC, , , VCC, , , \game_over~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => vie_count(0),
	datac => VCC,
	datad => vie_count(1),
	aclr => GND,
	sload => \game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vie[0]~reg0_regout\);

-- Location: LC_X4_Y1_N4
\vie[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \vie[1]~reg0_regout\ = DFFEAS((((\game_over~regout\) # (!vie_count(1)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \game_over~regout\,
	datad => vie_count(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vie[1]~reg0_regout\);

-- Location: LC_X4_Y1_N2
\Mux0~1\ : maxv_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (((vie_count(0) & !vie_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => vie_count(0),
	datad => vie_count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X4_Y1_N0
\vie[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \vie[2]~reg0_regout\ = DFFEAS((((\Mux0~1_combout\)) # (!vie_count(0))), GLOBAL(\CLK~combout\), VCC, , , VCC, , , \game_over~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => vie_count(0),
	datac => VCC,
	datad => \Mux0~1_combout\,
	aclr => GND,
	sload => \game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vie[2]~reg0_regout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED_matrix[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED_matrix[0]~reg0_regout\,
	oe => VCC,
	padio => ww_LED_matrix(0));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED_matrix[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED_matrix[1]~reg0_regout\,
	oe => VCC,
	padio => ww_LED_matrix(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED_matrix[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED_matrix[2]~reg0_regout\,
	oe => VCC,
	padio => ww_LED_matrix(2));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED_matrix[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED_matrix[3]~reg0_regout\,
	oe => VCC,
	padio => ww_LED_matrix(3));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED_matrix[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED_matrix[4]~reg0_regout\,
	oe => VCC,
	padio => ww_LED_matrix(4));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ground_matrix[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ground_matrix[0]~reg0_regout\,
	oe => VCC,
	padio => ww_ground_matrix(0));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ground_matrix[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ground_matrix[1]~reg0_regout\,
	oe => VCC,
	padio => ww_ground_matrix(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ground_matrix[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ground_matrix[2]~reg0_regout\,
	oe => VCC,
	padio => ww_ground_matrix(2));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ground_matrix[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ground_matrix[3]~reg0_regout\,
	oe => VCC,
	padio => ww_ground_matrix(3));

-- Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ground_matrix[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ground_matrix[4]~reg0_regout\,
	oe => VCC,
	padio => ww_ground_matrix(4));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ground_matrix[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ground_matrix[5]~reg0_regout\,
	oe => VCC,
	padio => ww_ground_matrix(5));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ground_matrix[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ground_matrix[6]~reg0_regout\,
	oe => VCC,
	padio => ww_ground_matrix(6));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vdd~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_vdd);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\segment_7[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \segment_7[0]~reg0_regout\,
	oe => VCC,
	padio => ww_segment_7(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\segment_7[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \segment_7[1]~reg0_regout\,
	oe => VCC,
	padio => ww_segment_7(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\segment_7[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \segment_7[2]~reg0_regout\,
	oe => VCC,
	padio => ww_segment_7(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\segment_7[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \segment_7[3]~reg0_regout\,
	oe => VCC,
	padio => ww_segment_7(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vie[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \vie[0]~reg0_regout\,
	oe => VCC,
	padio => ww_vie(0));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vie[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \vie[1]~reg0_regout\,
	oe => VCC,
	padio => ww_vie(1));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vie[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \vie[2]~reg0_regout\,
	oe => VCC,
	padio => ww_vie(2));
END structure;


