entity myOr2 is
    port(a: in bit; b: in bit; o: out bit);
end myOr2;

architecture behavioral of myOr2 is
-- component declaration
    component myNot
        port(i: in bit; o: out bit);
    end component;

    component myNand2
        port(a: in bit; b: in bit; s: out bit);
    end component;

-- signal declaration
    signal not1_out: bit;
    signal not2_out: bit;

begin
-- component instantiation and port mappping
    myNot_1: myNot port map(i => a, o => not1_out);
    myNot_2: myNot port map(i => b, o => not2_out);
    myNand2_1: myNand2 port map(a => not1_out, b => not2_out, s => o);
end behavioral;
