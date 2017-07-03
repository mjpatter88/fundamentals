entity myOr2_tb is
end myOr2_tb;

architecture behavorial of myOr2_tb is
-- component declarations
    component myOr2
        port(a: in bit; b: in bit; o: out bit);
    end component;

-- signal declations
    signal s1: bit;
    signal s2: bit;
    signal o1: bit;


begin
-- component instantiation and port mapping

    myOr2_a: myOr2 port map(a => s1, b => s2, o => o1);

    process
    begin
        s1 <= '0';
        s2 <= '0';
        wait for 1 ns;
        assert o1 = '0' report "0 or 0 should equal 0" severity error;

        s1 <= '1';
        s2 <= '0';
        wait for 1 ns;
        assert o1 = '1' report "0 or 1 should equal 1" severity error;

        s1 <= '0';
        s2 <= '1';
        wait for 1 ns;
        assert o1 = '1' report "0 or 1 should equal 1" severity error;

        s1 <= '1';
        s2 <= '1';
        wait for 1 ns;
        assert o1 = '1' report "1 or 1 should equal 1" severity error;

        assert false report "Testing complete" severity note;
        wait;
    end process;
end behavorial;

