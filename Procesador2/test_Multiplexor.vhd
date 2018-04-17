--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:59:17 04/16/2018
-- Design Name:   
-- Module Name:   /home/gallego/Escritorio/ArquitecturaDeComputadores-master/Procesador1/test_Multiplexor.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Multiplexor
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
 
ENTITY test_Multiplexor IS
END test_Multiplexor;
 
ARCHITECTURE behavior OF test_Multiplexor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplexor
    PORT(
         rs2_mult : IN  std_logic_vector(31 downto 0);
         inm_mult : IN  std_logic_vector(31 downto 0);
         salida_mult : OUT  std_logic_vector(31 downto 0);
         senal_i : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rs2_mult : std_logic_vector(31 downto 0) := (others => '0');
   signal inm_mult : std_logic_vector(31 downto 0) := (others => '0');
   signal senal_i : std_logic := '0';

 	--Outputs
   signal salida_mult : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplexor PORT MAP (
          rs2_mult => rs2_mult,
          inm_mult => inm_mult,
          salida_mult => salida_mult,
          senal_i => senal_i
        );

   -- Clock process definitions
   --<clock>_process :process
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
		rs2_mult <= x"0000000A";
		inm_mult <= x"0000000C";
		senal_i <= '1';
      wait for 100 ns;	
      -- insert stimulus here 

      wait;
   end process;

END;
