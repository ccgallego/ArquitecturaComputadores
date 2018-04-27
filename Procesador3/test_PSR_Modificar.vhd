--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:09:26 04/26/2018
-- Design Name:   
-- Module Name:   /home/gallego/Escritorio/ArquitecturaDeComputadores-master/Procesador3/test_PSR_Modificar.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PSR_Modificar
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
 
ENTITY test_PSR_Modificar IS
END test_PSR_Modificar;
 
ARCHITECTURE behavior OF test_PSR_Modificar IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PSR_Modificar
    PORT(
         Crs1 : IN  std_logic_vector(31 downto 0);
         sal_Mux : IN  std_logic_vector(31 downto 0);
         alu_op : IN  std_logic_vector(5 downto 0);
         sal_alu : IN  std_logic_vector(31 downto 0);
         NZVC : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Crs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal sal_Mux : std_logic_vector(31 downto 0) := (others => '0');
   signal alu_op : std_logic_vector(5 downto 0) := (others => '0');
   signal sal_alu : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal NZVC : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PSR_Modificar PORT MAP (
          Crs1 => Crs1,
          sal_Mux => sal_Mux,
          alu_op => alu_op,
          sal_alu => sal_alu,
          NZVC => NZVC
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Crs1    <= "11111111111111111111111111111111";
		sal_mux <= "11111111111111111111111111111111";
		alu_op <= "000000";
		sal_alu <= "00000000000000000000000000000001";
		
      -- insert stimulus here 

      wait;
   end process;

END;
