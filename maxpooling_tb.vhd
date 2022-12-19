
  library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.mylib.all;

entity maxpooling_tb is
generic(
	DATA_WIDTH: integer := 16;
	ADDR_WIDTH: integer :=16
);
end maxpooling_tb;

architecture rtl of maxpooling_tb is
signal clk: std_logic :='0';
signal reset: std_logic;
signal	start:  std_logic;
signal	rowA,colA:   std_logic_vector(ADDR_WIDTH/2-1 downto 0);
signal addr_WA : std_logic_vector(ADDR_WIDTH -1 downto 0):= "0000000000000000";
signal	data_inA: std_logic_vector(DATA_WIDTH-1 downto 0):= "0000000000000001";
signal	data_out:  std_logic_vector(DATA_WIDTH-1 downto 0):= "0000000000000000";
signal	done : std_logic;
signal i:std_logic_vector(DATA_WIDTH-1 downto 0);
begin
UUT: maxpooling
generic map(
	DATA_WIDTH,
	ADDR_WIDTH
)
port map(
	clk,reset,
	start,
	rowA,colA ,
	addr_WA,
	data_inA,
	data_out,
	done 
);
clk<= not clk after 10ns;
--stimulus
Stimulus: process
begin	
	reset <='0';
	start<='1';
	rowA<="00100000";
	colA<="00100000";
	wait for 60ns;	
     	--for i in 0 to (conv_integer(rowA*colA)-2) loop
--0
	
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--lan 2

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--lan 3

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--lan4

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--lan5

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--lan 6

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--lan 7

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--lan 8

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--lan 9

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--lan 10

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;

--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--9
	data_inA<="0000000000001010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--10
	data_inA<="0000000000001011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--11
	data_inA<="0000000000001100";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--12
	data_inA<="0000000000001101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--13
	data_inA<="0000000000001110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--14
	data_inA<="0000000000001111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--15
	data_inA<="0000000000010000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--1
	data_inA<="0000000000000001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--2
	data_inA<="0000000000000010";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--3
	data_inA<="0000000000000011";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--4
	data_inA<="0000000000000101";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--5
	data_inA<="0000000000000110";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--6
	data_inA<="0000000000000111";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--7
	data_inA<="0000000000001000";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;
--8
	data_inA<="0000000000001001";
	addr_WA <=addr_WA +"0000000000000001";
	wait for 20ns;


end process;
end;