--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:56:11 04/02/2018
-- Design Name:   
-- Module Name:   C:/Users/Richy/Desktop/Proyectos ISE/Procesador1/test-nPC.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nPc
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
 
ENTITY test_nPC IS
END test_nPC;
 
ARCHITECTURE behavior OF test_nPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nPc
    PORT(
         entrada_nPC : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic;
         salida_nPC : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada_nPC : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal salida_nPC : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nPc PORT MAP (
          entrada_nPC => entrada_nPC,
          reset => reset,
          clk => clk,
          salida_nPC => salida_nPC
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
		reset <= '1';
      wait for 100 ns;
		reset <= '0';
		entrada_nPC <= "00000000000000000000000000000111";
		wait for 100 ns;
		entrada_nPC <= "00000000000000000000000000000101";
		wait for 100 ns;
		entrada_nPC <= "00000000000000000000000000000100";
		
      -- insert stimulus here 

      wait;
   end process;

END;
