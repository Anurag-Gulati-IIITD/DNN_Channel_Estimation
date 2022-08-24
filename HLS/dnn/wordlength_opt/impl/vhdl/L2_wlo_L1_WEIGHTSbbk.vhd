-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbbk_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbbk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010010011001011", 1 => "0011000000010011", 2 => "0010110001100000", 
    3 => "0011000100010101", 4 => "1010111010110000", 5 => "0011000100110100", 
    6 => "1010010100001000", 7 => "1010110100110111", 8 => "1011001101110001", 
    9 => "0011000101011001", 10 => "1010100010010010", 11 => "0010010010111110", 
    12 => "1010100111000100", 13 => "0010011100111010", 14 => "1010101001110001", 
    15 => "0010111000000101", 16 => "0010000010001100", 17 => "0010011001010011", 
    18 => "1010101010001110", 19 => "1011000010011101", 20 => "1010110010001110", 
    21 => "1010110010100001", 22 => "0010111010101111", 23 => "1010100011010101", 
    24 => "1010110000001000", 25 => "0001111011010001", 26 => "0010111011101011", 
    27 => "1010110001111001", 28 => "1010110011000101", 29 => "1010110111101101", 
    30 => "0010011011010100", 31 => "0010110010011010", 32 => "0011000001010000", 
    33 => "0010110001010011", 34 => "1010101010010001", 35 => "1010100000010100", 
    36 => "0010101101111100", 37 => "0010010100101000", 38 => "0010110011111001", 
    39 => "1011000010100111", 40 => "0010011101010110", 41 => "0010110011100010", 
    42 => "1010111110010100", 43 => "1010101011000110", 44 => "1010100110001000", 
    45 => "0010110100111000", 46 => "1010110111111000", 47 => "0001010001100011", 
    48 => "1010111110111110", 49 => "0010111010000001", 50 => "0010110111011100", 
    51 => "0010110011111100" );

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

entity L2_wlo_L1_WEIGHTSbbk is
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

architecture arch of L2_wlo_L1_WEIGHTSbbk is
    component L2_wlo_L1_WEIGHTSbbk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbbk_rom_U :  component L2_wlo_L1_WEIGHTSbbk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


