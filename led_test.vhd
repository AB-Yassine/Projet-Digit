library ieee;
use ieee.std_logic_1164.all;

-- Déclaration de l'entité
entity led_test is
    Port (
        CLK : in std_logic;  -- Signal d'horloge
        LED_matrix : out std_logic_vector(4 downto 0); -- Matrice de sortie pour contrôler les LED
        ground_matrix : buffer std_logic_vector(6 downto 0); -- Matrice des grounds
		BTN_up : in std_logic := '0'; -- Signal du bouton
		BTN_down : in std_logic := '0';
		vdd : out std_logic := '1'
    );
end led_test;

-- Architecture de l'entité
architecture Behavioral of led_test is
      signal ligne_counter : integer range 0 to 7 := 0;  -- Compteur de colonne pour le balayage
		signal prev_BTN_up_state : std_logic := '0';
		signal prev_BTN_down_state : std_logic := '0';
		signal player : std_logic_vector(4 downto 0) := "00100";
		signal player_pos : integer range 0 to 4;
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if BTN_up = '0' and prev_BTN_up_state = '1' then 
                player_pos <= 0;
                for i in player'range loop
                    if player(i) = '1' then
                        player_pos <= i;
                        player(i) <= '0';
                    end if;
                end loop;
                player((player_pos + 1) mod 5) <= '1';
            end if;
            -- Afficher la colonne active
            case ligne_counter is
                when 0 => -- Première Ligne

							LED_matrix <= player;
							ground_matrix <= "1111110";

                when 1 =>
					
                    LED_matrix <= "10101"; -- Deuxième colonne active, toutes les lignes sont à 0 sauf la deuxième
                    ground_matrix <= "1111101";
                when 2 =>
                    LED_matrix <= "01010"; -- Troisième colonne active, toutes les lignes sont à 0 sauf la troisième
                    ground_matrix <= "1111011"; -- Toutes les lignes sont actives sauf la troisième
				    when 3 =>
						  LED_matrix <= "10101"; -- 
                    ground_matrix <= "1110111"; -- 
                    when 4 =>
                            LED_matrix <= "01010"; -- 
                            ground_matrix <= "1101111";
                    
                when 5=> 
                    LED_matrix <= "10101"; --
                    ground_matrix <= "1011111"; --

                when 6=>
                    LED_matrix <= "01010"; --
                    ground_matrix <= "0111111"; --

                    
						  
                when others =>
                    ligne_counter <= 0; -- Revenir à la première colonne si on dépasse la troisième colonne
            end case;
				
				ligne_counter <= ligne_counter + 1;
				prev_BTN_up_state <= BTN_up;
				
        end if;
    end process;
end Behavioral;
