
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PSR is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           NZVC : in  STD_LOGIC_VECTOR (3 downto 0);
			  ncwp: in STD_LOGIC_VECTOR (1 downto 0):="00";--Permite el cambio de ventana
			  cwp: out STD_LOGIC_VECTOR (1 downto 0);
           carry : out  STD_LOGIC);
end PSR;

architecture Behavioral of PSR is

begin

	process(reset,clk,NZVC,ncwp)
	begin
		if reset = '1' then
			carry <= '0';
			cwp<="00";
		else
			if rising_edge(clk) then
				carry <= NZVC(0);
				cwp <= ncwp;
			end if;
		end if;
	end process;
end Behavioral;

