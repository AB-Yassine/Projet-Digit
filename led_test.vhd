library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

-- Déclaration de l'entité
entity led_test is
    Port (
        CLK : in std_logic;  -- Signal d'horloge
		  CLK1 : in std_logic;
        LED_matrix : out std_logic_vector(4 downto 0) := "00000"; -- Matrice de sortie pour contrôler les LED
        ground_matrix : buffer std_logic_vector(6 downto 0) := "1111111"; -- Matrice des grounds
		BTN_up : in std_logic := '0'; -- Signal du bouton
		BTN_down : in std_logic := '0';
		vdd : out std_logic := '1';
		segment_7 : buffer std_logic_vector(3 downto 0) := "0000";
		vie : buffer std_logic_vector(2 downto 0) := "111"
    );
end led_test;

-- Architecture de l'entité
architecture Behavioral of led_test is
      signal ligne_counter : integer range 0 to 7 := 0;  -- Compteur de colonne pour le balayage
		signal prev_BTN_up_state : std_logic := '0';
		signal prev_BTN_down_state : std_logic := '0';
		signal player : std_logic_vector(4 downto 0) := "00100";
		signal player_pos : integer range 0 to 4 := 2;
		signal ligne_counter_slow : integer range 0 to 7 :=0;
		signal mur : std_logic_vector(4 downto 0) := "11011";
        signal ground_matrix_mur : std_logic_vector(6 downto 0);
		  signal segment_7_count : natural range 0 to 9 := 0;
		  signal game_over : boolean := false;
		  signal mur_speed : natural := 1;
		  
		 signal pseudo_random : integer range 0 to 4;
		 signal vie_count : integer range 0 to 3 := 3;
	 
begin
	-- Processus pour générer le nombre pseudo-aléatoire
		 pseudo_random_generator : process(CLK)
		 begin
			  if rising_edge(CLK) then
					if pseudo_random = 5 then
						 pseudo_random <= 0;
					else
						 pseudo_random <= pseudo_random + 1;
					end if;
			  end if;
		 end process pseudo_random_generator;
	 
    process(CLK)
    begin
        if rising_edge(CLK) then
			if not game_over then
            if BTN_up = '0' and prev_BTN_up_state = '1' then 
                
                player(player_pos) <= '0';
                player((player_pos + 1) mod 5) <= '1';
					 player_pos <= (player_pos + 1) mod 5;
            end if;
				
				if BTN_down = '0' and prev_BTN_down_state = '1' then 
                
                player(player_pos) <= '0';
                player((player_pos - 1) mod 5) <= '1';
					 player_pos <= (player_pos - 1) mod 5;
				end if;
				
				case vie_count is
					when 3 =>
						vie <= "111";
                when 2 =>
                    vie <= "110";
                when 1 =>
                    vie <= "100";
                when others =>
                    vie <= "000";
            end case;
            
            -- Afficher la colonne active
            case ligne_counter is
                when 0 => -- Première Ligne
							
							ground_matrix <= "1111110";
							LED_matrix <= player;
						 
							
					when 1 => -- Première Ligne

						LED_matrix <= mur;
						ground_matrix <= ground_matrix_mur;
						                  
						  
                when others =>
                    ligne_counter <= 0; -- Revenir à la première colonne si on dépasse la troisième colonne
            end case;
			else
				ground_matrix <= "0000000";
				LED_matrix <= "11111";
				vie <= "111";
			end if;
				
				
				segment_7 <= std_logic_vector(to_unsigned(segment_7_count, segment_7'length));
				--vie <= std_logic_vector(to_unsigned(vie_count, vie'length));
				ligne_counter <= ligne_counter + 1;
				prev_BTN_up_state <= BTN_up;
				prev_BTN_down_state <= BTN_down;
        end if;
    end process;
	 
	 process(CLK1)
	 begin
		if rising_edge(CLK1) then
		
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
                    ground_matrix_mur <= "1011111" after mur_speed * 50 ms;
                when 2 => -- Troisième Ligne
                    ground_matrix_mur <= "1101111" after mur_speed * 50 ms;
                when 3 => -- Troisième Ligne
                    ground_matrix_mur <= "1110111" after mur_speed * 50 ms;
                when 4 => -- Troisième Ligne
                    ground_matrix_mur <= "1111011" after mur_speed * 50 ms;
                when 5 => -- Troisième Ligne
                    ground_matrix_mur <= "1111101" after mur_speed * 50 ms;
						when 6 => -- Troisième Ligne
                    ground_matrix_mur <= "1111110" after mur_speed * 50 ms;
						  if mur(player_pos) = '0' then
								segment_7_count <= segment_7_count + 1;
								mur_speed <= mur_speed + 10;
							else
								vie_count <= vie_count - 1;
								if vie_count = 1 then
									game_over <= true;
								end if;
							end if;
							
							
				  
                when others =>
                    ligne_counter_slow <= 0; -- Revenir à la première colonne si on dépasse la troisième colonne
            end case;
				ligne_counter_slow <= ligne_counter_slow + 1;
		end if;
	 end process;
end Behavioral;
