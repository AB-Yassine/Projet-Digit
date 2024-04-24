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

-- DATE "04/24/2024 10:31:15"

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
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|remainder[0]~0_combout\ : std_logic;
SIGNAL \player_pos~18_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUTCOUT1_22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17COUT1_23\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7COUT1_24\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12COUT1_25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ : std_logic;
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
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \mur[2]~1_combout\ : std_logic;
SIGNAL \mur[0]~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2\ : std_logic;
SIGNAL \game_over~3_combout\ : std_logic;
SIGNAL \game_over~regout\ : std_logic;
SIGNAL \player_pos[2]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ : std_logic;
SIGNAL \player_pos~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|my_abs_num|_~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUTCOUT1_29\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~27_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17COUT1_30\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[0]~COUTCOUT1_12\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\ : std_logic;
SIGNAL \player_pos~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|my_abs_num|_~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2COUT1_31\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12COUT1_32\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22_cout0\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~22COUT1_33\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2COUT1_13\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|remainder[2]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|remainder[1]~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
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
SIGNAL \player~17_combout\ : std_logic;
SIGNAL \player~8_combout\ : std_logic;
SIGNAL \player~9_combout\ : std_logic;
SIGNAL \LED_matrix[2]~reg0_regout\ : std_logic;
SIGNAL \player~11_combout\ : std_logic;
SIGNAL \player~12_combout\ : std_logic;
SIGNAL \player[3]~COMBOUT\ : std_logic;
SIGNAL \player~13_combout\ : std_logic;
SIGNAL \LED_matrix[3]~reg0_regout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \player~14_combout\ : std_logic;
SIGNAL \player~15_combout\ : std_logic;
SIGNAL \player[4]~COMBOUT\ : std_logic;
SIGNAL \Decoder2~2_combout\ : std_logic;
SIGNAL \player~16_combout\ : std_logic;
SIGNAL \LED_matrix[4]~reg0_regout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \ground_matrix_mur[4]~0_combout\ : std_logic;
SIGNAL \ground_matrix[0]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[1]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[2]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[3]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[4]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[5]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[6]~reg0_regout\ : std_logic;
SIGNAL \segment_7[0]~reg0_regout\ : std_logic;
SIGNAL \segment_7_count[1]~1_combout\ : std_logic;
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
SIGNAL segment_7_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ligne_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\ : std_logic_vector(2 DOWNTO 0);
SIGNAL ground_matrix_mur : std_logic_vector(6 DOWNTO 0);
SIGNAL player_pos : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL pseudo_random : std_logic_vector(2 DOWNTO 0);
SIGNAL ligne_counter_slow : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_process_1~1\ : std_logic;
SIGNAL \ALT_INV_game_over~regout\ : std_logic;

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
\ALT_INV_process_1~1\ <= NOT \process_1~1\;
\ALT_INV_game_over~regout\ <= NOT \game_over~regout\;

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

-- Location: LC_X6_Y3_N5
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

-- Location: LC_X7_Y2_N2
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

-- Location: LC_X5_Y4_N5
prev_BTN_down_state : maxv_lcell
-- Equation(s):
-- \process_1~1\ = (((prev_BTN_down_state & !\BTN_down~combout\)))
-- \prev_BTN_down_state~regout\ = DFFEAS(\process_1~1\, GLOBAL(\CLK~combout\), VCC, , , \BTN_down~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \BTN_down~combout\,
	datad => \BTN_down~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~1\,
	regout => \prev_BTN_down_state~regout\);

-- Location: LC_X5_Y4_N7
\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella\(0) = ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUT\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUTCOUT1_29\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc33",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella\(0),
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUT\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[0]~COUTCOUT1_29\);

