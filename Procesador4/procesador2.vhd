----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:25:21 04/16/2018 
-- Design Name: 
-- Module Name:    procesador2 - Behavioral 
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

entity procesador2 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           salida_procesador : out  STD_LOGIC_VECTOR (31 downto 0));
end procesador2;

architecture Behavioral of procesador2 is

COMPONENT Suma
	PORT(
		sumar1 : IN std_logic_vector(31 downto 0);
		entrada1 : IN std_logic_vector(31 downto 0);          
		salida1 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

COMPONENT nPc
	PORT(
		entrada_nPC : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;
		clk : IN std_logic;          
		salida_nPC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT IM
	PORT(
		address : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		outInstruction : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT UC
	PORT(
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		salida1 : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

COMPONENT RF
	PORT(
		rs1 : IN std_logic_vector(5 downto 0);
		rs2 : IN std_logic_vector(5 downto 0);
		rd : IN std_logic_vector(5 downto 0);
		drw : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		salida1 : OUT std_logic_vector(31 downto 0);
		salida2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

COMPONENT Multiplexor
	PORT(
		rs2_mult : IN std_logic_vector(31 downto 0);
		inm_mult : IN std_logic_vector(31 downto 0);
		senal_i : IN std_logic;          
		salida_mult : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT SEV
	PORT(
		inm_sev : IN std_logic_vector(12 downto 0);          
		salida_sev : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT Alu
	PORT(
		entrada1 : IN std_logic_vector(31 downto 0);
		entrada2 : IN std_logic_vector(31 downto 0);
		entrada_uc : IN std_logic_vector(5 downto 0);
		carry : IN std_logic;          
		salida_alu : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

COMPONENT PSR
	PORT(
		reset : IN std_logic;
		clk : IN std_logic;
		NZVC : IN std_logic_vector(3 downto 0);
		ncwp : IN std_logic_vector(1 downto 0);          
		cwp : OUT std_logic_vector(1 downto 0);
		carry : OUT std_logic
		);
	END COMPONENT;
	
COMPONENT PSR_Modificar
	PORT(
		Crs1 : IN std_logic_vector(31 downto 0);
		sal_Mux : IN std_logic_vector(31 downto 0);
		alu_op : IN std_logic_vector(5 downto 0);
		sal_alu : IN std_logic_vector(31 downto 0);          
		NZVC : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
COMPONENT WM
	PORT(
		rs1 : IN std_logic_vector(4 downto 0);
		rs2 : IN std_logic_vector(4 downto 0);
		rd : IN std_logic_vector(4 downto 0);
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);
		cwp : IN std_logic_vector(1 downto 0);          
		ncwp : OUT std_logic_vector(1 downto 0);
		nrs1 : OUT std_logic_vector(5 downto 0);
		nrs2 : OUT std_logic_vector(5 downto 0);
		nrd : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
signal sumadorTonpc, pcToIM, npcToPc, imToURS,aluResult, rfToAlu, rfToMUX, seuToMUX, muxToAlu: STD_LOGIC_VECTOR (31 downto 0);
signal ucToAlu,wmTors1, wmTors2, wmTord: STD_LOGIC_VECTOR (5 downto 0);
signal PSR_NZVC: STD_LOGIC_VECTOR (3 downto 0);
signal psrToAlu: STD_LOGIC;
signal wmTopsr,psrTowm:STD_LOGIC_VECTOR (1 downto 0);

begin
Inst_Suma: Suma PORT MAP(
		sumar1 => x"00000001",
		entrada1 => pcToIM,
		salida1 => sumadorTonpc
	);

Inst_nPc: nPc PORT MAP(
		entrada_nPC => sumadorTonpc ,
		reset => reset ,
		clk => clk,
		salida_nPC => npcToPc
	);

Inst_PC: nPc PORT MAP(
		entrada_nPC => npcToPc ,
		reset => reset ,
		clk => clk,
		salida_nPC => pcToIM
	);

Inst_IM: IM PORT MAP(
		address => pcToIM,
		reset => reset,
		outInstruction => imToURS 
	);
	
Inst_UC: UC PORT MAP(
		op => imToURS(31 downto 30),
		op3 =>imToURS(24 downto 19) ,
		salida1 => ucToAlu
	);

Inst_RF: RF PORT MAP(
		rs1 => wmTors1,
		rs2 => wmTors2,
		rd => wmTord,
		drw => aluResult,
		salida1 => rfToAlu,
		salida2 => rfToMUX,
		reset => reset
	);
	
Inst_Multiplexor: Multiplexor PORT MAP(
		rs2_mult => rfToMUX,
		inm_mult => seuToMUX,
		salida_mult => muxToAlu,
		senal_i => imToURS(13) 
	);
	
Inst_SEV: SEV PORT MAP(
		inm_sev => imToURS(12 downto 0),
		salida_sev => seuToMUX
	);

Inst_Alu: Alu PORT MAP(
		entrada1 => rfToAlu,
		entrada2 => muxToAlu,
		entrada_uc =>ucToAlu ,
		salida_alu => aluResult,
		carry => psrToAlu
	);
	
Inst_PSR: PSR PORT MAP(
		reset => reset ,
		clk => clk ,
		carry => psrToAlu,
		NZVC => PSR_NZVC,
		cwp => psrTowm,
		ncwp => wmTopsr
	);
	
Inst_PSR_Modificar: PSR_Modificar PORT MAP(
		Crs1 => rfToAlu,
		sal_Mux => muxToAlu ,
		alu_op => ucToAlu,
		sal_alu => aluResult ,
		NZVC => PSR_NZVC
	);

Inst_WM: WM PORT MAP(
		rs1 => imToURS(18 downto 14),
		rs2 => imToURS(4 downto 0),
		rd => imToURS(29 downto 25),
		op => imToURS(31 downto 30),
		op3 => imToURS(24 downto 19),
		cwp => psrTowm,
		ncwp => wmTopsr,
		nrs1 => wmTors1,
		nrs2 => wmTors2,
		nrd => wmTord
	);
	

	
	salida_procesador <= aluResult;

end Behavioral;

