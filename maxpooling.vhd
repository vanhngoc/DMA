
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.mylib.all;

ENTITY maxpooling is
 GENERIC(
	DATA_WIDTH: integer := 16;
	ADDR_WIDTH: integer :=16
 );
 PORT(
	clk,reset: in std_logic;
	start:in std_logic;
	rowA,colA : in std_logic_vector(ADDR_WIDTH/2-1 downto 0);
	addr_WA: in  std_logic_vector(ADDR_WIDTH -1 downto 0);
	data_inA: in std_logic_vector(DATA_WIDTH-1 downto 0);
	data_out: out std_logic_vector(DATA_WIDTH-1 downto 0);
	done :out std_logic
 );

END maxpooling;

ARCHITECTURE rtl of maxpooling is

signal we_a,we_c: std_logic;
signal 	re_a,re_c: std_logic;
signal ld_m,ld_n,ld_i,ld_j,ld_index: std_logic;
signal en_m,en_n,en_i,en_j,en_index: std_logic;
signal	za,zm,zn,zi,zj: std_logic;
signal sel_0,sel_max,sel: std_logic;
signal data_inC:std_logic_vector(DATA_WIDTH-1 downto 0);
signal data_outA:std_logic_vector(DATA_WIDTH-1 downto 0);

 BEGIN

 CTRL_UNIT: controller

 PORT map(clk,reset,
	start,
	we_a,we_c,
	re_a,re_c,
	ld_m,ld_n,ld_i,ld_j,ld_index,
	en_m,en_n,en_i,en_j,en_index,
	za,zm,zn,zi,zj,
	sel_0,sel,
	sel_max,
	done
 );

 Datapath_Unit: datapath

 GENERIC map(
	DATA_WIDTH,
	ADDR_WIDTH
)
 PORT map (
	clk,reset,
	we_a,we_c,
	re_a,re_c,
	rowA,colA,
	addr_WA,
	data_inA,
	data_out,
	sel_0,sel,
	ld_m,ld_n,ld_i,ld_j,ld_index,
	za,zm,zn,zi,zj, sel_max,
	en_m,en_n,en_i,en_j,en_index
 );
 END rtl;
