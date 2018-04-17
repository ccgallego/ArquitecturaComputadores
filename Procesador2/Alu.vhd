----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:48:19 04/07/2018 
-- Design Name: 
-- Module Name:    Alu - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alu is
    Port ( entrada1 : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada2 : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada_uc : in  STD_LOGIC_VECTOR (5 downto 0);
           salida_alu : out  STD_LOGIC_VECTOR (31 downto 0));
end Alu;

architecture Behavioral of Alu is

begin
	
	process(entrada1,entrada2,entrada_uc)
	begin
	
			case(entrada_uc) is		--definiendo los casos de acuerdo a su op3
				when "000000" => 		--caso add
					salida_alu <= entrada1 + entrada2;
				when "000100" =>		--caso sub
					salida_alu <= entrada1 - entrada2;
				when "000010" =>		--caso or
					salida_alu <= entrada1 or entrada2;
				when "000001" =>		--caso and
					salida_alu <= entrada1 and entrada2;
				when "000011" =>		--caso xor
					salida_alu <= entrada1 xor entrada2;
				when others => -- si no es ninguno de los casos mi salida sera cero
					salida_alu <= (others=>'0');
			end case;
	end process;

end Behavioral;

