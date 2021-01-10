library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.STATE_CONSTANTS.all;

entity moore_tb is
	constant PERIOD1: time:= 100 ns;
end entity moore_tb;

architecture moore_tb of moore_tb is

	signal z: std_logic_vector(OUT_BITS-1 downto 0);
	signal state: std_logic_vector(STATE_BITS-1 downto 0);
	signal reset_n: std_logic;
	signal clk: std_logic := '0';
	signal x: std_logic;
	
	component moore is
	
		port(z: out std_logic_vector(OUT_BITS-1 downto 0);
			 state: out std_logic_vector(STATE_BITS-1 downto 0);
			 reset_n: in std_logic;
			 clk: in std_logic;
			 x: in std_logic);
			 
	end component moore;
	
	procedure check_state_z(expected_state: std_logic_vector(STATE_BITS-1 downto 0);
							expected_z: std_logic_vector(OUT_BITS-1 downto 0);
							actual_state: std_logic_vector(STATE_BITS-1 downto 0);
							actual_z: std_logic_vector(OUT_BITS-1 downto 0);
							error_count: inout integer) is
							
		begin
			assert expected_state = actual_state
			--report "ERROR: Expected state (" & std_logic'image(expected_state(1) & std_logic'image(expected_state(0)) & ") /= actual (" & std_logic'image(actual_state(1)) & std_logic'image(actual_state(0)) & ") at time " & time'image(now);
			report "ERROR!";
			
			if(expected_state /= actual_state) then
				error_count := error_count + 1;
			end if;
			
			if(expected_z /= actual_z) then
				report "ERROR: Expected output z (" & std_logic'image(expected_z(1)) & std_logic'image(expected_z(0)) & ") /= actual (" & std_logic'image(actual_z(1)) & std_logic'image(expected_z(0)) & ") at time " & time'image(now);
				error_count := error_count + 1;
			end if;
		end procedure check_state_z;
		
	begin

		moore1: component moore port map(z, state, reset_n, clk, x);
		
		reset_n <= '1', '0' after (PERIOD1/4),
					'1' after (PERIOD1 + PERIOD1/4);
					
		clock: clk <= not clk after (PERIOD1/2);
		
		main: process is
			variable error_count: integer:= 0;
		
			begin
				report "Start Simulation...";
				x <= '0'; -- 1 peso
				wait for PERIOD1;
				check_state_z(S0, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S1, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S2, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S3, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S4, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S5, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S6, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S7, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S8, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S9, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S10, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S11, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S12, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S13, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S14, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S15, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S16, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S17, "10", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S0, "00", state, z, error_count);

				x <= '1'; -- 5 peso
				wait for PERIOD1;
				check_state_z(S5, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S10, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S15, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S18, "11", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S0, "00", state, z, error_count);

				x <= '0'; -- 1 peso
				wait for PERIOD1;
				check_state_z(S1, "00", state, z, error_count);

				x <= '1'; -- 5 peso
				wait for PERIOD1;
				check_state_z(S6, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S11, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S16, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S18, "11", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S0, "00", state, z, error_count);

				x <= '0'; -- 1 peso
				wait for PERIOD1;
				check_state_z(S1, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S2, "00", state, z, error_count);

				x <= '1'; -- 5 peso
				wait for PERIOD1;
				check_state_z(S7, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S12, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S17, "10", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S0, "00", state, z, error_count);

				x <= '0'; -- 1 peso
				wait for PERIOD1;
				check_state_z(S1, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S2, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S3, "00", state, z, error_count);

				x <= '1'; -- 5 peso
				wait for PERIOD1;
				check_state_z(S8, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S13, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S18, "11", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S0, "00", state, z, error_count);

				x <= '0'; -- 1 peso
				wait for PERIOD1;
				check_state_z(S1, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S2, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S3, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S4, "00", state, z, error_count);

				x <= '1'; -- 5 peso
				wait for PERIOD1;
				check_state_z(S9, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S14, "00", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S18, "11", state, z, error_count);
				wait for PERIOD1;
				check_state_z(S0, "00", state, z, error_count);

				if(error_count = 0) then
					report "tagumpay! walang error!";
				else
					report "May " & integer'image(error_count) & " errors";
				end if;
				
				wait;
				
			end process main;
			
	end architecture moore_tb;	