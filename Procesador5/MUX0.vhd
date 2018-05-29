----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:03:41 05/24/2018 
-- Design Name: 
-- Module Name:    MUX0 - Behavioral 
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



entity MUX0 is
    Port ( SDR : in  STD_LOGIC;
           result_DM : in  STD_LOGIC_VECTOR (31 downto 0);
           salida : in  STD_LOGIC_VECTOR (31 downto 0);
           S_To_RF : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX0;

architecture Behavioral of MUX0 is

begin
process(result_DM,salida,SDR)
begin
	if(SDR = '0')then
		S_To_RF <= salida;
	elsif(SDR = '1')then	
		S_To_RF <= result_DM;
	end if;
end process;


end Behavioral;

