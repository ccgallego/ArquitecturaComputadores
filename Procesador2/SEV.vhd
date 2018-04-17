----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:05:50 04/16/2018 
-- Design Name: 
-- Module Name:    SEV - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SEV is
    Port ( inm_sev : in  STD_LOGIC_VECTOR (12 downto 0);
           salida_sev : out  STD_LOGIC_VECTOR (31 downto 0));
end SEV;

architecture Behavioral of SEV is

begin
process(inm_sev)
	begin
	if(inm_sev(12) = '1') then
		salida_sev(12 downto 0) <= inm_sev;
		salida_sev(31 downto 13) <= "1111111111111111111";
	else
		salida_sev(12 downto 0) <= inm_sev;
		salida_sev(31 downto 13) <= "0000000000000000000";
	end if;
end process;


end Behavioral;

