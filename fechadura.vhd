LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fechadura IS
    PORT (
        clock : IN STD_LOGIC;
        switches : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
        led_acerto, led_erro : OUT STD_LOGIC);
END fechadura;

ARCHITECTURE comportamento OF fechadura IS
    TYPE STATE_TYPE IS (a, b, c, d, erro, acerto);
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
                        estado <= erro;
                    END IF;
					 WHEN b =>
						  IF (digit_var = digit_B) THEN
                        estado <= c;
                    ELSE
                        estado <= erro;
                    END IF;
					 when c =>
							IF (digit_var = digit_C) THEN
								estado <= d;
							ELSE
								estado <= erro;
							END IF;
					 when d =>
							IF (digit_var = digit_D) THEN
								estado <= acerto;
							ELSE
								estado <= erro;
							END IF;
					when acerto =>
							led_acerto <= '1';
							--estado <= a;
					when erro =>
							led_erro <= '1';
							--estado <= a;
					-- dar um delay nesses leds?
				END CASE;
			END IF;
		END PROCESS;
END comportamento;