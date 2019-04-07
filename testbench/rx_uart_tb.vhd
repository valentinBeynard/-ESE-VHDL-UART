--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:22:06 03/20/2019
-- Design Name:   
-- Module Name:   C:/Users/BEYNARD/Documents/GitHub/-ESE-VHDL-UART/UART/rx_uart_tb.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rx_uart
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
 
ENTITY rx_uart_tb IS
END rx_uart_tb;
 
ARCHITECTURE behavior OF rx_uart_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
    

   --Inputs
   signal rx : std_logic := '0';
   signal s_tick : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal dout : std_logic_vector(7 downto 0);
   signal rx_done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
	
	constant s_tick_period : time := 6.52 us;
	
	constant baudrate : time := 104 us;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rx_uart PORT MAP (
          rx => rx,
          s_tick => s_tick,
          rst => rst,
          clk => clk,
          dout => dout,
          rx_done => rx_done
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

	--	rx <= '1', '0' after 100 us, '1' after (100 + 1 * baudrate) us;
		rx <= '1', '0' after 200 us, '1' after 304 us, '0' after 408 us, '1' after 512 us, '0' after 616 us, '1' after 720 us;
      wait;
   end process;

END;
