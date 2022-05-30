LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fechadura IS
    PORT (
        clock : IN STD_LOGIC;
        switches : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
        led_acerto, led_erro: OUT STD_LOGIC;
		  display7seg: OUT STD_LOGIC_VECTOR(0 TO 6));
END fechadura;

ARCHITECTURE comportamento OF fechadura IS
    TYPE STATE_TYPE IS (a, b, c, d);
    SIGNAL estado : STATE_TYPE;

BEGIN
    PROCESS (clock)
        variable digit_A : integer range 0 to 9;
        variable digit_B : integer range 0 to 9;
		  variable digit_C : integer range 0 to 9;
		  variable digit_D : integer range 0 to 9;
		  variable digit_var : integer range 0 to 9;
		  variable ta_errado : integer range 0 to 1;
		  
		  
    BEGIN
		-- definindo a senha
		digit_A := 0;
		digit_B := 1;
		digit_C := 2;
		digit_D := 3;
		
        IF (rising_edge(clock)) THEN
		  -- Mapeamento dos switches
            CASE switches IS
                WHEN "0000000001" => digit_var := 0;
                WHEN "0000000010" => digit_var := 1;
                WHEN "0000000100" => digit_var := 2;
					 WHEN "0000001000" => digit_var := 3;
					 WHEN "0000010000" => digit_var := 4;
					 WHEN "0000100000" => digit_var := 5;
					 WHEN "0001000000" => digit_var := 6;
					 WHEN "0010000000" => digit_var := 7;
					 WHEN "0100000000" => digit_var := 8;
					 WHEN "1000000000" => digit_var := 9;
					 WHEN others => ta_errado := 1;

            END CASE;
				
				case digit_var is
					 when 0 => display7seg <= "0000001"; -- "0"     
					 when 1 => display7seg <= "1001111"; -- "1" 
					 when 2 => display7seg <= "0010010"; -- "2" 
					 when 3 => display7seg <= "0000110"; -- "3" 
					 when 4 => display7seg <= "1001100"; -- "4" 
					 when 5 => display7seg <= "0100100"; -- "5" 
					 when 6 => display7seg <= "0100000"; -- "6" 
					 when 7 => display7seg <= "0001111"; -- "7" 
					 when 8 => display7seg <= "0000000"; -- "8"     
					 when 9 => display7seg <= "0000100"; -- "9"
				END CASE;
				
				led_erro <= '0';
				led_acerto <= '0';
						  
			--Remover os estados intermediários e colocar as lógicas de LEDs dentro
			-- dos if e else (pra não ocasionar nenhum delay de clock).
						  
			-- Máquina de estados
            CASE estado IS
                WHEN a =>
						  IF (digit_var = digit_A) THEN
                        estado <= b;
                    ELSE
                        led_erro <= '1'; --lógica do for grande (delay) vai aqui
                    END IF;
					 WHEN b =>
						  IF (digit_var = digit_B) THEN
                        estado <= c;
                    ELSE
                        led_erro <= '1';
								estado <= a;
                    END IF;
					 when c =>
							IF (digit_var = digit_C) THEN
								estado <= d;
							ELSE
								led_erro <= '1';
								estado <= a;
							END IF;
					 when d =>
							IF (digit_var = digit_D) THEN
								led_acerto <= '1';
							ELSE
								led_erro <= '1';
							END IF;
							estado <= a;
				END CASE;
			END IF;
			
			-- considerar a porta no código
		END PROCESS;
END comportamento;