-- Location: LC_X5_Y1_N0
\Mod1|auto_generated|divider|divider|StageOut[20]~6\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella\(0) & (((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella\(0),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\);

-- Location: LC_X4_Y1_N9
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

-- Location: LC_X5_Y1_N3
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

-- Location: LC_X5_Y1_N7
\Mod1|auto_generated|divider|remainder[0]~0\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|remainder[0]~0_combout\ = (\Add2~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\)))) # (!\Add2~0_combout\ & 
-- (((\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fda8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\,
	datad => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|remainder[0]~0_combout\);

-- Location: LC_X5_Y4_N4
\player_pos~18\ : maxv_lcell
-- Equation(s):
-- \player_pos~18_combout\ = (\prev_BTN_down_state~regout\ & (!\BTN_down~combout\ & (\Add2~0_combout\ $ (!\Mod1|auto_generated|divider|remainder[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prev_BTN_down_state~regout\,
	datab => \BTN_down~combout\,
	datac => \Add2~0_combout\,
	datad => \Mod1|auto_generated|divider|remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos~18_combout\);

-- Location: LC_X6_Y4_N9
\Add1~1\ : maxv_lcell
-- Equation(s):
-- \Add1~1_combout\ = ((!player_pos(1) & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => player_pos(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~1_combout\);

-- Location: LC_X6_Y4_N3
\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0) = \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) $ ((!player_pos(1)))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUT\ = CARRY(\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) $ ((!player_pos(1))))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUTCOUT1_22\ = CARRY(\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) $ ((!player_pos(1))))

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
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datab => player_pos(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUTCOUT1_22\);

-- Location: LC_X6_Y4_N4
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

-- Location: LC_X6_Y4_N5
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

-- Location: LC_X6_Y4_N6
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

-- Location: LC_X6_Y4_N7
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

-- Location: LC_X6_Y4_N8
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

-- Location: LC_X6_Y4_N0
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

-- Location: LC_X7_Y2_N9
\Mod0|auto_generated|divider|divider|StageOut[10]~7\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ = (player_pos(2) & (!player_pos(1) & (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & !\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(2),
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\);

-- Location: LC_X6_Y4_N2
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

-- Location: LC_X6_Y2_N1
\Mod0|auto_generated|divider|divider|StageOut[9]~4\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ & (player_pos(2) $ (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & !player_pos(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a6",
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
	datad => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LC_X6_Y4_N1
\Mod0|auto_generated|divider|divider|StageOut[8]~1\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0) & \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\);

-- Location: LC_X5_Y4_N0
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) = ((player_pos(0)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUT\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUTCOUT1_30\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc55",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datab => player_pos(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUTCOUT1_30\);

-- Location: LC_X5_Y4_N1
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

-- Location: LC_X6_Y2_N5
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

-- Location: LC_X6_Y2_N6
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\ = \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2COUT1_32\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ & 
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
	dataa => \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~2COUT1_32\);

-- Location: LC_X6_Y2_N7
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

-- Location: LC_X6_Y2_N8
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[10]~8_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22COUT1_34\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[10]~8_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ & 
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
	dataa => \Mod0|auto_generated|divider|divider|StageOut[10]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~20\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22COUT1_34\);

-- Location: LC_X6_Y2_N9
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

-- Location: LC_X5_Y4_N2
\player_pos~14\ : maxv_lcell
-- Equation(s):
-- \player_pos~14_combout\ = (\prev_BTN_down_state~regout\ & (\BTN_down~combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\)))) # 
-- (!\prev_BTN_down_state~regout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d00d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prev_BTN_down_state~regout\,
	datab => \BTN_down~combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
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

-- Location: LC_X6_Y3_N6
\ligne_counter_slow[0]\ : maxv_lcell
-- Equation(s):
-- ligne_counter_slow(0) = DFFEAS((((!ligne_counter_slow(0)))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

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
	datad => ligne_counter_slow(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter_slow(0));

-- Location: LC_X6_Y3_N7
\ligne_counter_slow[1]\ : maxv_lcell
-- Equation(s):
-- ligne_counter_slow(1) = DFFEAS(((ligne_counter_slow(1) $ (ligne_counter_slow(0)))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

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
	datac => ligne_counter_slow(1),
	datad => ligne_counter_slow(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter_slow(1));

-- Location: LC_X6_Y3_N1
\ligne_counter_slow[2]\ : maxv_lcell
-- Equation(s):
-- ligne_counter_slow(2) = DFFEAS((ligne_counter_slow(2) $ (((ligne_counter_slow(0) & ligne_counter_slow(1))))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datab => ligne_counter_slow(0),
	datac => ligne_counter_slow(1),
	datad => ligne_counter_slow(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter_slow(2));

-- Location: LC_X6_Y3_N9
\pseudo_random[1]\ : maxv_lcell
-- Equation(s):
-- pseudo_random(1) = DFFEAS((ligne_counter(0) & (!pseudo_random(2) & ((!pseudo_random(1))))) # (!ligne_counter(0) & (((pseudo_random(1))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5522",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(0),
	datab => pseudo_random(2),
	datad => pseudo_random(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pseudo_random(1));

-- Location: LC_X6_Y3_N8
\pseudo_random[2]\ : maxv_lcell
-- Equation(s):
-- pseudo_random(2) = DFFEAS((ligne_counter(0) & (!pseudo_random(2) & ((pseudo_random(1))))) # (!ligne_counter(0) & (pseudo_random(2))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6644",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(0),
	datab => pseudo_random(2),
	datad => pseudo_random(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pseudo_random(2));

-- Location: LC_X6_Y3_N4
\Mux26~1\ : maxv_lcell
-- Equation(s):
-- \Mux26~1_combout\ = ((!ligne_counter_slow(2) & (!ligne_counter_slow(1) & !ligne_counter_slow(0))))

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
	combout => \Mux26~1_combout\);

-- Location: LC_X5_Y3_N2
\mur[2]~1\ : maxv_lcell
-- Equation(s):
-- \mur[2]~1_combout\ = ((ligne_counter(0) & ((!pseudo_random(2)))) # (!ligne_counter(0) & (!pseudo_random(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ligne_counter(0),
	datac => pseudo_random(1),
	datad => pseudo_random(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mur[2]~1_combout\);

-- Location: LC_X5_Y3_N1
\mur[2]\ : maxv_lcell
-- Equation(s):
-- mur(2) = DFFEAS((\Mux26~1_combout\ & ((\mur[2]~1_combout\) # ((pseudo_random(2) & mur(2))))) # (!\Mux26~1_combout\ & (((mur(2))))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

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
	datac => \Mux26~1_combout\,
	datad => \mur[2]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mur(2));

-- Location: LC_X6_Y3_N2
\mur[0]~0\ : maxv_lcell
-- Equation(s):
-- \mur[0]~0_combout\ = (\Mux26~1_combout\ & (((!ligne_counter(0) & !pseudo_random(1))) # (!pseudo_random(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ligne_counter(0),
	datab => pseudo_random(1),
	datac => \Mux26~1_combout\,
	datad => pseudo_random(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mur[0]~0_combout\);

-- Location: LC_X5_Y3_N3
\mur[3]\ : maxv_lcell
-- Equation(s):
-- mur(3) = DFFEAS((pseudo_random(1) & (ligne_counter(0) & ((!pseudo_random(2))))), GLOBAL(\CLK1~combout\), VCC, , \mur[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => pseudo_random(1),
	datab => ligne_counter(0),
	datad => pseudo_random(2),
	aclr => GND,
	ena => \mur[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mur(3));

-- Location: LC_X5_Y3_N9
\mur[0]\ : maxv_lcell
-- Equation(s):
-- mur(0) = DFFEAS((!pseudo_random(1) & (!ligne_counter(0) & ((!pseudo_random(2))))), GLOBAL(\CLK1~combout\), VCC, , \mur[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => pseudo_random(1),
	datab => ligne_counter(0),
	datad => pseudo_random(2),
	aclr => GND,
	ena => \mur[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mur(0));

-- Location: LC_X5_Y3_N0
\mur[1]\ : maxv_lcell
-- Equation(s):
-- mur(1) = DFFEAS((!pseudo_random(1) & (ligne_counter(0) & ((!pseudo_random(2))))), GLOBAL(\CLK1~combout\), VCC, , \mur[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => pseudo_random(1),
	datab => ligne_counter(0),
	datad => pseudo_random(2),
	aclr => GND,
	ena => \mur[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mur(1));

-- Location: LC_X5_Y3_N5
\Mux14~0\ : maxv_lcell
-- Equation(s):
-- \Mux14~0_combout\ = (player_pos(1) & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & ((mur(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & (mur(0))))) # (!player_pos(1) & 
-- (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(1),
	datab => mur(0),
	datac => mur(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~0_combout\);

-- Location: LC_X5_Y3_N6
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

-- Location: LC_X5_Y3_N7
\mur[4]\ : maxv_lcell
-- Equation(s):
-- \Mux14~2\ = ((player_pos(2) & (mur[4])) # (!player_pos(2) & ((\Mux14~1_combout\))))
-- mur(4) = DFFEAS(\Mux14~2\, GLOBAL(\CLK1~combout\), VCC, , \mur[0]~0_combout\, pseudo_random(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datab => player_pos(2),
	datac => pseudo_random(2),
	datad => \Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \mur[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~2\,
	regout => mur(4));

-- Location: LC_X5_Y3_N8
\game_over~3\ : maxv_lcell
-- Equation(s):
-- \game_over~3_combout\ = (!ligne_counter_slow(0) & (ligne_counter_slow(1) & (ligne_counter_slow(2) & !\Mux14~2\)))

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
	dataa => ligne_counter_slow(0),
	datab => ligne_counter_slow(1),
	datac => ligne_counter_slow(2),
	datad => \Mux14~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game_over~3_combout\);

-- Location: LC_X4_Y3_N5
\vie_count[0]\ : maxv_lcell
-- Equation(s):
-- vie_count(0) = DFFEAS((((!vie_count(0)))), GLOBAL(\CLK1~combout\), VCC, , \game_over~3_combout\, , , , )

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
	clk => \CLK1~combout\,
	datac => vie_count(0),
	aclr => GND,
	ena => \game_over~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vie_count(0));

-- Location: LC_X4_Y3_N8
\vie_count[1]\ : maxv_lcell
-- Equation(s):
-- vie_count(1) = DFFEAS(((vie_count(0) $ (vie_count(1)))), GLOBAL(\CLK1~combout\), VCC, , \game_over~3_combout\, , , , )

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
	datac => vie_count(0),
	datad => vie_count(1),
	aclr => GND,
	ena => \game_over~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vie_count(1));

-- Location: LC_X4_Y4_N9
game_over : maxv_lcell
-- Equation(s):
-- \game_over~regout\ = DFFEAS((\game_over~regout\) # ((vie_count(1) & (!vie_count(0) & \game_over~3_combout\))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => vie_count(1),
	datab => \game_over~regout\,
	datac => vie_count(0),
	datad => \game_over~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_over~regout\);

-- Location: LC_X4_Y4_N5
\player_pos[2]~15\ : maxv_lcell
-- Equation(s):
-- \player_pos[2]~15_combout\ = (!\game_over~regout\ & ((\process_1~1\) # ((!\BTN_up~combout\ & \prev_BTN_up_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_up~combout\,
	datab => \process_1~1\,
	datac => \prev_BTN_up_state~regout\,
	datad => \game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos[2]~15_combout\);

-- Location: LC_X5_Y4_N9
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

-- Location: LC_X7_Y2_N1
\Mod0|auto_generated|divider|divider|StageOut[8]~0\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ = ((!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ & (player_pos(1) $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))))

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
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\);

-- Location: LC_X6_Y2_N4
\Mod0|auto_generated|divider|divider|StageOut[13]~2\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\))))

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
	dataa => \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\);

-- Location: LC_X7_Y2_N8
\player_pos~16\ : maxv_lcell
-- Equation(s):
-- \player_pos~16_combout\ = (\prev_BTN_up_state~regout\ & ((\BTN_up~combout\ & (!player_pos(1))) # (!\BTN_up~combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\))))) # (!\prev_BTN_up_state~regout\ & (!player_pos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d51",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(1),
	datab => \prev_BTN_up_state~regout\,
	datac => \BTN_up~combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos~16_combout\);

-- Location: LC_X4_Y1_N6
\Mod1|auto_generated|divider|my_abs_num|_~0\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|my_abs_num|_~0_combout\ = (player_pos(1) & (((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & player_pos(2))))) # (!player_pos(1) & (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => player_pos(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|my_abs_num|_~0_combout\);

-- Location: LC_X5_Y4_N8
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

-- Location: LC_X4_Y1_N0
\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\ = CARRY((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~27_combout\))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17COUT1_30\ = CARRY((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~27_combout\))

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
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~15\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17COUT1_30\);

-- Location: LC_X4_Y1_N1
\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0_combout\ = \Mod1|auto_generated|divider|my_abs_num|_~0_combout\ $ ((((!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\))))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\ = CARRY((!\Mod1|auto_generated|divider|my_abs_num|_~0_combout\ & ((!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\))))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2COUT1_31\ = CARRY((!\Mod1|auto_generated|divider|my_abs_num|_~0_combout\ & ((!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17COUT1_30\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|my_abs_num|_~0_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17_cout0\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~17COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2COUT1_31\);

-- Location: LC_X4_Y1_N7
\Mod1|auto_generated|divider|divider|StageOut[21]~2\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\ & (((\Mod1|auto_generated|divider|my_abs_num|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\,
	datac => \Mod1|auto_generated|divider|my_abs_num|_~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\);

-- Location: LC_X5_Y1_N4
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

-- Location: LC_X5_Y1_N1
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

-- Location: LC_X5_Y2_N7
\player_pos~10\ : maxv_lcell
-- Equation(s):
-- \player_pos~10_combout\ = (\Add2~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\)) # (!\Add2~0_combout\ & ((\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\ $ 
-- (\Mod1|auto_generated|divider|remainder[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8bb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Add2~0_combout\,
	datac => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos~10_combout\);

-- Location: LC_X3_Y1_N8
\player_pos[1]\ : maxv_lcell
-- Equation(s):
-- player_pos(1) = DFFEAS((\prev_BTN_down_state~regout\ & ((\BTN_down~combout\ & (!\player_pos~16_combout\)) # (!\BTN_down~combout\ & ((!\player_pos~10_combout\))))) # (!\prev_BTN_down_state~regout\ & (((!\player_pos~16_combout\)))), GLOBAL(\CLK~combout\), 
-- VCC, , !\game_over~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d2f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \prev_BTN_down_state~regout\,
	datab => \BTN_down~combout\,
	datac => \player_pos~16_combout\,
	datad => \player_pos~10_combout\,
	aclr => GND,
	ena => \ALT_INV_game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player_pos(1));

-- Location: LC_X4_Y1_N8
\Mod1|auto_generated|divider|my_abs_num|_~1\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|my_abs_num|_~1_combout\ = ((player_pos(2) & ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)) # (!player_pos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => player_pos(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|my_abs_num|_~1_combout\);

-- Location: LC_X4_Y1_N2
\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10_combout\ = \Mod1|auto_generated|divider|my_abs_num|_~1_combout\ $ ((((!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\))))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12\ = CARRY((\Mod1|auto_generated|divider|my_abs_num|_~1_combout\ & ((!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\))))
-- \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12COUT1_32\ = CARRY((\Mod1|auto_generated|divider|my_abs_num|_~1_combout\ & ((!\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2COUT1_31\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|my_abs_num|_~1_combout\,
	cin0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2\,
	cin1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~2COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10_combout\,
	cout0 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12\,
	cout1 => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~12COUT1_32\);

-- Location: LC_X4_Y1_N3
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

-- Location: LC_X4_Y1_N4
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

-- Location: LC_X4_Y1_N5
\Mod1|auto_generated|divider|divider|StageOut[22]~4\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\ = (((\Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10_combout\)))

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
	datac => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\);

-- Location: LC_X3_Y1_N4
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

-- Location: LC_X5_Y1_N2
\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5_combout\ = (\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2\ $ (((!\Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\ & 
-- !\Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\,
	cin0 => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2\,
	cin1 => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~2COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5_combout\);

-- Location: LC_X5_Y1_N9
\Mod1|auto_generated|divider|remainder[2]~1\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|remainder[2]~1_combout\ = (\Add2~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\)))) # (!\Add2~0_combout\ & 
-- (((\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fda8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[22]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~3_combout\,
	datad => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|remainder[2]~1_combout\);

-- Location: LC_X6_Y2_N0
\Mod0|auto_generated|divider|divider|StageOut[14]~6\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\))))

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
	dataa => \Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\);

-- Location: LC_X5_Y1_N6
\Mod1|auto_generated|divider|remainder[1]~2\ : maxv_lcell
-- Equation(s):
-- \Mod1|auto_generated|divider|remainder[1]~2_combout\ = ((\Add2~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\)) # (!\Add2~0_combout\ & ((\Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Add2~0_combout\,
	datad => \Mod1|auto_generated|divider|compl_add_rem|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod1|auto_generated|divider|remainder[1]~2_combout\);

-- Location: LC_X5_Y1_N8
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = (\Mod1|auto_generated|divider|remainder[2]~1_combout\ $ (((\Mod1|auto_generated|divider|remainder[0]~0_combout\ & \Mod1|auto_generated|divider|remainder[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|remainder[0]~0_combout\,
	datac => \Mod1|auto_generated|divider|remainder[1]~2_combout\,
	datad => \Mod1|auto_generated|divider|remainder[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\);

-- Location: LC_X5_Y1_N5
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

-- Location: LC_X5_Y4_N3
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = (player_pos(2)) # (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))) # (!player_pos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbfb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(2),
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\);

-- Location: LC_X6_Y1_N6
\player~2\ : maxv_lcell
-- Equation(s):
-- \player~2_combout\ = (player(0) & ((player_pos(2)) # ((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)) # (!player_pos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(2),
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => player(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~2_combout\);

-- Location: LC_X6_Y2_N2
\Mod0|auto_generated|divider|divider|StageOut[12]~3\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) $ (((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\);

-- Location: LC_X6_Y1_N3
\player~3\ : maxv_lcell
-- Equation(s):
-- \player~3_combout\ = (\player~2_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\)))

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
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~3_combout\);

-- Location: LC_X6_Y1_N4
\player[0]\ : maxv_lcell
-- Equation(s):
-- \player[0]~COMBOUT\ = (\process_1~0\ & (player(0))) # (!\process_1~0\ & (((\player~3_combout\))))
-- player(0) = DFFEAS(\player[0]~COMBOUT\, GLOBAL(\CLK~combout\), VCC, , !\game_over~regout\, \player~4_combout\, , , \process_1~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \process_1~0\,
	datab => player(0),
	datac => \player~4_combout\,
	datad => \player~3_combout\,
	aclr => GND,
	sload => \process_1~1\,
	ena => \ALT_INV_game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player[0]~COMBOUT\,
	regout => player(0));

-- Location: LC_X6_Y1_N8
\Decoder2~0\ : maxv_lcell
-- Equation(s):
-- \Decoder2~0_combout\ = ((!\player_pos[2]~COMBOUT\ & (\Mod1|auto_generated|divider|remainder[0]~0_combout\ $ (\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003c",
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
	combout => \Decoder2~0_combout\);

-- Location: LC_X6_Y1_N0
\player~4\ : maxv_lcell
-- Equation(s):
-- \player~4_combout\ = (\Add2~0_combout\ & ((\player[0]~COMBOUT\) # ((!\player_pos~10_combout\ & \Decoder2~0_combout\)))) # (!\Add2~0_combout\ & (!\player_pos~10_combout\ & ((\Decoder2~0_combout\))))

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
	dataa => \Add2~0_combout\,
	datab => \player_pos~10_combout\,
	datac => \player[0]~COMBOUT\,
	datad => \Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~4_combout\);

-- Location: LC_X3_Y4_N4
\ligne_counter[1]\ : maxv_lcell
-- Equation(s):
-- ligne_counter(1) = DFFEAS(ligne_counter(1) $ ((((ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(1),
	datad => ligne_counter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter(1));

-- Location: LC_X3_Y4_N6
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

-- Location: LC_X4_Y4_N7
\LED_matrix[0]~0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[0]~0_combout\ = ((\game_over~regout\) # ((!ligne_counter(1) & !ligne_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ligne_counter(1),
	datac => ligne_counter(2),
	datad => \game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LED_matrix[0]~0_combout\);

-- Location: LC_X4_Y4_N4
\LED_matrix[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[0]~reg0_regout\ = DFFEAS((ligne_counter(0) & (((!mur(0))))) # (!ligne_counter(0) & (player(0))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, VCC, , , \game_over~regout\)

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
	datab => player(0),
	datac => VCC,
	datad => mur(0),
	aclr => GND,
	sload => \game_over~regout\,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[0]~reg0_regout\);

-- Location: LC_X5_Y3_N4
\player~5\ : maxv_lcell
-- Equation(s):
-- \player~5_combout\ = (((player_pos(2)) # (!player_pos(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff5f",
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
	combout => \player~5_combout\);

-- Location: LC_X6_Y2_N3
\Decoder1~0\ : maxv_lcell
-- Equation(s):
-- \Decoder1~0_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\))))

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
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datac => \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~0_combout\);

-- Location: LC_X5_Y2_N1
\player~6\ : maxv_lcell
-- Equation(s):
-- \player~6_combout\ = (\player~5_combout\ & ((player(1)) # ((\Decoder1~0_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\)))) # (!\player~5_combout\ & (((\Decoder1~0_combout\ & 
-- !\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \player~5_combout\,
	datab => player(1),
	datac => \Decoder1~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~6_combout\);

-- Location: LC_X5_Y2_N0
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

-- Location: LC_X5_Y2_N8
\Decoder2~1\ : maxv_lcell
-- Equation(s):
-- \Decoder2~1_combout\ = ((!\player_pos[2]~COMBOUT\ & (\Add2~0_combout\ $ (!\Mod1|auto_generated|divider|remainder[0]~0_combout\))))

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
	datab => \Add2~0_combout\,
	datac => \Mod1|auto_generated|divider|remainder[0]~0_combout\,
	datad => \player_pos[2]~COMBOUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder2~1_combout\);

-- Location: LC_X5_Y2_N6
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

-- Location: LC_X3_Y4_N7
\LED_matrix[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[1]~reg0_regout\ = DFFEAS((ligne_counter(0) & (((!mur(1))))) # (!ligne_counter(0) & (player(1))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, VCC, , , \game_over~regout\)

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
	dataa => player(1),
	datab => ligne_counter(0),
	datac => VCC,
	datad => mur(1),
	aclr => GND,
	sload => \game_over~regout\,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[1]~reg0_regout\);

-- Location: LC_X7_Y2_N4
\Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0_combout\ = ((!player_pos(1) & (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & !player_pos(2))))

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
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => player_pos(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0_combout\);

-- Location: LC_X7_Y2_N6
\player~17\ : maxv_lcell
-- Equation(s):
-- \player~17_combout\ = (!player(2) & ((\BTN_up~combout\) # ((!\Decoder0~0_combout\) # (!\prev_BTN_up_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_up~combout\,
	datab => \prev_BTN_up_state~regout\,
	datac => player(2),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~17_combout\);

-- Location: LC_X5_Y2_N9
\player~8\ : maxv_lcell
-- Equation(s):
-- \player~8_combout\ = (!\process_1~0\ & (!\Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ & \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~8_combout\);

-- Location: LC_X5_Y2_N2
\player~9\ : maxv_lcell
-- Equation(s):
-- \player~9_combout\ = (\player~17_combout\ & (((!\Decoder0~0_combout\)) # (!\process_1~1\))) # (!\player~17_combout\ & (\player~8_combout\ & ((!\Decoder0~0_combout\) # (!\process_1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \player~17_combout\,
	datab => \process_1~1\,
	datac => \Decoder0~0_combout\,
	datad => \player~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~9_combout\);

-- Location: LC_X6_Y1_N9
\player[2]\ : maxv_lcell
-- Equation(s):
-- player(2) = DFFEAS((!\player~9_combout\ & (((!\Decoder2~0_combout\) # (!\player_pos~10_combout\)) # (!\process_1~1\))), GLOBAL(\CLK~combout\), VCC, , !\game_over~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "070f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \process_1~1\,
	datab => \player_pos~10_combout\,
	datac => \player~9_combout\,
	datad => \Decoder2~0_combout\,
	aclr => GND,
	ena => \ALT_INV_game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player(2));

-- Location: LC_X4_Y4_N2
\LED_matrix[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[2]~reg0_regout\ = DFFEAS((ligne_counter(0) & (((mur(2))))) # (!ligne_counter(0) & (!player(2))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, VCC, , , \game_over~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb11",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(0),
	datab => player(2),
	datac => VCC,
	datad => mur(2),
	aclr => GND,
	sload => \game_over~regout\,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[2]~reg0_regout\);

-- Location: LC_X7_Y2_N7
\player~11\ : maxv_lcell
-- Equation(s):
-- \player~11_combout\ = ((player_pos(1)) # ((player_pos(2)) # (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
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
	combout => \player~11_combout\);

-- Location: LC_X5_Y2_N3
\player~12\ : maxv_lcell
-- Equation(s):
-- \player~12_combout\ = (player(3) & ((\player~11_combout\) # ((\Decoder1~0_combout\ & \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\)))) # (!player(3) & (((\Decoder1~0_combout\ & 
-- \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\))))

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
	datac => \Decoder1~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~12_combout\);

-- Location: LC_X5_Y2_N4
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

-- Location: LC_X5_Y2_N5
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

-- Location: LC_X3_Y4_N0
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

-- Location: LC_X7_Y2_N3
\Add2~1\ : maxv_lcell
-- Equation(s):
-- \Add2~1_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0) & player_pos(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
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
	combout => \Add2~1_combout\);

-- Location: LC_X7_Y2_N5
\player~14\ : maxv_lcell
-- Equation(s):
-- \player~14_combout\ = (player(4) & (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0)) # (!player_pos(1))) # (!player_pos(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(2),
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella\(0),
	datad => player(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~14_combout\);

-- Location: LC_X6_Y1_N1
\player~15\ : maxv_lcell
-- Equation(s):
-- \player~15_combout\ = (\player~14_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \player~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[12]~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~15_combout\);

-- Location: LC_X6_Y1_N7
\player[4]\ : maxv_lcell
-- Equation(s):
-- \player[4]~COMBOUT\ = (\process_1~0\ & (player(4))) # (!\process_1~0\ & (((\player~15_combout\))))
-- player(4) = DFFEAS(\player[4]~COMBOUT\, GLOBAL(\CLK~combout\), VCC, , !\game_over~regout\, \player~16_combout\, , , \process_1~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \process_1~0\,
	datab => player(4),
	datac => \player~16_combout\,
	datad => \player~15_combout\,
	aclr => GND,
	sload => \process_1~1\,
	ena => \ALT_INV_game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player[4]~COMBOUT\,
	regout => player(4));

-- Location: LC_X6_Y1_N2
\Decoder2~2\ : maxv_lcell
-- Equation(s):
-- \Decoder2~2_combout\ = (!\player_pos~10_combout\ & (\player_pos[2]~COMBOUT\ & (\Mod1|auto_generated|divider|remainder[0]~0_combout\ $ (\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|remainder[0]~0_combout\,
	datab => \Add2~0_combout\,
	datac => \player_pos~10_combout\,
	datad => \player_pos[2]~COMBOUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder2~2_combout\);

-- Location: LC_X6_Y1_N5
\player~16\ : maxv_lcell
-- Equation(s):
-- \player~16_combout\ = (\Decoder2~2_combout\) # ((\player[4]~COMBOUT\ & ((!\Add2~1_combout\) # (!player_pos(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff70",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(2),
	datab => \Add2~1_combout\,
	datac => \player[4]~COMBOUT\,
	datad => \Decoder2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player~16_combout\);

-- Location: LC_X4_Y4_N0
\LED_matrix[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[4]~reg0_regout\ = DFFEAS((ligne_counter(0) & (((!mur(4))))) # (!ligne_counter(0) & (player(4))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, VCC, , , \game_over~regout\)

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
	datab => player(4),
	datac => VCC,
	datad => mur(4),
	aclr => GND,
	sload => \game_over~regout\,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[4]~reg0_regout\);

-- Location: LC_X4_Y3_N6
\Mux21~0\ : maxv_lcell
-- Equation(s):
-- \Mux21~0_combout\ = (((ligne_counter_slow(1) & ligne_counter_slow(2))))

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
	datac => ligne_counter_slow(1),
	datad => ligne_counter_slow(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux21~0_combout\);

-- Location: LC_X4_Y2_N9
\ground_matrix_mur[4]~0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix_mur[4]~0_combout\ = (((!ligne_counter_slow(0)) # (!ligne_counter_slow(2))) # (!ligne_counter_slow(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ligne_counter_slow(1),
	datac => ligne_counter_slow(2),
	datad => ligne_counter_slow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ground_matrix_mur[4]~0_combout\);

-- Location: LC_X4_Y2_N8
\ground_matrix_mur[0]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(0) = DFFEAS((((!\Mux21~0_combout\))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[4]~0_combout\, , , , )

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
	datad => \Mux21~0_combout\,
	aclr => GND,
	ena => \ground_matrix_mur[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(0));

-- Location: LC_X3_Y4_N8
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

-- Location: LC_X4_Y2_N6
\ground_matrix_mur[1]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(1) = DFFEAS(((ligne_counter_slow(1)) # ((!ligne_counter_slow(0)) # (!ligne_counter_slow(2)))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[4]~0_combout\, , , , )

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
	datac => ligne_counter_slow(2),
	datad => ligne_counter_slow(0),
	aclr => GND,
	ena => \ground_matrix_mur[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(1));

-- Location: LC_X3_Y4_N9
\ground_matrix[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[1]~reg0_regout\ = DFFEAS(((!\game_over~regout\ & ((ground_matrix_mur(1)) # (!ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

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
	datad => ground_matrix_mur(1),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[1]~reg0_regout\);

-- Location: LC_X4_Y2_N4
\ground_matrix_mur[2]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(2) = DFFEAS(((ligne_counter_slow(1)) # ((ligne_counter_slow(0)) # (!ligne_counter_slow(2)))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[4]~0_combout\, , , , )

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
	datac => ligne_counter_slow(2),
	datad => ligne_counter_slow(0),
	aclr => GND,
	ena => \ground_matrix_mur[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(2));

-- Location: LC_X3_Y4_N5
\ground_matrix[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[2]~reg0_regout\ = DFFEAS(((!\game_over~regout\ & ((ground_matrix_mur(2)) # (!ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

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
	datad => ground_matrix_mur(2),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[2]~reg0_regout\);

-- Location: LC_X4_Y2_N5
\ground_matrix_mur[3]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(3) = DFFEAS((((ligne_counter_slow(2)) # (!ligne_counter_slow(0))) # (!ligne_counter_slow(1))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	datab => ligne_counter_slow(1),
	datac => ligne_counter_slow(2),
	datad => ligne_counter_slow(0),
	aclr => GND,
	ena => \ground_matrix_mur[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(3));

-- Location: LC_X4_Y4_N6
\ground_matrix[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[3]~reg0_regout\ = DFFEAS(((!\game_over~regout\ & ((ground_matrix_mur(3)) # (!ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3303",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \game_over~regout\,
	datac => ligne_counter(0),
	datad => ground_matrix_mur(3),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[3]~reg0_regout\);

-- Location: LC_X4_Y2_N3
\ground_matrix_mur[4]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(4) = DFFEAS((((ligne_counter_slow(2)) # (ligne_counter_slow(0))) # (!ligne_counter_slow(1))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[4]~0_combout\, , , , )

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
	datac => ligne_counter_slow(2),
	datad => ligne_counter_slow(0),
	aclr => GND,
	ena => \ground_matrix_mur[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(4));

-- Location: LC_X4_Y4_N8
\ground_matrix[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[4]~reg0_regout\ = DFFEAS(((!\game_over~regout\ & ((ground_matrix_mur(4)) # (!ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(0),
	datac => ground_matrix_mur(4),
	datad => \game_over~regout\,
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[4]~reg0_regout\);

-- Location: LC_X4_Y2_N7
\ground_matrix_mur[5]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(5) = DFFEAS(((ligne_counter_slow(1)) # ((ligne_counter_slow(2)) # (!ligne_counter_slow(0)))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[4]~0_combout\, , , , )

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
	datac => ligne_counter_slow(2),
	datad => ligne_counter_slow(0),
	aclr => GND,
	ena => \ground_matrix_mur[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(5));

-- Location: LC_X4_Y4_N3
\ground_matrix[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[5]~reg0_regout\ = DFFEAS(((!\game_over~regout\ & ((ground_matrix_mur(5)) # (!ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3303",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \game_over~regout\,
	datac => ligne_counter(0),
	datad => ground_matrix_mur(5),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[5]~reg0_regout\);

-- Location: LC_X4_Y2_N0
\ground_matrix_mur[6]\ : maxv_lcell
-- Equation(s):
-- ground_matrix_mur(6) = DFFEAS((((!\Mux26~1_combout\))), GLOBAL(\CLK1~combout\), VCC, , \ground_matrix_mur[4]~0_combout\, , , , )

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
	datad => \Mux26~1_combout\,
	aclr => GND,
	ena => \ground_matrix_mur[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ground_matrix_mur(6));

-- Location: LC_X4_Y4_N1
\ground_matrix[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[6]~reg0_regout\ = DFFEAS(((!\game_over~regout\ & ((ground_matrix_mur(6)) # (!ligne_counter(0))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3303",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \game_over~regout\,
	datac => ligne_counter(0),
	datad => ground_matrix_mur(6),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[6]~reg0_regout\);

-- Location: LC_X3_Y3_N4
\segment_7_count[0]\ : maxv_lcell
-- Equation(s):
-- segment_7_count(0) = DFFEAS(segment_7_count(0) $ (((!ligne_counter_slow(0) & (\Mux21~0_combout\ & \Mux14~2\)))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~combout\,
	dataa => ligne_counter_slow(0),
	datab => segment_7_count(0),
	datac => \Mux21~0_combout\,
	datad => \Mux14~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => segment_7_count(0));

-- Location: LC_X3_Y3_N9
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

-- Location: LC_X4_Y3_N7
\segment_7_count[1]~1\ : maxv_lcell
-- Equation(s):
-- \segment_7_count[1]~1_combout\ = (!ligne_counter_slow(0) & (segment_7_count(0) & (\Mux21~0_combout\ & \Mux14~2\)))

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
	dataa => ligne_counter_slow(0),
	datab => segment_7_count(0),
	datac => \Mux21~0_combout\,
	datad => \Mux14~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \segment_7_count[1]~1_combout\);

-- Location: LC_X3_Y3_N5
\segment_7_count[1]\ : maxv_lcell
-- Equation(s):
-- segment_7_count(1) = DFFEAS(((segment_7_count(1) $ (\segment_7_count[1]~1_combout\))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

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
	datac => segment_7_count(1),
	datad => \segment_7_count[1]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => segment_7_count(1));

-- Location: LC_X3_Y3_N8
\segment_7[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \segment_7[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , segment_7_count(1), , , VCC)

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
	datac => segment_7_count(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segment_7[1]~reg0_regout\);

-- Location: LC_X3_Y3_N6
\segment_7_count[2]\ : maxv_lcell
-- Equation(s):
-- segment_7_count(2) = DFFEAS(segment_7_count(2) $ (((segment_7_count(1) & ((\segment_7_count[1]~1_combout\))))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
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
	datad => \segment_7_count[1]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => segment_7_count(2));

-- Location: LC_X3_Y3_N3
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

-- Location: LC_X3_Y3_N7
\segment_7_count[3]\ : maxv_lcell
-- Equation(s):
-- segment_7_count(3) = DFFEAS(segment_7_count(3) $ (((segment_7_count(1) & (segment_7_count(2) & \segment_7_count[1]~1_combout\)))), GLOBAL(\CLK1~combout\), VCC, , , , , , )

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
	datad => \segment_7_count[1]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => segment_7_count(3));

-- Location: LC_X3_Y3_N2
\segment_7[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \segment_7[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , segment_7_count(3), , , VCC)

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
	datac => segment_7_count(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segment_7[3]~reg0_regout\);

-- Location: LC_X4_Y3_N2
\vie[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \vie[0]~reg0_regout\ = DFFEAS((!vie_count(0) & (((!vie_count(1))))), GLOBAL(\CLK~combout\), VCC, , , VCC, , , \game_over~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => vie_count(0),
	datac => VCC,
	datad => vie_count(1),
	aclr => GND,
	sload => \game_over~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vie[0]~reg0_regout\);

-- Location: LC_X4_Y3_N9
\vie[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \vie[1]~reg0_regout\ = DFFEAS((((\game_over~regout\))) # (!vie_count(1)), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => vie_count(1),
	datac => \game_over~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vie[1]~reg0_regout\);

-- Location: LC_X4_Y3_N3
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

-- Location: LC_X4_Y3_N4
\vie[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \vie[2]~reg0_regout\ = DFFEAS((((\Mux0~1_combout\))) # (!vie_count(0)), GLOBAL(\CLK~combout\), VCC, , , VCC, , , \game_over~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => vie_count(0),
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


