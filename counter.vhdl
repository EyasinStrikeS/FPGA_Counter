library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port (
        clk   : in std_logic;
        reset : in std_logic;
        count : out std_logic_vector(3 downto 0)
    );
end entity;

architecture behavioral of counter is
    signal tmp : unsigned(3 downto 0) := (others => '0');
begin
    process(clk, reset)
    begin
        if reset = '1' then
            tmp <= (others => '0');
        elsif rising_edge(clk) then
            tmp <= tmp + 1;
        end if;
    end process;

    count <= std_logic_vector(tmp);
end architecture;
