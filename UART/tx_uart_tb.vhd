--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:23:57 03/26/2019
-- Design Name:   
-- Module Name:   C:/CPE_USERS/-ESE-VHDL-UART-master/UART/tx_uart_tb.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: tx_uart
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tx_uart_tb IS
END tx_uart_tb;
 
ARCHITECTURE behavior OF tx_uart_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
    

   --Inputs
   signal din : std_logic_vector(7 downto 0) := (others => '0');
   signal tx_start : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal s_tick : std_logic := '0';

 	--Outputs
   signal tx_done : std_logic;
   signal tx : std_logic;

   -- Clock period definitions
      -- Clock period definitions
   constant clk_period : time := 20 ns;
	
	constant s_tick_period : time := 6.52 us;
	
	constant baudrate : time := 104 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tx_uart PORT MAP (
          din => din,
          tx_start => tx_start,
          clk => clk,
          rst => rst,
          s_tick => s_tick,
          tx_done => tx_done,
          tx => tx
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
    -- s_tick process definitions
   s_tick_process :process
   begin
		s_tick <= '0';
		wait for (s_tick_period - clk_period);
		s_tick <= '1';
		wait for clk_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
	
	rst <= '0';
	tx_start <= '0', '1' after 100 us;
	din <= "11110100";
      wait;
   end process;

END;
