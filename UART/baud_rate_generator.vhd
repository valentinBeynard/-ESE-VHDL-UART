----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:59 03/11/2019 
-- Design Name: 
-- Module Name:    baud_rate_generator - Behavioral 
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

entity baud_rate_generator is

    Port ( rst : in  STD_LOGIC;
           baud_rate_sel : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           --baud_rate : out  STD_LOGIC;
			  seize_baud_rate : out  STD_LOGIC);
end baud_rate_generator;


architecture Behavioral of baud_rate_generator is

constant M : INTEGER range 0 to 50000 := 434;
constant N : INTEGER range 0 to 50000 := 5208;

signal DIV_VAL : INTEGER range 0 to 50000 := 0;
signal SEIZE_DIV_VAL : INTEGER range 0 to 50000 := 0;

signal vcount : INTEGER range 0 to 50000;
signal seize_vcount : INTEGER range 0 to 50000;
signal baud_rate_int : STD_LOGIC := '0';
signal seize_baud_rate_int : STD_LOGIC := '0';

begin

	
DIV_VAL <= N when (baud_rate_sel = '0') else
		     M;
		  
SEIZE_DIV_VAL <= N/16 when (baud_rate_sel = '0') else
				     M/16;

--baud rate generator
process (clk, rst, baud_rate_sel)
	begin

		if (rst = '1') then
			vcount <= 0;
			seize_vcount <= 0;
			baud_rate_int <= '0';
			seize_baud_rate_int <= '0';
		elsif rising_edge(clk) then
				vcount <= vcount + 1;
				baud_rate_int <= '0';				
				if(vcount = DIV_VAL) then
					vcount <= 0;	
					baud_rate_int <= '1';	
				end if;

				seize_vcount <= seize_vcount + 1;
				seize_baud_rate_int <= '0';				
				if(seize_vcount = SEIZE_DIV_VAL) then
					seize_vcount <= 0;	
					seize_baud_rate_int <= '1';	
				end if;
		end if;	
--		else		
--			if rising_edge(clk) then				
--				if(vcount < DIV_VAL) then
--					vcount <= vcount + 1;
--				else
--					baud_rate_int <= NOT baud_rate_int;
--					vcount <= 0;
--				end if;
--				
--				if(seize_vcount < SEIZE_DIV_VAL) then
--					seize_vcount <= seize_vcount + 1;
--				else
--					seize_baud_rate_int <= NOT seize_baud_rate_int;
--					seize_vcount <= 0;
--				end if;
--			end if;
--		end if;	
end process;


--16 baud generator 
--process (clk, rst, baud_rate_sel)
--variable SEIZE_DIV_VAL : INTEGER range 0 to 50000 := 0;
--	begin
--		if (baud_rate_sel = '0') then
--			SEIZE_DIV_VAL := N/16;
--		else
--			SEIZE_DIV_VAL := M/16;
--		end if;
--		if (rst = '1') then
--			seize_baud_rate_int <= '0';
--		else		
--			if rising_edge(clk) then
--				if(seize_vcount < SEIZE_DIV_VAL) then
--					seize_vcount <= seize_vcount + 1;
--				else
--					seize_baud_rate_int <= NOT seize_baud_rate_int;
--					seize_vcount <= 0;
--				end if;
--			end if;
--		end if;
--		
--end process;



--baud_rate <= baud_rate_int;
seize_baud_rate <= seize_baud_rate_int;

end Behavioral;

