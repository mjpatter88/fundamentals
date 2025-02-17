library IEEE;
use IEEE.Std_Logic_1164.all;

entity myNot_tb is
end myNot_tb;

architecture behavioral of myNot_tb is

    component myNot
        port(a: in std_logic; s: out std_logic);
    end component;

    -- signals used for testing
    signal s1: std_logic;
    signal o1: std_logic;

begin
    -- component instantiation
    myNot_1: myNot port map(a => s1, s => o1);

    process
    begin
        s1 <= '0';
        wait for 1 ns;
        assert o1 = '1' report "not('0') was not '1'" severity error;

        s1 <= '1';
        wait for 1 ns;
        assert o1 = '0' report "not('1') was not '0'" severity error;

        assert false report "test complete" severity note;
        wait;
    end process;
end behavioral;
