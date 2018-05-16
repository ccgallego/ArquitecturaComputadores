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
		
		when "10" =>
		
			case(op3) is		--definiendo los casos de acuerdo a su op3
				
				--Add instruction
			when "000000" => --Add
				salida1 <= "000000";
			when "010000" => --Addcc
				salida1 <= "010000";
			when "001000" => --Addx
				salida1 <= "001000";
			when "011000" => --Addxcc
				salida1 <= "011000";	
	
		--Sub instruction			
			when "000100" => --Sub
				salida1 <= "000100";
			when "010100" => --Subcc
				salida1 <= "010100";
			when "001100" => --Subx
				salida1 <= "001100";
			when "011100" => --Subxcc
				salida1 <= "011100";
				
		--AND
			when "000001" => --And
				salida1 <= "000001";				
			when "010001" => --Andcc
				salida1 <= "010001";			
			when "000101" => --AndN
				salida1 <= "000101";
			when "010101" => --AndNcc
				salida1 <= "010101";
				
		--OR				
			when "000010" => --Or
				salida1 <= "000010";
			when "010010" => --Orcc
				salida1 <= "010010";
			
			when "000110" => --OrN
				salida1 <= "000110";
			when "010110" => --OrNcc
				salida1 <= "010110";
				
		--XOR							
			when "000011" => --Xor
				salida1 <= "000011";
			when "010011" => --Xorcc
				salida1 <= "010011";
			when "000111" => --XorN
				salida1 <= "000111";
			when "010111" => --XnorNcc
				salida1 <= "010111";
			
			when "111100" => -- SAVE
				salida1 <= "111100";			
			when "111101" => -- RESTORE
				salida1 <= "111101";
				when others =>
				end case;
			when others => -- si no es ninguno de los casos mi salida sera cero
		end case;
	end process;


end Behavioral;

