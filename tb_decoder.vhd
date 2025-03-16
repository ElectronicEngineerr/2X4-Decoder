
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_decoder is

end tb_decoder;

architecture Behavioral of tb_decoder is

component decoder is
	port(
			data_in  : in  std_logic_vector(1 downto 0);
			data_out : out std_logic_vector(3 downto 0)
	);
end component;

signal data_in  : std_logic_vector(1 downto 0) := (others => '0');
signal data_out : std_logic_vector(3 downto 0) := (others => '0'); 

begin

	DUT : decoder
		port map(
			data_in => data_in,
			data_out => data_out
		);
		
	test : process
		begin
		
				wait for 20 ns;
				data_in <= "00";
				wait for 10 ns;
				data_in <= "01";
				wait for 10 ns;
				data_in <= "10";
				wait for 10 ns;
				data_in <= "11";
				wait for 10 ns;			
	end process;


end Behavioral;
