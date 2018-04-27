
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity PSR_Modificar is
    Port ( Crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           salida_mux : in  STD_LOGIC_VECTOR (31 downto 0);
           salida_unidad : in  STD_LOGIC_VECTOR (5 downto 0);
           result_alu : in  STD_LOGIC_VECTOR (31 downto 0);
           salida_PSR : out  STD_LOGIC_VECTOR (3 downto 0));
end PSR_Modificar;

architecture Behavioral of PSR_Modificar is

begin




end Behavioral;

