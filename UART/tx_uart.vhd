----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:07:46 03/26/2019 
-- Design Name: 
-- Module Name:    tx_uart - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tx_uart is
    Port ( din : in  STD_LOGIC_VECTOR (7 downto 0);
           tx_start : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           s_tick : in  STD_LOGIC;
           tx_done : out  STD_LOGIC;
           tx : out  STD_LOGIC);
end tx_uart;

architecture Behavioral of tx_uart is

type state_machine is (idle, start, data, stop);
signal current_state, next_state : state_machine;

signal n, n_reg : INTEGER range 0 to 9 := 0;
signal s, s_reg : INTEGER range 0 to 15 := 0;

begin

-- Process gérant la clock clk qui cadence la FSM
	process (clk, rst) 
	begin 

		if (rst = '1') then 
			current_state <= idle;
			s_reg <= 0;
			n_reg <= 0;
		elsif(rising_edge(clk)) then
			current_state <= next_state;
			s_reg <= s;
			n_reg <= n;				
		end if;
		
	end process;
	
	-- Process gérant le passage d'un état à l'autre
	process (s_tick, current_state, s_reg, n_reg)
	--variable s_int : INTEGER range 0 to 16 := 0;
	--variable tx_done_int : STD_LOGIC := '0';
	begin
		s <= s_reg;
		n <= n_reg;
		next_state <= current_state;

		case current_state is
		
			when  idle => 
				if(tx_start = '1') then
					next_state <= start;
				else
					next_state <= idle;
				end if;
				
				tx_done <= '0';
				n <= 0;
				s <= 0;
				tx <= '1';

			when  start =>	
				tx <= '0';
				tx_done <= '0';
				if(s_tick = '1') then
					s <= s_reg + 1;
					if(s_reg = 15) then
						s <= 0;
						next_state <= data;
					else
						next_state <= start;
					end if;
				end if;
				
			when  data => 
				tx_done <= '0';
				if(s_tick = '1') then
					if(s_reg = 15) then
						s <= 0;
						if(n_reg = 7) then
							n <= 0;
							next_state <= stop;
						else
							n <= n_reg + 1;
							next_state <= data;
							tx <= din(n_reg);
						end if;
					else 
						s <= s_reg + 1;
					end if;
				end if;

			when  stop => 
				tx <= '1';
				tx_done <= '1';			
				if(s_tick = '1') then	
					s <= s_reg + 1;
					if(s_reg = 15) then
						tx_done <= '1';
						next_state <= idle;
					else
						next_state <= stop;
					end if;	
				end if;
					
			when others => 
				next_state <= idle;
		end case;
						
	end process;

end Behavioral;

