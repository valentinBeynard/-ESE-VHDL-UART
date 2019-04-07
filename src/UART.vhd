----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:53:19 03/27/2019 
-- Design Name: 
-- Module Name:    UART - Behavioral 
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

entity UART is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  tx_start : in std_logic;
           rx : in  STD_LOGIC;
           tx : out  STD_LOGIC;
			  tx_done : OUT  std_logic;
			  rx_done : OUT  std_logic;
			  dout : OUT  std_logic_vector(7 downto 0);
			  baud_rate_sel : in STD_LOGIC);
end UART;

architecture Behavioral of UART is

COMPONENT baud_rate_generator
    PORT(
         rst : IN  std_logic;
         baud_rate_sel : IN  std_logic;
         clk : IN  std_logic;
         seize_baud_rate : OUT  std_logic
        );
    END COMPONENT;
	 
	 
COMPONENT rx_uart
    PORT(
         rx : IN  std_logic;
         s_tick : IN  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic;
         dout : OUT  std_logic_vector(7 downto 0);
         rx_done : OUT  std_logic
        );
    END COMPONENT;

COMPONENT tx_uart
    PORT(
         din : IN  std_logic_vector(7 downto 0);
         tx_start : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         s_tick : IN  std_logic;
         tx_done : OUT  std_logic;
         tx : OUT  std_logic
        );
    END COMPONENT;

signal seize_baud_rate_int : STD_LOGIC;

begin


   U0: baud_rate_generator PORT MAP (
          rst => rst,
          baud_rate_sel => baud_rate_sel,
          clk => clk,
		    seize_baud_rate => seize_baud_rate_int
        );


   U1: tx_uart PORT MAP (
          din => "01010111",
          tx_start => tx_start,
          clk => clk,
          rst => rst,
          s_tick => seize_baud_rate_int,
          tx_done => tx_done,
          tx => tx
        );
		  
   uut: rx_uart PORT MAP (
          rx => rx,
          s_tick => seize_baud_rate_int,
          rst => rst,
          clk => clk,
          dout => dout,
          rx_done => rx_done
        );



end Behavioral;
