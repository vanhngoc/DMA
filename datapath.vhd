library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.mylib.all;

entity datapath is
generic(
	DATA_WIDTH: integer := 16;
	ADDR_WIDTH: integer :=16
);
port(
	clk,reset: in std_logic;
	we_a,we_c: in std_logic;-- tin hieu cho phep viet vao bo nho tung ma tran
	re_a,re_c: in std_logic;
	rowA,colA:in std_logic_vector (ADDR_WIDTH/2-1 downto 0);
	addr_WA: in  std_logic_vector(ADDR_WIDTH -1 downto 0);
	data_inA: in std_logic_vector (DATA_WIDTH-1 downto 0);
	data_outC: out std_logic_vector (DATA_WIDTH-1 downto 0);
	sel_0,sel:in std_logic;
	ld_m,ld_n,ld_i,ld_j,ld_index: in std_logic;
	za,zm,zn,zi,zj, sel_max: out std_logic;
	en_m,en_n,en_i,en_j,en_index:in std_logic

);
end datapath;

architecture rtl of datapath is
signal n,j,com_n,com_j,index:std_logic_vector (ADDR_WIDTH-1 downto 0);
signal m,i,com_m,com_i:std_logic_vector (ADDR_WIDTH/2-1 downto 0);
signal out_a,out_k:std_logic_vector (DATA_WIDTH-1 downto 0);
signal out_c:std_logic_vector (DATA_WIDTH-1 downto 0):="0000000000000000";
signal adder1,dtin_0,dtin_max,dtin: std_logic_vector(DATA_WIDTH-1 downto 0);
signal data_in0: std_logic_vector(DATA_WIDTH-1 downto 0):= "0000000000000000";
signal	addr_A: std_logic_vector (DATA_WIDTH-1 downto 0);
signal	addr_C: std_logic_vector (DATA_WIDTH-1 downto 0);
signal sellect_max:std_logic;
begin 
--MUX

za <='0' when addr_WA<(rowA*colA)-"0000000000000001" else '1';
--zk <='0' when addr_WK<(rowK*rowK)-"0000000000000001" else '1';

com_m <= rowA - "00000010" ;
com_n <= (colA - "00000010")*"00000001";
com_i <= "00000001";
com_j <=  "00000001"*"00000001";

--adder1 
--adder1<= out_c + out_a * out_k;

--adder2 
addr_C<= index;

--adder3 
addr_A<= rowA * ( m+i) +n + j;
sel_max<='1' when out_c<out_a else '0';
sellect_max<='1'when out_c<out_a else '0';

--mux chon reset c=0
MUX_reset: mux
generic map(DATA_WIDTH)
PORT MAP(
		data_in0,
		out_c,
		sel_0,
		dtin_0);
MUX_max: mux
generic map(DATA_WIDTH)
PORT MAP(
		out_a,
		out_c,
		sellect_max,
		dtin_max);
--matran a
MUX_sel: mux
generic map(DATA_WIDTH)
PORT MAP(
		dtin_max,
		dtin_0,
		sel,
		dtin);
mattrix_A: dpmem
generic map(DATA_WIDTH)
port map(clk,
	we_a,re_a ,addr_WA,
	data_inA,
	addr_A,
	out_a);
--matran ket qua
mattrix_C: dpmem
generic map(DATA_WIDTH)
port map(clk,
	we_c,re_c ,addr_C,
	dtin,
	addr_C,
	out_c);


-- bien dem m
counter_M: counter2
generic map(DATA_WIDTH/2)
port map(clk, reset,
	en_m,
	ld_m,com_m,zm,
	m);

-- bien dem n
counter_N: counter2
generic map(DATA_WIDTH)
port map(clk, reset,
	en_n,
	ld_n,com_n,zn,
	n);

-- bien dem i
counter_I: counter
generic map(DATA_WIDTH/2)
port map(clk, reset,
	en_i,
	ld_i,com_i,zi,
	i);

-- bien dem j
counter_J: counter
generic map(DATA_WIDTH)
port map(clk, reset,
	en_j,
	ld_j,com_j,zj,
	j);

--bien dem index
counter_index1: counter_index
generic map(DATA_WIDTH)
port map(clk, reset,
	en_index,
	ld_index,
	index);
end;