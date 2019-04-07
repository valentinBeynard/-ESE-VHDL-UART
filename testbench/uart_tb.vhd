--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:35:16 03/27/2019
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPelec_4ETI/UART/uart_tb.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART
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
 
ENTITY uart_tb IS
END uart_tb;
 
ARCHITECTURE behavior OF uart_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  tx_start : in std_logic;
           rx : in  STD_LOGIC;
           tx : out  STD_LOGIC;
			  tx_done : OUT  std_logic;
			  rx_done : OUT  std_logic;
			  dout : OUT  std_logic_vector(7 downto 0);
			  baud_rate_sel : in STD_LOGIC);
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal rx : std_logic := '0';
   signal baud_rate_sel : std_logic := '0';
	signal tx_start : std_logic;


 	--Outputs
   signal tx : std_logic;
   signal tx_done : std_logic;
	signal rx_done : std_logic;

   signal dout : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART PORT MAP (
          clk => clk,
          rst => rst,
			 tx_start => tx_start,
          rx => rx,
          tx => tx,
          tx_done => tx_done,
			 rx_done => rx_done,
          dout => dout,
          baud_rate_sel => baud_rate_sel
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
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
		
      wait;
   end process;

END;
