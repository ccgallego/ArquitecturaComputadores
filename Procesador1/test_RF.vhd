--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:36:11 04/07/2018
-- Design Name:   
-- Module Name:   /home/gallego/Escritorio/ArquitecturaDeComputadores-master/Procesador1/test_RF.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RF
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
 
ENTITY test_RF IS
END test_RF;
 
ARCHITECTURE behavior OF test_RF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF
    PORT(
         rs1 : IN  std_logic_vector(4 downto 0);
         rs2 : IN  std_logic_vector(4 downto 0);
         rd : IN  std_logic_vector(4 downto 0);
         drw : IN  std_logic_vector(31 downto 0);
         salida1 : OUT  std_logic_vector(31 downto 0);
         salida2 : OUT  std_logic_vector(31 downto 0);
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
   signal drw : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal salida1 : std_logic_vector(31 downto 0);
   signal salida2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF PORT MAP (
          rs1 => rs1,
          rs2 => rs2,
          rd => rd,
          drw => drw,
          salida1 => salida1,
          salida2 => salida2,
          reset => reset
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
		reset <= '1';
      wait for 100 ns;
		reset <= '0';
		rs1 <= "10000";
		rs2 <= "10001";
		rd <= "10011";
		drw <= x"00000003";

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
