-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity DNN_wlo_218_std_o_V_rom is 
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


architecture rtl of DNN_wlo_218_std_o_V_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1011010010010", 1 => "1011011001101", 2 => "1011011100101", 
    3 => "1011010110111", 4 => "1011010011011", 5 => "1011011000010", 
    6 => "1011011100001", 7 => "1011011000111", 8 => "1011010101010", 
    9 => "1011010111101", 10 => "1011011011000", 11 => "1011011001100", 
    12 => "1011010110011", 13 => "1011010111100", 14 => "1011011010100", 
    15 => "1011011001011", 16 => "1011010110001", 17 => "1011010111100", 
    18 => "1011011010111", 19 => "1011011001001", 20 => "1011010100110", 
    21 => "1011010110110", 22 => "1011011011110", 23 => "1011011001111", 
    24 => "1011010011111", 25 => "1011010101010", 26 => "1011011100000", 
    27 => "1011010100010", 28 => "1011010011100", 29 => "1011011011100", 
    30 => "1011011101101", 31 => "1011010101111", 32 => "1011010001111", 
    33 => "1011011000011", 34 => "1011011101010", 35 => "1011010111111", 
    36 => "1011010001010", 37 => "1011010100000", 38 => "1011011010101", 
    39 => "1011011010000", 40 => "1011010011001", 41 => "1011010001000", 
    42 => "1011010111001", 43 => "1011011011110", 44 => "1011010111001", 
    45 => "1011010000101", 46 => "1011010011110", 47 => "1011011011111", 
    48 => "1011011011001", 49 => "1011010010100", 50 => "1011010001000", 
    51 => "1011011001011", 52 => "1011011100010", 53 => "1011010101011", 
    54 => "1011010010101", 55 => "1011011000111", 56 => "1011011100100", 
    57 => "1011011000000", 58 => "1011010100011", 59 => "1011010111111", 
    60 => "1011011011100", 61 => "1011011001011", 62 => "1011010110000", 
    63 => "1011010111100", 64 => "1011011010101", 65 => "1011011001100", 
    66 => "1011010110100", 67 => "1011010111100", 68 => "1011011010101", 
    69 => "1011011001001", 70 => "1011010101100", 71 => "1011010111001", 
    72 => "1011011011011", 73 => "1011011001011", 74 => "1011010100001", 
    75 => "1011010110000", 76 => "1011011100001", 77 => "1011011010111", 
    78 => "1011010100100", 79 => "1011011100010", 80 => "1011011101000", 
    81 => "1011010101000", 82 => "1011010010101", 83 => "1011011010001", 
    84 => "1011011101110", 85 => "1011010110111", 86 => "1011010001010", 
    87 => "1011010110001", 88 => "1011011100001", 89 => "1011011000111", 
    90 => "1011010001111", 91 => "1011010010010", 92 => "1011011000111", 
    93 => "1011011011000", 94 => "1011010101000", 95 => "1011010000100", 
    96 => "1011010101011", 97 => "1011011100001", 98 => "1011011001010", 
    99 => "1011010001011", 100 => "1011010010010", 101 => "1011011010111", 
    102 => "1011011100011", 103 => "1011010011111" );


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

entity DNN_wlo_218_std_o_V is
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

architecture arch of DNN_wlo_218_std_o_V is
    component DNN_wlo_218_std_o_V_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    DNN_wlo_218_std_o_V_rom_U :  component DNN_wlo_218_std_o_V_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


