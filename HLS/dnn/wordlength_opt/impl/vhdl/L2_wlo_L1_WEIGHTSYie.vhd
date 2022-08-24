-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSYie_rom is 
    generic(
             DWIDTH     : integer := 16; 
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


architecture rtl of L2_wlo_L1_WEIGHTSYie_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010010100010001", 1 => "0011000110011011", 2 => "0011000101110110", 
    3 => "0001110100011011", 4 => "1010011111101101", 5 => "0011010000010110", 
    6 => "0001111110010101", 7 => "1010110110010001", 8 => "1010110111000101", 
    9 => "1010110001100010", 10 => "0010101000011000", 11 => "0011001011010011", 
    12 => "1010001110110001", 13 => "1010011001100101", 14 => "0011000111001110", 
    15 => "1010001100011010", 16 => "0010101111111010", 17 => "1011001001110110", 
    18 => "1010101000001011", 19 => "0010010100110000", 20 => "1010011000001100", 
    21 => "1011000100101110", 22 => "0010100011000000", 23 => "1010111101111010", 
    24 => "1001011000010111", 25 => "1010010100111001", 26 => "0011000101110101", 
    27 => "1010110000001010", 28 => "0010011000110101", 29 => "1011010010100110", 
    30 => "1011001101011111", 31 => "1001111101110110", 32 => "0010010110101111", 
    33 => "0010011101100001", 34 => "0010101100011111", 35 => "1010100111100010", 
    36 => "0010111000011110", 37 => "1010110011111010", 38 => "1001101001101100", 
    39 => "0011000010101111", 40 => "1010100111100000", 41 => "0010110011011101", 
    42 => "0010110000110110", 43 => "1010100101110110", 44 => "1010100000100011", 
    45 => "1010111101110000", 46 => "0010110100010110", 47 => "1010110000100111", 
    48 => "0011000110111010", 49 => "1011000010000100", 50 => "0010101010011011", 
    51 => "1010110001110100" );

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

entity L2_wlo_L1_WEIGHTSYie is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_L1_WEIGHTSYie is
    component L2_wlo_L1_WEIGHTSYie_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSYie_rom_U :  component L2_wlo_L1_WEIGHTSYie_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


