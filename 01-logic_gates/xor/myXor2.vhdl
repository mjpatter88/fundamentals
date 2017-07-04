entity myXor2 is
    port(a: in bit; b: in bit; c: out bit);
end myXor2;

architecture behavorial of myXor2 is

    -- declare components
    component myNand2 is
        port(a: in bit; b: in bit; s: out bit);
    end component;

    component myOr2 is
        port(a: in bit; b: in bit; o: out bit);
    end component;

    component myAnd2 is
        port(a: in bit; b: in bit; s: out bit);
    end component;

    -- signals
    signal a_or_b_out: bit;
    signal a_nand_b_out: bit;

begin

-- initialize components and port map
    myOr2_1: myOr2 port map(a => a, b => b, o => a_or_b_out);

    myNand2_1: myNand2 port map(a => a, b => b, s => a_nand_b_out);

    myAnd2_1: myAnd2 port map(a => a_or_b_out, b => a_nand_b_out, s => c);

end behavorial;
