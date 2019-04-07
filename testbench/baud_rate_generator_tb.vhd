--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:22:36 03/11/2019
-- Design Name:   
-- Module Name:   C:/Users/pierr/Documents/Ecole/ESE/TECHNUM/UART/baud_rate_generator_tb.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: baud_rate_generator
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
 
ENTITY baud_rate_generator_tb IS
END baud_rate_generator_tb;
 
ARCHITECTURE behavior OF baud_rate_generator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT baud_rate_generator
    PORT(
         rst : IN  std_logic;
         baud_rate_sel : IN  std_logic;
         clk : IN  std_logic;
         --baud_rate : OUT  std_logic;
         seize_baud_rate : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal baud_rate_sel : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   --signal baud_rate : std_logic;
   signal seize_baud_rate : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: baud_rate_generator PORT MAP (
          rst => rst,
          baud_rate_sel => baud_rate_sel,
          clk => clk,
          seize_baud_rate => seize_baud_rate
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
      wait for 10 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		
		baud_rate_sel <= '1';
		rst <= '0';

      wait;
   end process;

END;
