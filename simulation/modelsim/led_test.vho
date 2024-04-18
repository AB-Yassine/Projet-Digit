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

-- DATE "04/18/2024 14:59:05"

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
	LED_matrix : OUT std_logic_vector(4 DOWNTO 0);
	ground_matrix : BUFFER std_logic_vector(6 DOWNTO 0);
	BTN_up : IN std_logic;
	BTN_down : IN std_logic;
	vdd : OUT std_logic
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
SIGNAL ww_LED_matrix : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ground_matrix : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BTN_up : std_logic;
SIGNAL ww_BTN_down : std_logic;
SIGNAL ww_vdd : std_logic;
SIGNAL \prev_BTN_up_state~regout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~20\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~15\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUTCOUT1_22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17COUT1_23\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ : std_logic;
SIGNAL \BTN_up~combout\ : std_logic;
SIGNAL \process_0~0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUTCOUT1_29\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22COUT1_30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~7COUT1_31\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\ : std_logic;
SIGNAL \player_pos~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7COUT1_24\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12COUT1_25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12COUT1_32\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17COUT1_33\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\ : std_logic;
SIGNAL \player_pos~6_combout\ : std_logic;
SIGNAL \LED_matrix[0]~0_combout\ : std_logic;
SIGNAL \LED_matrix[0]~reg0_regout\ : std_logic;
SIGNAL \LED_matrix[1]~reg0_regout\ : std_logic;
SIGNAL \LED_matrix[2]~reg0_regout\ : std_logic;
SIGNAL \LED_matrix[3]~reg0_regout\ : std_logic;
SIGNAL \LED_matrix[4]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[0]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[1]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[2]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[3]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[4]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[5]~reg0_regout\ : std_logic;
SIGNAL \ground_matrix[6]~reg0_regout\ : std_logic;
SIGNAL ligne_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL player : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\ : std_logic_vector(2 DOWNTO 0);
SIGNAL player_pos : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
LED_matrix <= ww_LED_matrix;
ground_matrix <= ww_ground_matrix;
ww_BTN_up <= BTN_up;
ww_BTN_down <= BTN_down;
vdd <= ww_vdd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: LC_X7_Y1_N5
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

