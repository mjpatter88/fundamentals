entity myDemux2_tb is
end myDemux2_tb;

architecture behavioral of myDemux2_tb is

    component myDemux2
        port(a: in bit; sel: in bit; s: out bit; s2: out bit);
    end component;

    -- signals used for testing
    signal s1: bit;
    signal sel: bit;
    signal o1: bit;
    signal o2: bit;

begin
    -- component instantiation
    myDemux2_1: myDemux2 port map(a => s1, sel => sel, s => o1, s2 => o2);

    process
    begin
        s1 <= '0';
        sel <= '0';
        wait for 1 ns;
        assert o1 = '0' report "o1 of 0,0 was not 0" severity error;
        assert o2 = '0' report "o2 of 0,0 was not 0" severity error;

        s1 <= '0';
        sel <= '1';
        wait for 1 ns;
        assert o1 = '0' report "o1 of 0,0 was not 0" severity error;
        assert o2 = '0' report "o2 of 0,0 was not 0" severity error;

        s1 <= '1';
        sel <= '0';
        wait for 1 ns;
        assert o1 = '1' report "o1 of 1,0 was not 1" severity error;
        assert o2 = '0' report "o2 of 1,0 was not 0" severity error;

        s1 <= '1';
        sel <= '1';
        wait for 1 ns;
        assert o1 = '0' report "o1 of 1,1 was not 0" severity error;
        assert o2 = '1' report "o2 of 1,1 was not 1" severity error;

        assert false report "test complete" severity note;
        wait;
    end process;
end behavioral;
