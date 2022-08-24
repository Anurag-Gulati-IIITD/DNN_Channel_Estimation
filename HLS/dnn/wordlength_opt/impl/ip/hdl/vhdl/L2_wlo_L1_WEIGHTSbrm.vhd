-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbrm_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbrm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010011000110000", 1 => "1010110000101011", 2 => "1001111000001000", 
    3 => "0010110101100111", 4 => "1010111011110110", 5 => "1010010100110011", 
    6 => "0010011011110000", 7 => "0010100011010100", 8 => "0011001000011101", 
    9 => "0010000110001111", 10 => "1010010010000010", 11 => "1010011001000101", 
    12 => "0010111101011001", 13 => "0010110111100100", 14 => "1010011000000110", 
    15 => "0011000010111010", 16 => "1010001001110100", 17 => "1010000111001001", 
    18 => "1010111110010011", 19 => "0010111000010101", 20 => "0010110111000010", 
    21 => "1010100010001101", 22 => "1010110010110111", 23 => "0010101101110010", 
    24 => "0001110101001110", 25 => "0010101010100010", 26 => "1011000101111010", 
    27 => "1010111111111001", 28 => "0010101000101000", 29 => "1010011101011000", 
    30 => "0010100000011001", 31 => "1010100110011001", 32 => "1010001011011110", 
    33 => "0010101011100101", 34 => "0010110101110010", 35 => "0011001111101101", 
    36 => "1010101101100001", 37 => "1010001101111100", 38 => "0011000010100001", 
    39 => "1010000000010011", 40 => "0010011011001111", 41 => "0010110001000000", 
    42 => "1010010011010100", 43 => "1011000111111110", 44 => "0010000111011101", 
    45 => "1010011000010001", 46 => "1001110100110110", 47 => "1010000111100011", 
    48 => "1010101111111001", 49 => "1011000001110000", 50 => "1011001111101100", 
    51 => "1010110100001011" );

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

entity L2_wlo_L1_WEIGHTSbrm is
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

architecture arch of L2_wlo_L1_WEIGHTSbrm is
    component L2_wlo_L1_WEIGHTSbrm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbrm_rom_U :  component L2_wlo_L1_WEIGHTSbrm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


