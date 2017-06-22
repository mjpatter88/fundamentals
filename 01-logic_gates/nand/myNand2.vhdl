entity myNand2 is
    port(a : in bit; b : in bit; s : out bit);
end myNand2;

architecture Behavorial of myNand2 is
begin
    s <= a nand b;
end Behavorial;
