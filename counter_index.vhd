library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter_index is
generic(
	ADDR_WIDTH : integer
);
port(
	clk, reset : in std_logic;
	en : in std_logic;
	ld: in std_logic;
	q: out std_logic_vector(ADDR_WIDTH-1 downto 0)
);
end counter_index;

architecture rtl of counter_index is 
signal coutn : std_logic_vector(ADDR_WIDTH-1 downto 0);
begin
process
begin
	if reset ='1' then coutn <= (others => '0');
	end if;
	wait until (clk'event and clk ='1');
	if ld='1' then 
	coutn <= (others => '0'); 
	 elsif en='1' then
              	 coutn <= coutn + 1;
	end if;
end process;
	q<= coutn;
end rtl;