library IEEE;
use IEEE.std_logic_1164.all;

package MEALY_CONSTANTS is
	constant STATE_BITS: integer := 5;
	constant OUT_BITS: integer := 2;
	constant S0: std_logic_vector(4 downto 0) := "00000";
	constant S1: std_logic_vector(4 downto 0) := "00001";
	constant S2: std_logic_vector(4 downto 0) := "00010";
	constant S3: std_logic_vector(4 downto 0) := "00011";
	constant S4: std_logic_vector(4 downto 0) := "00100";
	constant S5: std_logic_vector(4 downto 0) := "00101";
	constant S6: std_logic_vector(4 downto 0) := "00110";
	constant S7: std_logic_vector(4 downto 0) := "00111";
	constant S8: std_logic_vector(4 downto 0) := "01000";
	constant S9: std_logic_vector(4 downto 0) := "01001";
	constant S10: std_logic_vector(4 downto 0) := "01010";
	constant S11: std_logic_vector(4 downto 0) := "01011";
	constant S12: std_logic_vector(4 downto 0) := "01100";
	constant S13: std_logic_vector(4 downto 0) := "01101";
	constant S14: std_logic_vector(4 downto 0) := "01110";
	constant S15: std_logic_vector(4 downto 0) := "01111";
	constant S16: std_logic_vector(4 downto 0) := "10000";
end package;

--Description: Implements a Mealy machine on vending machine

library IEEE;
use IEEE.std_logic_1164.all;
use work.MEALY_CONSTANTS.all;

entity mealy is
	port (z: out std_logic_vector(OUT_BITS-1 downto 0);
		  state: out std_logic_vector(STATE_BITS-1 downto 0);
		  reset_n: in std_logic;
		  clk: in std_logic;
		  x: in std_logic);
end entity mealy;

architecture mealy of mealy is
	signal internal_state: std_logic_vector(STATE_BITS-1 downto 0);
begin
	state <= internal_state;
	
	compute_output: process(internal_state, x) is
	begin
		case internal_state is
			when S16 =>
				if(x = '0') then
					z <= "10";
				else
					z <= "11";
				end if;
			when S15 =>
				if(x = '0') then
					z <= "00";
				else
					z <= "11";
				end if;
			when S14 =>
				if(x = '0') then
					z <= "00";
				else
					z <= "11";
				end if;
			when S13 =>
				if(x = '0') then
					z <= "00";
				else
					z <= "11";
				end if;
			when S12 =>
				if(x = '0') then
					z <= "00";
				else
					z <= "10";
				end if;
			--output z when input is either 1 or 5 peso
			when S11 => z <= "00";
			when S10 => z <= "00";
			when S9 => z <= "00";
			when S8 => z <= "00";
			when S7 => z <= "00";
			when S6 => z <= "00";
			when S5 => z <= "00";
			when S4 => z <= "00";
			when S3 => z <= "00";
			when S2 => z <= "00";
			when S1 => z <= "00";
			when S0 => z <= "00";
			when others => z <= "XX";
		end case;
	end process compute_output;
	
	next_state: process(clk) is
	begin
		if((reset_n = '0') and rising_edge(clk)) then
			internal_state <= S0;
		elsif rising_edge(clk) then
			case internal_state is
				when S0 =>
					if(x = '0') then
						internal_state <= S1;
					else
						internal_state <= S5;
					end if;
				when S1 =>
					if(x = '0') then
						internal_state <= S2;
					else
						internal_state <= S6;
					end if;
				when S2 =>
					if(x = '0') then
						internal_state <= S3;
					else
						internal_state <= S7;
					end if;
				when S3 =>
					if(x = '0') then
						internal_state <= S4;
					else
						internal_state <= S8;
					end if;
				when S4 =>
					if(x = '0') then
						internal_state <= S5;
					else
						internal_state <= S9;
					end if;
				when S5 =>
					if(x = '0') then
						internal_state <= S6;
					else
						internal_state <= S10;
					end if;
				when S6 =>
					if(x = '0') then
						internal_state <= S7;
					else
						internal_state <= S11;
					end if;
				when S7 =>
					if(x = '0') then
						internal_state <= S8;
					else
						internal_state <= S12;
					end if;
				when S8 =>
					if(x = '0') then
						internal_state <= S9;
					else
						internal_state <= S13;
					end if;
				when S9 =>
					if(x = '0') then
						internal_state <= S10;
					else
						internal_state <= S14;
					end if;
				when S10 =>
					if(x = '0') then
						internal_state <= S11;
					else
						internal_state <= S15;
					end if;
				when S11 =>
					if(x = '0') then
						internal_state <= S12;
					else
						internal_state <= S16;
					end if;
				when S12 =>
					if(x = '0') then
						internal_state <= S13;
					else
						internal_state <= S16;
					end if;
				when S13 =>
					if(x = '0') then
						internal_state <= S14;
					else
						internal_state <= S16;
					end if;
				when S14 =>
					if(x = '0') then
						internal_state <= S15;
					else
						internal_state <= S16;
					end if;
				when S15 =>
					if(x = '0') then
						internal_state <= S16;
					else
						internal_state <= S0;
					end if;
				when S16 => internal_state <= S0;
				when others => internal_state <= "XXXXX";
			end case;
		end if;
	end process next_state;
end architecture mealy;
