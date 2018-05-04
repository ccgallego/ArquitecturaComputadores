
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

 
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
		alu_op <= "010001";
		Crs1    <= "11111111111111111111111111111111";
		sal_mux <= "11111111111111111111111111111111";
		sal_alu <= "11111111111111111111111111111111";
		
      -- insert stimulus here 

      wait;
   end process;

END;
