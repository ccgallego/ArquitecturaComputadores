----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:48:48 04/16/2018 
-- Design Name: 
-- Module Name:    Multiplexor - Behavioral 
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

entity Multiplexor is
    Port ( rs2_mult : in  STD_LOGIC_VECTOR (31 downto 0);
           inm_mult : in  STD_LOGIC_VECTOR (31 downto 0);
           salida_mult : out  STD_LOGIC_VECTOR (31 downto 0);
           senal_i : in  STD_LOGIC);
end Multiplexor;

architecture Behavioral of Multiplexor is

begin
process(senal_i,rs2_mult,inm_mult)
	begin
	if (senal_i = '1') then
		salida_mult <= rs2_mult;
	else
		salida_mult <= inm_mult;
	end if;
end process;
      
end Behavioral;

