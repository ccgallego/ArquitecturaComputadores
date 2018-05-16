library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity WM is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           cwp : in  STD_LOGIC_VECTOR (1 downto 0);
           ncwp : out  STD_LOGIC_VECTOR (1 downto 0):="00";
           nrs1 : out  STD_LOGIC_VECTOR (5 downto 0);
           nrs2 : out  STD_LOGIC_VECTOR (5 downto 0);
           nrd : out  STD_LOGIC_VECTOR (5 downto 0));
end WM;

architecture Behavioral of WM is
signal rs1_int,rs2_int,rd_int: integer range 0 to 39:=0;

begin
process(rs1,rs2,rd,op,op3,cwp)
	begin
		if (op="10") then    
	
			if(op3="111100") then --SAVE
				ncwp <= conv_std_logic_vector(conv_integer(cwp)-1,2);
			
			elsif(op3="111101") then    --RESTORE
				ncwp <= conv_std_logic_vector(conv_integer(cwp)+1,2);
			else
				ncwp<=cwp;
			end if;
		else
			ncwp<=cwp;
		end if;
	
	--RS1
	
		if(rs1>="11000" and rs1<="11111") then--Si es un registro de entrada (r[24] - r[31])
					rs1_int<= conv_integer(rs1)-(conv_integer(cwp)*16);

			elsif(rs1>="10000" and rs1<="10111") then--Si es un registro de local (r[16] - r[23])
					rs1_int <= conv_integer(rs1)+(conv_integer(cwp)*16);

			elsif(rs1>="01000" and rs1<="01111") then--Si es un registro de salida (r[8] - r[15])
					rs1_int <= conv_integer(rs1)+ (conv_integer(cwp)*16);

			elsif(rs1>="00000" and rs1<="00111") then--Si es un registro global (r[0] - r[7])
					rs1_int <= conv_integer(rs1);

			end if;
		
		--RS2
		
		if(rs2>="11000" and rs2<="11111") then--Si es un registro de entrada (r[24] - r[31])
				rs2_int <= conv_integer(rs2)-(conv_integer(cwp)*16);

		elsif(rs2>="10000" and rs2<="10111") then--Si es un registro de local (r[16] - r[23])
				rs2_int <= conv_integer(rs2)+(conv_integer(cwp)*16);

		elsif(rs2>="01000" and rs2<="01111") then--Si es un registro de salida (r[8] - r[15])
				rs2_int <= conv_integer(rs2)+ (conv_integer(cwp)*16);

		elsif(rs2>="00000" and rs2<="00111") then--Si es un registro global (r[0] - r[7])
				rs2_int <= conv_integer(rs2);

		end if;
		
		--RD
		
		if(rd>="11000" and rd<="11111") then--registro de entrada (r[24] - r[31])
				rd_int<= conv_integer(rd)-(conv_integer(cwp)*16);

		elsif(rd>="10000" and rd<="10111") then--registro de local (r[16] - r[23])
				rd_int<= conv_integer(rd)+(conv_integer(cwp)*16);

		elsif(rd>="01000" and rd<="01111") then--registro de salida (r[8] - r[15])
				rd_int <= conv_integer(rd)+(conv_integer(cwp)*16);

		elsif(rd>="00000" and rd<="00111") then--registro global (r[0] - r[7])
				rd_int <= conv_integer(rd);

		end if;
		
end process;

nrs1 <= conv_std_logic_vector(rs1_int,6);
nrs2 <= conv_std_logic_vector(rs2_int,6);
nrd <= conv_std_logic_vector(rd_int,6);


end Behavioral;

