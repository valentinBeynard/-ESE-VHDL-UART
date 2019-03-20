----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:07:01 03/20/2019 
-- Design Name: 
-- Module Name:    rx_uart - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rx_uart is
    Port ( rx : in  STD_LOGIC;
           s_tick : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (7 downto 0);
           rx_done : out  STD_LOGIC);
end rx_uart;

architecture Behavioral of rx_uart is

type state_machine is (idle, stop, start, data);
signal current_state, next_state : state_machine;

signal internal_dout : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal n : INTEGER range 0 to 7 := 0;
signal s : INTEGER range 0 to 15 := 0;
begin
	
	-- Process gérant la clock clk qui cadence la FSM
	process (clk, rst, rx) 
	begin 

		if (rst = '1') then 
			current_state <= idle;
		elsif(rising_edge(clk)) then
				current_state <= next_state;
		end if;
		
	end process;
	
	-- Process gérant le passage d'un état à l'autre
	process (s_tick, next_state)
	

	
	begin
	
		case current_state is
		
			when  idle => 
				if(rx = '0') then
					next_state <= start;
				else
					next_state <= idle;
				end if;
				
				rx_done <= '0';
				s <= 0;
				n <= 0;

			when  stop => 
				if(s_tick = '1') then
					if(s = 15) then
						next_state <= idle;
					else
						s <= s + 1;
						next_state <= stop;
					end if;
				end if;
				
				rx_done <= '1';
				dout <= internal_dout;

			when  start =>
			
				if(s_tick = '1') then
					s <= s + 1;
				end if;
			
				rx_done <= '0';
				dout <= internal_dout;
			
				if(s < 7) then
					if(rx = '1') then
						s <= 0;
						next_state <= idle;
					else
						if(s_tick = '0') then
							next_state <= start;
						end if;
					end if;
				else
					next_state <= data;
					s <= 0;
				end if;
				

				
			when  data => 

				if(s_tick = '1') then
					s <= s + 1;
				end if;
				
				rx_done <= '0';
				
				if(n > 7) then
					s <= 0;
					next_state <= stop;
				else
					next_state <= data;
				end if;
				
				if(s >= 15) then
					s <= 0;
					internal_dout(n) <= rx;
					n <= n + 1;
				end if;
					
			when others => next_state<= idle;

		end case;
				
	end process;

	
end Behavioral;

