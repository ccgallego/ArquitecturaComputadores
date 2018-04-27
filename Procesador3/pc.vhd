----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:47 04/05/2018 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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

entity pc is
    Port ( entrada_pc : in  STD_LOGIC_VECTOR (31 downto 0);
           reloj : in  STD_LOGIC;
           salida_pc : out  STD_LOGIC_VECTOR (31 downto 0));
end pc;

architecture Behavioral of pc is

begin

process (entrada_pc,reloj)
begin
   if (entrada_pc = "00000000000000000000000000000001") then
		salida_pc <= "00000000000000000000000000000000";
	else
			if(rising_edge(reloj))then
				salida_pc <= entrada_pc;
			end if;
	end if;
		
end process;

end Behavioral;

