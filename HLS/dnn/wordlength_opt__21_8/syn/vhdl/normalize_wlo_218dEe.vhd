-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity normalize_wlo_218dEe_rom is 
    generic(
             DWIDTH     : integer := 13; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 104
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of normalize_wlo_218dEe_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1011010010111", 1 => "1011011010000", 2 => "1011011101001", 
    3 => "1011010111011", 4 => "1011010011100", 5 => "1011011000100", 
    6 => "1011011100100", 7 => "1011011001011", 8 => "1011010101011", 
    9 => "1011011000010", 10 => "1011011011100", 11 => "1011011001111", 
    12 => "1011010110100", 13 => "1011010111101", 14 => "1011011010110", 
    15 => "1011011001101", 16 => "1011010110010", 17 => "1011011000001", 
    18 => "1011011011100", 19 => "1011011001100", 20 => "1011010101000", 
    21 => "1011010111010", 22 => "1011011100000", 23 => "1011011010010", 
    24 => "1011010100010", 25 => "1011010101110", 26 => "1011011100100", 
    27 => "1011010100100", 28 => "1011010011111", 29 => "1011011011110", 
    30 => "1011011101111", 31 => "1011010110011", 32 => "1011010010001", 
    33 => "1011011000101", 34 => "1011011101110", 35 => "1011011000000", 
    36 => "1011010001100", 37 => "1011010100011", 38 => "1011011011000", 
    39 => "1011011010011", 40 => "1011010011011", 41 => "1011010001010", 
    42 => "1011010111100", 43 => "1011011100000", 44 => "1011010111101", 
    45 => "1011010000110", 46 => "1011010100010", 47 => "1011011100001", 
    48 => "1011011011011", 49 => "1011010010101", 50 => "1011010001001", 
    51 => "1011011001110", 52 => "1011011100110", 53 => "1011010101111", 
    54 => "1011010010111", 55 => "1011011001000", 56 => "1011011100111", 
    57 => "1011011000010", 58 => "1011010100111", 59 => "1011011000000", 
    60 => "1011011100000", 61 => "1011011001110", 62 => "1011010110100", 
    63 => "1011011000001", 64 => "1011011011010", 65 => "1011011010000", 
    66 => "1011010110110", 67 => "1011011000001", 68 => "1011011011010", 
    69 => "1011011001011", 70 => "1011010101110", 71 => "1011010111011", 
    72 => "1011011011111", 73 => "1011011001011", 74 => "1011010100101", 
    75 => "1011010110011", 76 => "1011011100011", 77 => "1011011010111", 
    78 => "1011010100110", 79 => "1011011100011", 80 => "1011011101000", 
    81 => "1011010101101", 82 => "1011010011001", 83 => "1011011010101", 
    84 => "1011011101111", 85 => "1011010111100", 86 => "1011010001011", 
    87 => "1011010110101", 88 => "1011011100011", 89 => "1011011000111", 
    90 => "1011010001111", 91 => "1011010010011", 92 => "1011011001001", 
    93 => "1011011011000", 94 => "1011010101101", 95 => "1011010001000", 
    96 => "1011010101110", 97 => "1011011100010", 98 => "1011011001111", 
    99 => "1011010001100", 100 => "1011010010110", 101 => "1011011011001", 
    102 => "1011011100100", 103 => "1011010100000" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity normalize_wlo_218dEe is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of normalize_wlo_218dEe is
    component normalize_wlo_218dEe_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    normalize_wlo_218dEe_rom_U :  component normalize_wlo_218dEe_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


