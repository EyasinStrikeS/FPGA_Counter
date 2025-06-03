library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity;

architecture sim of tb is
    signal clk   : std_logic := '0';
    signal reset : std_logic := '1';
    signal seg   : std_logic_vector(6 downto 0);
begin
    uut: entity work.top
        port map(clk => clk, reset => reset, seg => seg);

    clk_process : process
    begin
        while now < 500 ns loop
            clk <= not clk;
            wait for 10 ns;
        end loop;
        wait;
    end process;

    stim_proc: process
    begin
        wait for 20 ns;
        reset <= '0';
    end process;
end architecture;
