
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decoder is
	port(
			data_in  : in  std_logic_vector(1 downto 0);
			data_out : out std_logic_vector(3 downto 0)
	);
end decoder;

architecture Behavioral of decoder is


begin

		process(data_in)
			begin
					case data_in is
					
							when "00" =>
								data_out <= "0001";
							when "01" => 
								data_out <= "0010";
							when "10" => 
								data_out <= "0100";
							when "11" => 
								data_out <= "1000";
							when others => 
								data_out <= "0000";
					end case;
		end process;

end Behavioral;
