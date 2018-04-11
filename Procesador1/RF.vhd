----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:13:58 04/05/2018 
-- Design Name: 
-- Module Name:    RF - Behavioral 
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

entity RF is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           drw : in  STD_LOGIC_VECTOR (31 downto 0);
           salida1 : out  STD_LOGIC_VECTOR (31 downto 0);
           salida2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  Crd : out  STD_LOGIC_VECTOR (31 downto 0) := (others=>'0');
           reset : in  STD_LOGIC);
			  
			  
end RF;

architecture Behavioral of RF is

type registro is array (0 to 31) of std_logic_vector (31 downto 0);

	signal regis: registro := ( x"00000000",
												x"0000000A",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"0000000A",
												x"00000006",
												x"00000000",
												x"00000000",
												x"0000000C",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000000",
												x"00000003"
												);
	
begin

process (rs1,rs2,rd,drw,reset)
begin
	if (reset = '1')then                 --si reset es 1 no dejo pasar datos
			salida1 <= (others=>'0');		-- a la salida1 le asigno 0
			salida2 <= (others=>'0');		-- a la salida2 le asigno 0
			
			--regis <= (others => x"00000000");
	else
			salida1 <= regis(conv_integer(rs1)); -- le asigno a salida1 el rs1 en entero
			salida2 <= regis(conv_integer(rs2)); -- le asigno a salida2 el rs2 en entero
			if (rd /= "00000") then 				-- si el rd es diferente a 000000
					regis(conv_integer(rd)) <= drw;	-- le asignoo a drw el registro destino rd
			
			end if;
	end if;
end process;
end Behavioral;