-- Location: LC_X7_Y1_N7
\ligne_counter[1]\ : maxv_lcell
-- Equation(s):
-- ligne_counter(1) = DFFEAS(ligne_counter(0) $ ((((ligne_counter(1))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(0),
	datac => ligne_counter(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter(1));

-- Location: LC_X7_Y1_N6
\ligne_counter[2]\ : maxv_lcell
-- Equation(s):
-- ligne_counter(2) = DFFEAS((ligne_counter(2) $ (((ligne_counter(0) & ligne_counter(1))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(0),
	datac => ligne_counter(1),
	datad => ligne_counter(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ligne_counter(2));

-- Location: LC_X7_Y2_N1
\Add0~1\ : maxv_lcell
-- Equation(s):
-- \Add0~1_combout\ = (((player_pos(0) & player_pos(1))))

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
	datac => player_pos(0),
	datad => player_pos(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~1_combout\);

-- Location: LC_X5_Y2_N9
\Mod0|auto_generated|divider|divider|StageOut[9]~3\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ & (player_pos(2) $ (((player_pos(0) & player_pos(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0708",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(0),
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	datad => player_pos(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\);

-- Location: LC_X6_Y2_N0
\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0) = player_pos(0) $ ((player_pos(1)))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUT\ = CARRY(player_pos(0) $ ((player_pos(1))))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUTCOUT1_22\ = CARRY(player_pos(0) $ ((player_pos(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6666",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player_pos(0),
	datab => player_pos(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[0]~COUTCOUT1_22\);

-- Location: LC_X6_Y2_N1
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

-- Location: LC_X6_Y2_N6
\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17COUT1_23\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20_combout\)))

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
	datab => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~15\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17COUT1_23\);

-- Location: LC_X6_Y2_N7
\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5_combout\ = \Add0~1_combout\ $ (player_pos(2) $ ((!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\ & (\Add0~1_combout\ $ (!player_pos(2)))))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7COUT1_24\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17COUT1_23\ & (\Add0~1_combout\ $ (!player_pos(2)))))

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
	dataa => \Add0~1_combout\,
	datab => player_pos(2),
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~17COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7COUT1_24\);

-- Location: LC_X5_Y2_N8
\Mod0|auto_generated|divider|divider|StageOut[9]~4\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5_combout\)))

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
	datac => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LC_X5_Y2_N5
\Mod0|auto_generated|divider|divider|StageOut[8]~1\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ = ((!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0) & (\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella\(0),
	datac => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\);

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

-- Location: LC_X4_Y3_N5
prev_BTN_up_state : maxv_lcell
-- Equation(s):
-- \process_0~0\ = (((prev_BTN_up_state & !\BTN_up~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \BTN_up~combout\,
	datad => \BTN_up~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~0\,
	regout => \prev_BTN_up_state~regout\);

-- Location: LC_X6_Y2_N3
\player_pos[0]\ : maxv_lcell
-- Equation(s):
-- player_pos(0) = DFFEAS(((\player_pos~6_combout\)), GLOBAL(\CLK~combout\), VCC, , \process_0~0\, , , player(0), )
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUT\ = CARRY((!player_pos(0)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUTCOUT1_29\ = CARRY((!player_pos(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc55",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player_pos(0),
	datab => \player_pos~6_combout\,
	aclr => GND,
	sclr => player(0),
	ena => \process_0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player_pos(0),
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUT\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUTCOUT1_29\);

-- Location: LC_X6_Y2_N4
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
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[0]~COUTCOUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26_combout\);

-- Location: LC_X5_Y2_N0
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22COUT1_30\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26_combout\)))

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
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~20\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22COUT1_30\);

-- Location: LC_X5_Y2_N1
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\ = \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~7COUT1_31\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22COUT1_30\)))

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
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~22COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~7\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~7COUT1_31\);

-- Location: LC_X5_Y2_N2
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\ = \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~7\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12COUT1_32\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~7COUT1_31\ & ((\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\))))

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
	dataa => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~7\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~7COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12COUT1_32\);

-- Location: LC_X4_Y2_N9
\Mod0|auto_generated|divider|divider|StageOut[14]~5\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\))))

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
	dataa => \Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\);

-- Location: LC_X4_Y2_N2
\player[2]\ : maxv_lcell
-- Equation(s):
-- player(2) = DFFEAS((\Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\) # ((player_pos(0) $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\)), 
-- GLOBAL(\CLK~combout\), VCC, , \process_0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f9ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player_pos(0),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	aclr => GND,
	ena => \process_0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player(2));

-- Location: LC_X4_Y2_N7
\player[4]\ : maxv_lcell
-- Equation(s):
-- player(4) = DFFEAS((!\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\ & (player_pos(0) $ (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\)))), 
-- GLOBAL(\CLK~combout\), VCC, , \process_0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0600",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player_pos(0),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\,
	aclr => GND,
	ena => \process_0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player(4));

