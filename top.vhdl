library ieee;
use ieee.std_logic_1164.all;

entity top is
    port (
        clk   : in std_logic;
        reset : in std_logic;
        seg   : out std_logic_vector(6 downto 0)
    );
end entity;

architecture structural of top is
    signal count : std_logic_vector(3 downto 0);
begin
    U1: entity work.counter
        port map(clk => clk, reset => reset, count => count);

    U2: entity work.seven_seg_decoder
        port map(bin => count, seg => seg);
end architecture;
