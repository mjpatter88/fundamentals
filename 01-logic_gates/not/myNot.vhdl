entity myNot is
    port(i: in bit; o: out bit);
end myNot;

architecture behavioral of myNot is

    component myNand2
        port(a: in bit; b: in bit; s: out bit);
    end component;

    signal one: bit;

begin
    one <= '1';

    myNand2_1: myNand2 port map(a => i, b => '1', s => o);

end behavioral;
