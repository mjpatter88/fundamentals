entity myNot2_tb is
end myNot2_tb;

architecture behavioral of myNot2_tb is

    component myNot2
        port(i: in bit; o: out bit);
    end component;

    -- signals used for testing
    signal s1: bit;
    signal o1: bit;

begin
    -- component instantiation
    myNot2_1: myNot2 port map(i => s1, o => o1);

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
