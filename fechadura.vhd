LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fechadura IS
    PORT (
        clock : IN STD_LOGIC;
        switches : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
        led_acerto, led_erro1, led_erro2, led_erro3 : OUT STD_LOGIC;
        display7seg1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		  display7seg2 : OUT STD_LOGIC_VECTOR(0 TO 6);
		  display7seg3 : OUT STD_LOGIC_VECTOR(0 TO 6);
		  display7seg4 : OUT STD_LOGIC_VECTOR(0 TO 6));
END fechadura;

ARCHITECTURE comportamento OF fechadura IS
    TYPE STATE_TYPE IS (a, b, c, d);
    SIGNAL estado : STATE_TYPE;
BEGIN
    PROCESS (clock)
        VARIABLE digit_A : INTEGER RANGE 0 TO 9;
        VARIABLE digit_B : INTEGER RANGE 0 TO 9;
        VARIABLE digit_C : INTEGER RANGE 0 TO 9;
        VARIABLE digit_D : INTEGER RANGE 0 TO 9;
        VARIABLE digit_var : INTEGER RANGE 0 TO 9;
        VARIABLE ta_errado : INTEGER RANGE 0 TO 1;
        VARIABLE num_erros : INTEGER RANGE 0 TO 10;
		  VARIABLE acertou : STD_LOGIC;
    
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
                WHEN OTHERS => ta_errado := 1;

            END CASE;

            -- Integração com o display de 7 segmentos
            CASE digit_var IS
                WHEN 0 => display7seg1 <= "0000001"; -- "0"     
                WHEN 1 => display7seg1 <= "1001111"; -- "1" 
                WHEN 2 => display7seg1 <= "0010010"; -- "2" 
                WHEN 3 => display7seg1 <= "0000110"; -- "3" 
                WHEN 4 => display7seg1 <= "1001100"; -- "4" 
                WHEN 5 => display7seg1 <= "0100100"; -- "5" 
                WHEN 6 => display7seg1 <= "0100000"; -- "6" 
                WHEN 7 => display7seg1 <= "0001111"; -- "7" 
                WHEN 8 => display7seg1 <= "0000000"; -- "8"     
                WHEN 9 => display7seg1 <= "0000100"; -- "9"
            END CASE;

            led_erro1 <= '0';
            led_acerto <= '0';

            --Remover os estados intermediários e colocar as lógicas de LEDs dentro
            -- dos if e else (pra não ocasionar nenhum delay de clock).

				display7seg2 <= "0000000";
				display7seg3 <= "0000000";
				display7seg4 <= "0000000";
				
            -- Máquina de estados
            CASE estado IS
                WHEN a =>
						  
						  IF (num_erros > 0) THEN
                            led_erro1 <= '1';    
                    END IF;
						  
						  IF (num_erros >= 3) THEN 
								display7seg1 <= "1100010";
								display7seg2 <= "1111010";
								display7seg3 <= "1111010";
								display7seg4 <= "0110000";
                    ELSIF (digit_var = digit_A) THEN
                        estado <= b;
                    ELSE
								-- ligando leds conforme quantidade de erros
                        num_erros := num_erros + 1;
                        IF (num_erros = 1) THEN
                            led_erro1 <= '1';
                        ELSIF (num_erros = 2) THEN
                            led_erro1 <= '1';
                            led_erro2 <= '1';
                        ELSIF (num_erros = 3) THEN
                            led_erro1 <= '1';
                            led_erro2 <= '1';
                            led_erro3 <= '1';
                        END IF;
								--
                    END IF;
                WHEN b =>
						  IF (num_erros > 0) THEN
                            led_erro1 <= '1';    
                    END IF;
                    
						  IF (digit_var = digit_B) THEN
                        estado <= c;
                    ELSE
								-- ligando leds conforme quantidade de erros
                        num_erros := num_erros + 1;
                        IF (num_erros = 1) THEN
                            led_erro1 <= '1';
                        ELSIF (num_erros = 2) THEN
                            led_erro1 <= '1';
                            led_erro2 <= '1';
                        ELSIF (num_erros = 3) THEN
                            led_erro1 <= '1';
                            led_erro2 <= '1';
                            led_erro3 <= '1';
                        END IF;
								--
                        estado <= a;
                    END IF;
                WHEN c =>
						  IF (num_erros > 0) THEN
                            led_erro1 <= '1';    
                    END IF;
                    
						  IF (digit_var = digit_C) THEN
                        estado <= d;
                    ELSE
								-- tratamento dos leds de erro
                        num_erros := num_erros + 1;
                        IF (num_erros = 1) THEN
                            led_erro1 <= '1';
                        ELSIF (num_erros = 2) THEN
                            led_erro1 <= '1';
                            led_erro2 <= '1';
                        ELSIF (num_erros = 3) THEN
                            led_erro1 <= '1';
                            led_erro2 <= '1';
                            led_erro3 <= '1';
                        END IF;
								--
                        estado <= a;
                    END IF;
                WHEN d =>
						  IF (num_erros > 0) THEN
                            led_erro1 <= '1';    
                    END IF;
						  
                    IF (digit_var = digit_D) THEN
                        led_acerto <= '1';
								acertou := '1';
								led_erro1 <= '0';
								led_erro2 <= '0';
								led_erro3 <= '0';
                    ELSE
								-- tratamento dos leds de erro
                        num_erros := num_erros + 1;
                        IF (num_erros = 1) THEN
                            led_erro1 <= '1';
                        ELSIF (num_erros = 2) THEN
                            led_erro1 <= '1';
                            led_erro2 <= '1';
                        ELSIF (num_erros = 3) THEN
                            led_erro1 <= '1';
                            led_erro2 <= '1';
                            led_erro3 <= '1';
                        END IF;
								--
                    END IF;
							
						  IF (acertou = '1') THEN
								display7seg4 <= "0000001";
								display7seg3 <= "0011000";
								display7seg2 <= "0110000";
								display7seg1 <= "0001001";
								num_erros := 0;
						  ELSE
								estado <= a;
						  END IF;
            END CASE;

        END IF;

        -- considerar a porta no código
    END PROCESS;
END comportamento;