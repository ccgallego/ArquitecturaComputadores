--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:32:57 04/05/2018
-- Design Name:   
-- Module Name:   /home/gallego/Escritorio/ArquitecturaDeComputadores-master/Procesador1/test_pc.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pc
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
 
ENTITY test_pc IS
END test_pc;
 
ARCHITECTURE behavior OF test_pc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pc
    PORT(
         entrada_pc : IN  std_logic_vector(31 downto 0);
         reloj : IN  std_logic;
         salida_pc : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada_pc : std_logic_vector(31 downto 0) := (others => '0');
   signal reloj : std_logic := '0';

 	--Outputs
   signal salida_pc : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant reloj_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pc PORT MAP (
          entrada_pc => entrada_pc,
          reloj => reloj,
          salida_pc => salida_pc
        );

   -- Clock process definitions
   reloj_process :process
   begin
		reloj <= '0';
		wait for reloj_period/2;
		reloj <= '1';
		wait for reloj_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for reloj_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