-- Location: LC_X4_Y2_N3
\player_pos~1\ : maxv_lcell
-- Equation(s):
-- \player_pos~1_combout\ = ((!player(1) & ((!player(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => player(1),
	datad => player(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos~1_combout\);

-- Location: LC_X7_Y2_N8
\player_pos[2]\ : maxv_lcell
-- Equation(s):
-- player_pos(2) = DFFEAS((player(2) & (!player(3) & (player(4) & \player_pos~1_combout\))), GLOBAL(\CLK~combout\), VCC, , \process_0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player(2),
	datab => player(3),
	datac => player(4),
	datad => \player_pos~1_combout\,
	aclr => GND,
	ena => \process_0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player_pos(2));

-- Location: LC_X6_Y2_N8
\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10_combout\ = \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\ $ ((((!player_pos(2))) # (!\Add0~1_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12\ = CARRY((\Add0~1_combout\ & (player_pos(2) & !\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\)))
-- \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12COUT1_25\ = CARRY((\Add0~1_combout\ & (player_pos(2) & !\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7COUT1_24\)))

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
	dataa => \Add0~1_combout\,
	datab => player_pos(2),
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~7COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10_combout\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~12COUT1_25\);

-- Location: LC_X6_Y2_N9
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

-- Location: LC_X5_Y2_N7
\Mod0|auto_generated|divider|divider|StageOut[8]~0\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\ = ((!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ & (player_pos(0) $ (player_pos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => player_pos(0),
	datac => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	datad => player_pos(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\);

-- Location: LC_X4_Y2_N1
\Mod0|auto_generated|divider|divider|StageOut[13]~2\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[8]~0_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[8]~1_combout\))))

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
	datac => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\);

-- Location: LC_X4_Y2_N8
\player[1]\ : maxv_lcell
-- Equation(s):
-- player(1) = DFFEAS((!\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\ & (player_pos(0) $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\)))), 
-- GLOBAL(\CLK~combout\), VCC, , \process_0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0009",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player_pos(0),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\,
	aclr => GND,
	ena => \process_0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player(1));

-- Location: LC_X6_Y2_N2
\player_pos[1]\ : maxv_lcell
-- Equation(s):
-- player_pos(1) = DFFEAS((!player(1) & (!player(0) & ((player(3)) # (!player(2))))), GLOBAL(\CLK~combout\), VCC, , \process_0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0501",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player(1),
	datab => player(2),
	datac => player(0),
	datad => player(3),
	aclr => GND,
	ena => \process_0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player_pos(1));

-- Location: LC_X5_Y2_N6
\Mod0|auto_generated|divider|divider|StageOut[10]~6\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ = (player_pos(0) & (player_pos(1) & (!\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ & player_pos(2))))

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
	dataa => player_pos(0),
	datab => player_pos(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	datad => player_pos(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\);

-- Location: LC_X6_Y2_N5
\Mod0|auto_generated|divider|divider|StageOut[10]~7\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_2|add_sub_cella[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\);

-- Location: LC_X5_Y2_N3
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\)))
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17COUT1_33\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12COUT1_32\)))

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
	dataa => \Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\,
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~15\,
	cout0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\,
	cout1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17COUT1_33\);

-- Location: LC_X5_Y2_N4
\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0\ : maxv_lcell
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\ = (((!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\)))

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
	cin0 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17_cout0\,
	cin1 => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\);

-- Location: LC_X4_Y2_N5
\player[3]\ : maxv_lcell
-- Equation(s):
-- player(3) = DFFEAS((!\Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (player_pos(0) $ (!\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\)))), 
-- GLOBAL(\CLK~combout\), VCC, , \process_0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0900",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player_pos(0),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	aclr => GND,
	ena => \process_0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player(3));

-- Location: LC_X4_Y2_N6
\player_pos~6\ : maxv_lcell
-- Equation(s):
-- \player_pos~6_combout\ = (player(1)) # ((player(3) & (player(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player(3),
	datab => player(1),
	datac => player(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player_pos~6_combout\);

-- Location: LC_X4_Y2_N4
\player[0]\ : maxv_lcell
-- Equation(s):
-- player(0) = DFFEAS((!\Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\ & (player_pos(0) $ (\Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\)))), 
-- GLOBAL(\CLK~combout\), VCC, , \process_0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0006",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => player_pos(0),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[14]~5_combout\,
	aclr => GND,
	ena => \process_0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player(0));

