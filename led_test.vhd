library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

-- Déclaration de l'entité
entity led_test is
    Port (
        CLK : in std_logic;  -- Signal d'horloge
		  CLK1 : in std_logic;
        LED_matrix : buffer std_logic_vector(4 downto 0) := "00000"; -- Matrice de sortie pour contrôler les LED
        ground_matrix : buffer std_logic_vector(6 downto 0) := "1111111"; -- Matrice des grounds
		BTN_up : in std_logic := '0'; -- Signal du bouton
		BTN_down : in std_logic := '0';
		vdd : out std_logic := '1';
		segment_7_1 : buffer std_logic_vector(3 downto 0) := "0000";
	    	segment_7_2 : buffer std_logic_vector(3 downto 0) := "0000";
		life : buffer std_logic_vector(2 downto 0) := "111";
		BTN_reset : in std_logic := '0'
    );
end led_test;

-- Architecture de l'entité
architecture Behavioral of led_test is
      signal ligne_counter : integer range 0 to 2 := 0;  -- Compteur de colonne pour le balayage
		signal prev_BTN_up_state : std_logic := '0';
		signal prev_BTN_down_state : std_logic := '0';
		signal prev_BTN_reset_state : std_logic := '0';
		signal player : std_logic_vector(4 downto 0) := "00100";
		signal player_pos : integer range 0 to 4 := 2;
		signal ligne_counter_slow : integer range 0 to 7 :=0;
		signal mur : std_logic_vector(4 downto 0) := "11011";
        signal ground_matrix_mur : std_logic_vector(6 downto 0);
		  signal score : integer range 0 to 99 := 0; -- Score total
		  signal score_units_digit : integer range 0 to 9 := 0; -- Chiffre des unités du score
		  signal score_tens_digit : integer range 0 to 9 := 0; -- Chiffre des dizaines du score
		  
		 signal pseudo_random : integer range 0 to 4;
		 signal life_count : integer range 0 to 3 := 3;
		 signal speed : integer range 0 to 20 := 0;
		 type states is (game_win, game_over, game_playing, game_reset);
		 signal state : states := game_reset;
		 signal state_signal : states := game_reset;
		 signal game_reset_button : boolean := false;
	 
begin
	-- Processus pour générer le nombre pseudo-aléatoire
		 pseudo_random_generator : process(CLK)
		 begin
			  if rising_edge(CLK) then
					if pseudo_random + 1= 5 then
						 pseudo_random <= 0;
					else
						 pseudo_random <= pseudo_random + 1;
					end if;
			  end if;
		 end process pseudo_random_generator;
		 
		button : process(CLK)
	begin
		if rising_edge(CLK) then
				if state = game_playing then 
					game_reset_button <= false;
				end if;
			
				if BTN_up = '0' and prev_BTN_up_state = '1' then 		 
					if player_pos = 4 then
						player(player_pos) <= '0';
						player(0) <= '1';
						player_pos <= 0;
					else
						player(player_pos) <= '0';
						player(player_pos + 1) <= '1';
						player_pos <= player_pos + 1;
					end if;

				end if;
					
				if BTN_down = '0' and prev_BTN_down_state = '1' then 
					if player_pos = 0 then
						player(player_pos) <= '0';
						player(4) <= '1';
						player_pos <= 4;
					else
						player(player_pos) <= '0';
						player((player_pos - 1)) <= '1';
						player_pos <= (player_pos - 1);
					end if;

				end if;
				
				if BTN_reset = '0' and prev_BTN_reset_state = '1' then
					game_reset_button <= true;
				end if;

			prev_BTN_up_state <= BTN_up;
			prev_BTN_down_state <= BTN_down;
			prev_BTN_reset_state <= BTN_reset;
		end if;
	end process;
	 
	display : process(CLK)
	begin 
		if rising_edge(CLK) then
			if state = game_playing then
				case life_count is
					when 3 =>
						life <= "111";
                when 2 =>
                    life <= "110";
                when 1 =>
                    life <= "100";
                when others =>
                    life <= "000";
            end case;
            
				case ligne_counter is
					when 0 =>
						ground_matrix <= ground_matrix_mur;
						LED_matrix <= mur;
						
					when 1 => 
						ground_matrix <= "1111110";
						LED_matrix <= player;
					when others =>
						ligne_counter <= 0; 
				end case;
				
				ligne_counter <= ligne_counter + 1;
			elsif state = game_over then
				ground_matrix <= "0000000";
				LED_matrix <= "11111";
				life <= "100";
			elsif state = game_win then
				ground_matrix <= "0000000";
				LED_matrix <= "11111";
				life <= "010";
				
			end if;
		end if;
	end process display;
	 
	 process(CLK1)
	 variable mur_cst : std_logic_vector(4 downto 0) := "11111";
	 begin
		if rising_edge(CLK1) then
			
		  speed <= score_tens_digit*2;
		  
		  if game_reset_button = true then 
				ligne_counter_slow <= 0;
				life_count <= 3;
				segment_7_count <= 0;
				state <= game_playing;
			end if;
				
		
			case ligne_counter_slow is
                when 0 => -- Première Ligne
                    ground_matrix_mur <= "0111111";
							
							if pseudo_random = 0 then
								mur <= "11110"; -- Trou à la première position
						  elsif pseudo_random = 1 then
								mur <= "11101"; -- Trou à la deuxième position
						  elsif pseudo_random = 2 then
								mur <= "11011"; -- Trou à la troisième position
						  elsif pseudo_random = 3 then
								mur <= "10111"; -- Trou à la quatrième position
						  elsif pseudo_random = 4 then
								mur <= "01111"; -- Trou à la cinquième position
							end if;
                     
							
                when 1 => -- Deuxième Ligne
                    ground_matrix_mur <= "1011111";
                when 2 => -- Troisième Ligne
                    ground_matrix_mur <= "1101111";
                when 3 => -- Troisième Ligne
                    ground_matrix_mur <= "1110111";
                when 4 => -- Troisième Ligne
                    ground_matrix_mur <= "1111011";
                when 5 => -- Troisième Ligne
                    ground_matrix_mur <= "1111101";
						when 6 => -- Troisième Ligne
                    ground_matrix_mur <= "1111110";
						  if mur(player_pos) = '0' then
								score <= score + 1;
								score_units_digit <= score mod 10;
								score_tens_digit <= score / 10;
								segment_7_1 <= std_logic_vector(to_unsigned(score_units_digit, segment_7_1'length));
								segment_7_2 <= std_logic_vector(to_unsigned(score_tens_digit, segment_7_2'length));
								
								if score = 99 then
									state <= game_win;
								end if;
							else
								life_count <= life_count - 1;
								if life_count = 1 then
									state <= game_over;
								end if;
							end if;

							
							
				  
                when others =>
                    ligne_counter_slow <= 0; -- Revenir à la première colonne si on dépasse la troisième colonne
            end case;
				ligne_counter_slow <= ligne_counter_slow + 1;
				speed <= 0;
			end if;
		end if;
	 end process;
end Behavioral;
