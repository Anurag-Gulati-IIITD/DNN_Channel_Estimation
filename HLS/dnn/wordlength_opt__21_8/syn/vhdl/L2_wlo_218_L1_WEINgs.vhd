-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEINgs_rom is 
    generic(
             DWIDTH     : integer := 13; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 52
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of L2_wlo_218_L1_WEINgs_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111101011010", 1 => "1110110101101", 2 => "1111011110000", 
    3 => "0001000001101", 4 => "1110101001001", 5 => "1110111100111", 
    6 => "1111011011010", 7 => "0000101000101", 8 => "0001101000000", 
    9 => "0010100101001", 10 => "0000010011011", 11 => "0000001010111", 
    12 => "0001100110010", 13 => "0010000001110", 14 => "0000101101001", 
    15 => "0011100001100", 16 => "0000000110100", 17 => "1111011110100", 
    18 => "0000001001000", 19 => "0000010001000", 20 => "0000111101111", 
    21 => "0000110110101", 22 => "1111011010001", 23 => "0001110110100", 
    24 => "1111101110010", 25 => "1111110101010", 26 => "1011111010010", 
    27 => "0000010111000", 28 => "1111011001010", 29 => "0000000010101", 
    30 => "0000100111011", 31 => "1111011001011", 32 => "0001101111111", 
    33 => "1111010001010", 34 => "0000010000011", 35 => "0011010111001", 
    36 => "1111111111000", 37 => "0001001010011", 38 => "0000001110100", 
    39 => "0010001011011", 40 => "0001100001000", 41 => "0000100001111", 
    42 => "1101010000101", 43 => "1100011000010", 44 => "1111110100011", 
    45 => "0000001111110", 46 => "1110010100010", 47 => "1111001101100", 
    48 => "0000000011111", 49 => "1111011000011", 50 => "1110101000010", 
    51 => "1101101011100" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

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

entity L2_wlo_218_L1_WEINgs is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEINgs is
    component L2_wlo_218_L1_WEINgs_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEINgs_rom_U :  component L2_wlo_218_L1_WEINgs_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


