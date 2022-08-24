-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity normalize_wlo_166dEe_rom is 
    generic(
             DWIDTH     : integer := 10; 
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


architecture rtl of normalize_wlo_166dEe_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1011010010", 1 => "1011011010", 2 => "1011011101", 3 => "1011010111", 
    4 => "1011010011", 5 => "1011011000", 6 => "1011011100", 7 => "1011011001", 
    8 => "1011010101", 9 => "1011011000", 10 => "1011011011", 11 => "1011011001", 
    12 => "1011010110", 13 => "1011010111", 14 => "1011011010", 15 => "1011011001", 
    16 => "1011010110", 17 => "1011011000", 18 => "1011011011", 19 => "1011011001", 
    20 => "1011010101", 21 => "1011010111", 22 => "1011011100", 23 => "1011011010", 
    24 => "1011010100", 25 => "1011010101", 26 => "1011011100", 27 => "1011010100", 
    28 => "1011010011", 29 => "1011011011", 30 => "1011011101", 31 => "1011010110", 
    32 => "1011010010", 33 => "1011011000", 34 => "1011011101", 35 => "1011011000", 
    36 => "1011010001", 37 => "1011010100", 38 => "1011011011", 39 => "1011011010", 
    40 => "1011010011", 41 => "1011010001", 42 => "1011010111", 43 => "1011011100", 
    44 => "1011010111", 45 => "1011010000", 46 => "1011010100", 47 => "1011011100", 
    48 => "1011011011", 49 => "1011010010", 50 => "1011010001", 51 => "1011011001", 
    52 => "1011011100", 53 => "1011010101", 54 => "1011010010", 55 => "1011011001", 
    56 => "1011011100", 57 => "1011011000", 58 => "1011010100", 59 => "1011011000", 
    60 => "1011011100", 61 => "1011011001", 62 => "1011010110", 63 => "1011011000", 
    64 => "1011011011", 65 => "1011011010", 66 => "1011010110", 67 => "1011011000", 
    68 => "1011011011", 69 => "1011011001", 70 => "1011010101", 71 => "1011010111", 
    72 => "1011011011", 73 => "1011011001", 74 => "1011010100", 75 => "1011010110", 
    76 => "1011011100", 77 => "1011011010", 78 => "1011010100", 79 => "1011011100", 
    80 => "1011011101", 81 => "1011010101", 82 => "1011010011", 83 => "1011011010", 
    84 => "1011011101", 85 => "1011010111", 86 => "1011010001", 87 => "1011010110", 
    88 => "1011011100", 89 => "1011011000", 90 => "1011010001", 91 => "1011010010", 
    92 => "1011011001", 93 => "1011011011", 94 => "1011010101", 95 => "1011010001", 
    96 => "1011010101", 97 => "1011011100", 98 => "1011011001", 99 => "1011010001", 
    100 => "1011010010", 101 => "1011011011", 102 => "1011011100", 103 => "1011010100" );


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

entity normalize_wlo_166dEe is
    generic (
        DataWidth : INTEGER := 10;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of normalize_wlo_166dEe is
    component normalize_wlo_166dEe_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    normalize_wlo_166dEe_rom_U :  component normalize_wlo_166dEe_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


