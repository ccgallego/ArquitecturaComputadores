--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:02:09 04/07/2018
-- Design Name:   
-- Module Name:   /home/gallego/Escritorio/ArquitecturaDeComputadores-master/Procesador1/test_alu.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Alu
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
 
ENTITY test_alu IS
END test_alu;
 
ARCHITECTURE behavior OF test_alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu
    PORT(
         entrada1 : IN  std_logic_vector(31 downto 0);
         entrada2 : IN  std_logic_vector(31 downto 0);
         entrada_uc : IN  std_logic_vector(5 downto 0);
         salida_alu : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada1 : std_logic_vector(31 downto 0) := (others => '0');
   signal entrada2 : std_logic_vector(31 downto 0) := (others => '0');
   signal entrada_uc : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal salida_alu : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu PORT MAP (
          entrada1 => entrada1,
          entrada2 => entrada2,
          entrada_uc => entrada_uc,
          salida_alu => salida_alu
        );

   -- Clock process definitions
  -- <clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		entrada1 <= x"00000003";
		entrada2 <= x"00000001";
		entrada_uc <= "000100";
      wait for 100 ns;	
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