-- Location: LC_X7_Y1_N0
\LED_matrix[0]~0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[0]~0_combout\ = (((!ligne_counter(2)) # (!ligne_counter(1)))) # (!ligne_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ligne_counter(0),
	datac => ligne_counter(1),
	datad => ligne_counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LED_matrix[0]~0_combout\);

-- Location: LC_X6_Y1_N2
\LED_matrix[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[0]~reg0_regout\ = DFFEAS((ligne_counter(0)) # ((!ligne_counter(1) & (!ligne_counter(2) & player(0)))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(1),
	datab => ligne_counter(0),
	datac => ligne_counter(2),
	datad => player(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[0]~reg0_regout\);

-- Location: LC_X7_Y2_N3
\LED_matrix[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[1]~reg0_regout\ = DFFEAS((!ligne_counter(0) & ((ligne_counter(2)) # ((ligne_counter(1)) # (player(1))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(2),
	datab => ligne_counter(1),
	datac => player(1),
	datad => ligne_counter(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[1]~reg0_regout\);

-- Location: LC_X7_Y2_N7
\LED_matrix[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[2]~reg0_regout\ = DFFEAS((ligne_counter(0)) # ((!ligne_counter(2) & (!ligne_counter(1) & !player(2)))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff01",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(2),
	datab => ligne_counter(1),
	datac => player(2),
	datad => ligne_counter(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[2]~reg0_regout\);

-- Location: LC_X7_Y2_N9
\LED_matrix[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[3]~reg0_regout\ = DFFEAS((!ligne_counter(0) & ((ligne_counter(2)) # ((ligne_counter(1)) # (player(3))))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(2),
	datab => ligne_counter(1),
	datac => player(3),
	datad => ligne_counter(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[3]~reg0_regout\);

-- Location: LC_X7_Y2_N6
\LED_matrix[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED_matrix[4]~reg0_regout\ = DFFEAS((ligne_counter(0)) # ((!ligne_counter(2) & (!ligne_counter(1) & player(4)))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(2),
	datab => ligne_counter(1),
	datac => player(4),
	datad => ligne_counter(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_matrix[4]~reg0_regout\);

-- Location: LC_X7_Y1_N9
\ground_matrix[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[0]~reg0_regout\ = DFFEAS((ligne_counter(0)) # (((ligne_counter(1)) # (ligne_counter(2)))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(0),
	datac => ligne_counter(1),
	datad => ligne_counter(2),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[0]~reg0_regout\);

-- Location: LC_X7_Y1_N2
\ground_matrix[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[1]~reg0_regout\ = DFFEAS((((ligne_counter(1)) # (ligne_counter(2)))) # (!ligne_counter(0)), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(0),
	datac => ligne_counter(1),
	datad => ligne_counter(2),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[1]~reg0_regout\);

-- Location: LC_X7_Y2_N0
\ground_matrix[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[2]~reg0_regout\ = DFFEAS((((ligne_counter(2)) # (ligne_counter(0))) # (!ligne_counter(1))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

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
	clk => \CLK~combout\,
	datab => ligne_counter(1),
	datac => ligne_counter(2),
	datad => ligne_counter(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[2]~reg0_regout\);

-- Location: LC_X7_Y2_N5
\ground_matrix[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[3]~reg0_regout\ = DFFEAS((((ligne_counter(2)) # (!ligne_counter(0))) # (!ligne_counter(1))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

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
	clk => \CLK~combout\,
	datab => ligne_counter(1),
	datac => ligne_counter(2),
	datad => ligne_counter(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[3]~reg0_regout\);

-- Location: LC_X7_Y2_N4
\ground_matrix[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[4]~reg0_regout\ = DFFEAS(((ligne_counter(1)) # ((ligne_counter(0)) # (!ligne_counter(2)))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

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
	clk => \CLK~combout\,
	datab => ligne_counter(1),
	datac => ligne_counter(2),
	datad => ligne_counter(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[4]~reg0_regout\);

-- Location: LC_X7_Y2_N2
\ground_matrix[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[5]~reg0_regout\ = DFFEAS(((ligne_counter(1)) # ((!ligne_counter(0)) # (!ligne_counter(2)))), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

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
	clk => \CLK~combout\,
	datab => ligne_counter(1),
	datac => ligne_counter(2),
	datad => ligne_counter(0),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[5]~reg0_regout\);

-- Location: LC_X6_Y1_N4
\ground_matrix[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \ground_matrix[6]~reg0_regout\ = DFFEAS((((!ligne_counter(1)))) # (!ligne_counter(2)), GLOBAL(\CLK~combout\), VCC, , \LED_matrix[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => ligne_counter(2),
	datad => ligne_counter(1),
	aclr => GND,
	ena => \LED_matrix[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ground_matrix[6]~reg0_regout\);

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

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN_down~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BTN_down);

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
END structure;


