
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PSR_Modificar is
    Port ( Crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           sal_Mux : in  STD_LOGIC_VECTOR (31 downto 0);
           alu_op : in  STD_LOGIC_VECTOR (5 downto 0);
           sal_alu : in  STD_LOGIC_VECTOR (31 downto 0);
           NZVC : out  STD_LOGIC_VECTOR (3 downto 0));
end PSR_Modificar;

architecture Behavioral of PSR_Modificar is

begin
	process(Crs1,sal_Mux,alu_op,sal_alu)
	begin
	
	--ANDcc , ANDNcc, ORcc , ORNcc , XORcc , XNORcc
			if (alu_op="010001" or alu_op="010101" or alu_op="010010" or alu_op="010110" or 
				 alu_op="010011" or alu_op="010111") then
				 
				NZVC(3) <= sal_alu(31);
				if sal_alu = x"00000000" then
					NZVC(2) <= '1';
				else
					NZVC(2) <= '0';
				end if;
					NZVC(1) <= '0';
					NZVC(0) <= '0';
			else
	
		--Para ADDcc y ADDxcc
		if alu_op = "010001" or alu_op ="011000" then
			NZVC(3) <= sal_alu(31);
			if sal_alu = x"00000000" then
				NZVC(2) <= '1';
			else
				NZVC(2) <= '0';
			end if;
			
			NZVC(1) <= (Crs1(31) and sal_Mux(31) and (not sal_alu(31))) or ((not Crs1(31)) and (not sal_Mux(31)) and sal_alu(31));
			NZVC(0) <= (Crs1(31) and sal_Mux(31)) or ((not sal_alu(31)) and (Crs1(31) or sal_Mux(31)));							 
		else
		--Para SUBcc y SUBxcc
			if alu_op = "010100" or alu_op ="011100" then	
				NZVC(3) <= sal_alu(31);
				if sal_alu = x"00000000" then
					NZVC(2) <= '1';
				else
					NZVC(2) <= '0';
				end if;
				
				NZVC(1)<= ((Crs1(31) and (not sal_Mux(31)) and (not sal_alu(31))) or ((not Crs1(31)) and sal_Mux(31) and sal_alu(31)));
										 
				NZVC(0) <= ((not Crs1(31)) and sal_Mux(31)) or (sal_alu(31) and ((not Crs1(31)) or sal_Mux(31)));			
			end if;
		end if;
	end if;
	end process;
end Behavioral;

