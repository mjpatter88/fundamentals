entity myMux2_tb is
end myMux2_tb;

architecture behavioral of myMux2_tb is

    component myMux2
        port(a: in bit; b: in bit; sel: in bit; s: out bit);
    end component;

    -- signals used for testing
    signal s1: bit;
    signal s2: bit;
    signal sel: bit;
    signal o1: bit;

begin
    -- component instantiation
    myMux2_1: myMux2 port map(a => s1, b => s2, sel => sel, s => o1);

    process
    begin
        s1 <= '0';
        s2 <= '0';
        sel <= '0';
        wait for 1 ns;
        assert o1 = '0' report "0,0,0 was not 0" severity error;

        s1 <= '0';
        s2 <= '1';
        sel <= '0';
        wait for 1 ns;
        assert o1 = '0' report "0,1,0 was not 0" severity error;

        s1 <= '1';
        s2 <= '0';
        sel <= '0';
        wait for 1 ns;
        assert o1 = '1' report "1,0,0 was not 1" severity error;

        s1 <= '1';
        s2 <= '1';
        sel <= '0';
        wait for 1 ns;
        assert o1 = '1' report "1,1,0 was not 1" severity error;

        s1 <= '0';
        s2 <= '0';
        sel <= '1';
        wait for 1 ns;
        assert o1 = '0' report "0,0,1 was not 0" severity error;

        s1 <= '0';
        s2 <= '1';
        sel <= '1';
        wait for 1 ns;
        assert o1 = '1' report "0,1,1 was not 1" severity error;

        s1 <= '1';
        s2 <= '0';
        sel <= '1';
        wait for 1 ns;
        assert o1 = '0' report "1,0,1 was not 0" severity error;

        s1 <= '1';
        s2 <= '1';
        sel <= '1';
        wait for 1 ns;
        assert o1 = '1' report "1,1,1 was not 1" severity error;

        assert false report "test complete" severity note;
        wait;
    end process;
end behavioral;
