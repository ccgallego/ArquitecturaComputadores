----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:06 04/10/2018 
-- Design Name: 
-- Module Name:    UC - Behavioral 
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

entity UC is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           salida1 : out  STD_LOGIC_VECTOR (5 downto 0));
end UC;

architecture Behavioral of UC is

begin
process(op,op3)
	begin
	case(op) is
	
		when "01" =>
		
		when "10" =>
		
			case(op3) is		--definiendo los casos de acuerdo a su op3
				when "000000" => 		--caso add
					salida1 <= "000000";
				when "000100" =>		--caso sub
					salida1 <= "000100";
				when "000010" =>		--caso or
					salida1 <= "000010";
				when "000001" =>		--caso and
					salida1 <= "000001";
				when "000011" =>		--caso xor
					salida1 <= "000011";
				when "010001" =>--caso addcc
					salida1 <= "010001";
				when "011000" =>--caso addxcc
					salida1 <= "011000";
				when "010100" =>--caso subcc
					salida1 <= "010100";
				when "011100" =>--caso subxcc
					salida1 <= "011100";
				when others =>
				end case;
				when others => -- si no es ninguno de los casos mi salida sera cero
		end case;
	end process;


end Behavioral;

