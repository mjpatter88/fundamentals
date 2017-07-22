library IEEE;
use IEEE.Std_Logic_1164.all;

entity myNot16_tb is
end myNot16_tb;

architecture behavioral of myNot16_tb is

    component myNot16
        port(a: in std_logic_vector(15 downto 0); s: out std_logic_vector(15 downto 0));
    end component;

    -- signals used for testing
    signal s1: std_logic_vector(15 downto 0);
    signal o1: std_logic_vector(15 downto 0);

begin
    -- component instantiation
    myNot16_1: myNot16 port map(a => s1, s => o1);

    process
    begin
        s1 <= "0000000000000000";
        wait for 1 ns;
        assert o1 = "1111111111111111" report "not('0000000000000000') was not '1111111111111111'" severity error;

        s1 <= "1111111111111111";
        wait for 1 ns;
        assert o1 = "0000000000000000" report "not('1111111111111111') was not '0000000000000000'" severity error;

        s1 <= "1010101010101010";
        wait for 1 ns;
        assert o1 = "0101010101010101" report "not('1010101010101010') was not '0101010101010101'" severity error;

        assert false report "test complete" severity note;
        wait;
    end process;
end behavioral;
