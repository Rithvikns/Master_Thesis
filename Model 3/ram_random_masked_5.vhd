library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ram_5 is
    Port ( clk : in std_logic;
we : in std_logic;
a : in STD_LOGIC_vector(9 downto 0);
di : in std_logic_vector(15 downto 0);
do : out std_logic_vector(15 downto 0)
);
end ram_5;

architecture syn of ram_5 is

    type ram_type is array (0 to 783) of std_logic_vector(15 downto 0);
    signal ram : ram_type := ( 
"0111111000000000","0100011100000000","1000100000000000","0000011000000000","1000110100000000","0001011000000000","0101100000000000","0111011000000000","1011011100000000","0001110100000000","0001011100000000","0010000100000000","1011101000000000","0100000110000001","0111111100000000","1011000000000000","0010111000000000","1010000000000000","1101110100000000","1000001100000000","1101100000000000","0010101000000000","0111111000000000","1011001100000000","0101010100000000","1000110000000000","0100011000000000","1110011100000000","1001001000000000","0111000000000000","0111110000000000","1000000100000000","0011111000000000","0111011000000000","1011110010000001","0001110010000001","0001110110000001","0111010010000001","1000010110000001","0100111010000010","1111101010000001","1111001110000001","0101110000000000","0000000010000001","0100000010000001","0011011110000001","0110010110000010","0000111010000001","0111001010000001","0011010110000001","0110010010000001","1010010110000001","0111110000000000","1011100000000000","0100011100000000","1001001000000000","1001100100000000","0101001100000000","0110011100000000","1111001110000001","0010101110000001","0100010110000001","1101110010000010","0001000110000001","1011010110000010","0001100010000010","0100001110000011","0000000110000011","1001010010000100","0100101010000100","1000101010000100","1100111010000011","1010110110000010","0100010110000010","1111111010000001","0111111000000000","0111010100000000","0111011010000001","1001111010000001","0100110110000010","1101010010000010","1100111010000001","0010000100000000","0110010100000000","1100100100000000","1111001100000000","0001011000000000","1111100010000001","0000010100000000","0010111010000001","0111001110000001","0001001110000001","0111011110000001","0111100110000010","1001101110000010","1101000110000010","0101100010000001","1010011110000010","1110001010000010","0100000010000001","1110001010000001","0000100000000000","1110100100000000","0111100100000000","1100010000000000","1100110100000000","0110101100000000","1001010000000000","0001110100000000","1000111100000000","1001010100000000","0010001100000000","0001101000000000","0101000100000000","0110101100000001","0010011100000000","0101101000000001","1111100100000000","0111110000000000","1110000000000000","0011001000000000","1110110100000000","1110111100000000","0101010100000000","0110111100000000","0100001000000000","0101011000000000","0011110000000000","0111011000000000","0101111100000000","1100010000000000","0101001100000000","0011100000000000","1001011100000000","0101100100000000","0001111000000000","1001111100000001","1110001100000001","0011000000000001","1101110110000001","0010100000000000","0001001100000000","0010111100000000","1001000000000000","0100010000000000","0100110000000000","0000101000000000","0000011100000000","0010000100000001","0001001000000000","1111111100000000","1011010100000001","0010001000000000","0011010000000000","0010111100000000","1111100010000001","1100011000000000","0111101000000000","0001111000000000","1011000100000000","0011001100000000","0110001000000000","1001000100000000","0101110000000000","0100000000000000","1101010100000001","1111000000000001","1000110000000000","0110101100000000","0110110100000000","1110100100000000","0001001010000001","0100110000000000","0100001000000001","0111000000000000","0111001100000000","1000100000000000","0010111100000000","0100100000000000","1010101100000001","1111100000000000","0001011100000000","0000101000000000","1100101100000000","1000111000000000","1001010000000000","1010111000000000","1100101100000000","1001001000000000","1111000100000000","1000011100000000","1100000000000001","0110011100000001","1000011100000001","0101100000000010","0111010000000001","1111101100000000","1110101000000000","1111011000000000","1000101100000000","0111110000000000","1000010100000000","0001000000000000","0001001100000000","1001110100000000","0111100000000000","1101011000000000","0001110000000000","0101010100000000","0000101100000000","0100101000000000","0110111100000000","1001010000000000","0011100100000000","0010010100000000","1101111000000000","0011110100000000","1000100100000000","1110011000000000","0100000100000000","0101111100000000","1011010000000001","0111011000000001","0000111000000000","0000110010000001","0010011000000000","1000111000000000","0010101100000000","1111011100000000","1101011100000001","0110011000000000","0000001000000000","1101101100000000","0101001100000000","0000101000000000","0000111100000000","1010001100000000","1100101000000000","0001001100000000","0000011100000000","1111100100000000","1100110100000000","0110000000000000","0100110100000000","0000011100000000","1100101100000000","0001001000000000","0001110100000000","0010010000000000","1011101000000010","1110110000000001","1111010100000001","0110100100000000","0101101100000000","0100011000000000","0110100100000000","1111110000000000","0100001000000000","0101011000000000","0010111100000000","1100100000000000","1110011100000000","0000001100000000","0011101100000001","0000101100000000","1010101000000000","0000110010000001","0001011010000001","1010100100000000","1000000100000000","1001001100000000","1001010100000000","1110101000000000","1010111000000000","1100010100000000","0000000100000000","0010100000000000","1011110000000010","0101111000000001","1000001100000000","1101110000000001","1011100000000000","0000000100000000","0010011110000001","1100000000000001","0110011100000000","1000000000000000","0010001000000001","0111001100000000","0011001100000001","1110001100000001","1101011100000001","1101101100000001","1111011000000000","0100101000000000","1101011110000001","0100001000000000","1000111100000000","1100100000000000","1101111100000000","1110011100000000","0000110000000000","0011010000000000","1111000100000000","0111001100000000","1101111100000001","1110110000000000","1110110000000000","0000110100000000","1001000110000001","1000101000000000","0000010000000000","0111110100000000","0101011100000000","0010000100000000","1010001000000001","1011001100000000","1000010000000001","1001001000000001","1110101100000001","1101000000000001","1000101100000001","0000110100000000","1000001000000000","0010010100000000","0000001100000001","0010110000000000","1011000010000001","1100100000000000","1011010010000001","1110101100000000","1011100000000000","1000001000000000","1111010100000001","0101110100000010","1101100100000000","1100100100000000","1110011100000000","0101001100000000","0000001000000000","0011000100000001","1001011000000001","0000011100000000","1010111000000000","0101001000000000","0110000100000000","0000101000000001","0110110100000001","1101001100000000","1111011000000000","0110001100000001","1110101100000001","1111110100000000","1011111000000000","1110101100000000","1100101000000000","0100100100000000","0000001100000000","0001100100000000","1011011000000000","0101010010000001","1100011100000000","1100100000000001","1010110100000000","1100000000000000","0110111100000000","0001010110000001","0010111100000000","0111001000000000","1100101000000000","1110111000000000","0010010100000000","0001111100000000","1100100100000000","0101111100000000","1110111000000000","0100010100000000","0000100000000001","0000010000000001","0010000100000001","0101111100000000","0111111100000000","0100101100000000","0011111000000000","0110101000000000","1110011100000000","1001010000000000","0001100010000001","0100101110000001","1111100000000000","1111000100000000","1011000100000000","0000000100000001","1101000000000001","1011010000000000","1001101000000001","0100111100000000","1001111000000000","1101100000000000","0101010000000000","1001110000000000","1000010100000000","1101001100000000","0011011100000000","1010000000000001","1010101100000001","1100111000000001","1111110100000000","1110001100000000","1111000000000001","0110000000000000","1111010100000000","0000011100000000","0100101100000000","1101101000000000","1100101000000000","1000110000000000","0010001000000000","0001011010000001","0100011110000001","1000010000000001","0111101000000000","0100111000000000","1110101100000001","1100011010000001","1001000010000001","1110011110000001","0001101110000001","0011010000000000","1010100100000000","0001101000000000","1000011000000000","1001010000000001","1001101000000000","1111001000000000","1111111100000000","1110100100000000","0100100000000001","0001101100000000","0100010100000000","0110010110000001","1011001000000000","0101101100000000","1100011000000000","0001011100000000","0011100010000001","1011101000000000","1100110100000000","1001011100000000","0011010000000000","0101111100000000","0000001000000000","0001000110000001","0000111010000001","0010101010000001","0010110100000000","1000101010000001","1101000000000000","0011010100000000","0101001100000000","0011011000000001","0100011100000001","0100000100000000","1100101100000001","1110101100000000","1010110100000000","0011011000000000","0001001100000000","0001100100000000","1110000000000000","0101111100000000","1100101100000000","0000111000000000","1001110010000001","0100111110000001","1100011110000001","1111010000000000","0110111000000000","0010101000000000","1001111100000000","1000011100000000","0110000100000000","0010010000000000","0001000000000000","1111000000000000","1011011100000000","0011111010000001","0001001100000000","1110001000000000","1101010000000000","1100011100000000","1011011100000001","0001110100000000","1101010000000000","0010111100000000","0100001000000000","0001111000000000","0111001000000000","0110001100000000","1011000000000000","0100011000000000","0001101000000000","0110110000000000","0110100110000001","1110000000000000","0111110000000000","0000011100000000","1000101000000000","0101000100000000","0111100100000000","1111100100000000","1011111000000000","1000110000000000","1110110000000000","0101110010000001","1101001100000000","1011000100000000","0101000000000000","0110010000000000","0100100100000000","1000010100000000","0011111110000001","1010000110000001","1010010100000000","1110100100000000","1000001100000000","1110100110000001","1101001000000000","0000100100000000","1000000110000001","0111110000000001","0001100100000000","1010111000000000","1100100000000000","0110101000000001","1010010100000000","0011000100000000","0001011100000000","0100100000000000","0101001000000000","1001000000000000","0010001100000000","1010111010000001","1001010010000001","0100100110000001","0111111010000001","0111101110000001","1100010110000001","0101110100000000","0000010000000000","0001001110000001","1101010100000000","1110100100000000","0000000000000000","1000001000000000","0110100000000000","0101010000000000","1011010110000001","0010011110000001","1100011100000000","1010001100000000","1001100100000000","1111101000000000","1100000100000000","1001100000000000","1000001000000000","1000001000000000","0000101000000000","1010000100000000","1010101100000000","0000011110000001","1001011010000001","0011110010000001","1010001100000000","1011010100000000","0011101100000000","0111100000000000","1111011000000000","1010000010000001","1110011000000000","1000100110000001","0110011100000000","1011111000000000","1100011000000000","1100001100000000","0001100000000000","1110001110000001","0000100100000001","1110000000000000","1100111000000000","1101001000000000","0101001000000000","0010110000000000","0000101100000000","0010010000000000","1010010000000000","0100010100000000","0111001000000000","1101110100000000","1101100000000000","0101110000000000","1001000000000000","0100101000000000","1111011000000000","0011111100000000","1100010000000000","0001101000000000","0110111110000001","1001001110000001","0101000000000000","0011110100000000","1011111110000001","0011101110000001","0111110000000000","0111110110000001","0100100000000000","0101100000000000","0000100000000000","1100001100000000","0001010100000000","0010010000000000","0010111000000000","0101111000000000","0110001000000000","1011000100000000","1011001000000000","0000110100000000","1010110000000000","1011111100000000","0110110100000000","0001101000000000","0000010100000000","0000101000000000","1010001000000000","1011001000000000","1111000000000000","1001100100000000","1111110000000000","0111101100000000","0110110000000000","1001101100000000","1011100000000000","1000010000000000","1100100000000000","1100111000000000","1101010100000000","1010111000000000","1111000000000001","0100101000000000","0010100010000001","0001101100000000","1011111100000000","0100111000000000","0111000000000000","0111000100000000","1011001000000000","1011111010000001","1010110100000000","0000110100000000","1100001100000000","1111110000000000","0001101000000000","0001000100000000","1110110100000000","0101001000000000","1101000100000000","1111100110000001","1000110000000000","1101010100000000","0100001000000000","0110111000000000","0111101100000000","1001101100000000","0100101100000000","0001001000000001","0100100000000001","0110110100000000","0001001100000000","1000110100000000","0111100000000000","0011101100000000","0001010100000000","0001000100000000","0011101000000000","1001101100000000","1010101000000000","1110111000000000","1000110100000000","0001111000000000","1001011000000000","0000101000000000","1010011100000001","0000100100000000","0010000010000001","0100100000000000","0010000100000000","0010000000000000","0001101010000001","0110011010000001","1010000100000000","1010111100000000","0000111000000000","0101101100000000","1101101100000001","1111000000000010","1110111100000010","0000101000000011","1010111100000011","1001110000000010","0010001100000010","0101011100000010","1011001100000010","0001111100000011","1101010000000011","0010101100000011","1111011100000100","0010010100000100","0011101100000100","0011101100000011","1010000100000010","0010101000000001","1101100000000000","1010101100000001","0010011000000001","1100010000000001","0110110010000001","1110101100000000","1010100100000000","1101101100000000","1010101000000000","0101110100000000","1011011000000000","1110001100000000","1000000000000000","0011010000000010","1101101100000010","0100111100000011","1010101100000011","0010000000000011","1111101100000010","0001001000000010","1101110000000010","0001011000000010","1001101100000010","1000101100000010","0100110000000010","0110111100000010","1000001000000000","1010100100000000","0000011000000000","0000101100000000","0011000100000000","0100111000000000","0100101100000000","0101001100000000","1000111100000000","0001100000000000","0011111100000000","1100110000000000","0101010000000000","0001010100000000","0000111000000000","0110110000000000","1111110000000000","1010010000000001","1011010000000001","0111111000000001","0011100100000001","1010011100000001","1000010100000001","1000110000000001","1001001100000001","0110100100000010","0111001100000001","1010111000000000","0010010100000000","0001000100000000","0110101000000000","1011000000000000","0011011100000001","0111111100000000","1111100100000000","1100100000000000","0110010100000000");
begin
process (clk)
begin
if (clk'event and clk = '1') then
if (we = '1') then
RAM(conv_integer(a)) <= di;
end if;
end if;
end process;
do <= RAM(conv_integer(a));
end syn;
