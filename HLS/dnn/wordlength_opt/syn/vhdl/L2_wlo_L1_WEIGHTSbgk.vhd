-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbgk_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbgk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010101100101001", 1 => "1011000011011110", 2 => "1010100110010101", 
    3 => "0010110100000001", 4 => "1010111011110100", 5 => "0011001100000100", 
    6 => "1010101001100011", 7 => "1011000110001110", 8 => "1010100110011000", 
    9 => "1010110011111010", 10 => "0010110000101000", 11 => "0010111000010111", 
    12 => "0011000000010010", 13 => "0010111000100010", 14 => "1010101001001011", 
    15 => "0010011111001011", 16 => "1010101010101101", 17 => "1010011001100000", 
    18 => "1001111100001000", 19 => "0010001100011011", 20 => "0010110000111110", 
    21 => "1010011011100010", 22 => "0011001101111011", 23 => "0011000101010001", 
    24 => "1010100110100110", 25 => "1010110000101100", 26 => "1011001000010101", 
    27 => "0011000000100111", 28 => "0010101010110010", 29 => "1011000000000101", 
    30 => "0010100110110001", 31 => "1010101001001001", 32 => "0010111011011000", 
    33 => "1010111011010110", 34 => "1010101011111000", 35 => "0010100000111001", 
    36 => "1010100011001000", 37 => "0010011011110101", 38 => "1010111010011101", 
    39 => "0010111000100011", 40 => "0010110000101011", 41 => "0010110110101000", 
    42 => "1001100000110011", 43 => "1010100000100110", 44 => "0001110100000100", 
    45 => "1010010110010111", 46 => "1010110100010111", 47 => "1000101101001111", 
    48 => "0010110001111111", 49 => "0011000010100110", 50 => "0010100000100111", 
    51 => "1010110110101101" );

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

entity L2_wlo_L1_WEIGHTSbgk is
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

architecture arch of L2_wlo_L1_WEIGHTSbgk is
    component L2_wlo_L1_WEIGHTSbgk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbgk_rom_U :  component L2_wlo_L1_WEIGHTSbgk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


