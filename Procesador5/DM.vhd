----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:45:52 05/22/2018 
-- Design Name: 
-- Module Name:    DM - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DM is
    Port ( crd : in  STD_LOGIC_VECTOR (31 downto 0);
           salida_alu : in  STD_LOGIC_VECTOR (31 downto 0);
			  reset: in  STD_LOGIC;
           WRenMEM : in  STD_LOGIC;
			  clk: in  STD_LOGIC;
           result_DM : out  STD_LOGIC_VECTOR (31 downto 0));
end DM;

architecture Behavioral of DM is
type rom_type is array (31 downto 0) of std_logic_vector (31 downto 0);
signal memory : rom_type := (others=>x"00000000");


begin

process(crd, salida_alu,reset, WRenMEM, clk)
begin
if(rising_edge(clk))then
	if(reset = '1')then
		result_DM <= x"00000000";
		memory <=(others => x"00000000");
	else
		
		if(WRenMEM = '1')then			
			memory(conv_integer(salida_alu))<=crd;
		else
			result_DM <=memory(conv_integer(salida_alu));
		end if;
	end if;
end if;
end process;
end Behavioral;

