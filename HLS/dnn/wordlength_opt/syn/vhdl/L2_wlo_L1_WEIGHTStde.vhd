-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTStde_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTStde_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010000111111000", 1 => "0001110001110011", 2 => "0010010011100001", 
    3 => "0011000011001101", 4 => "1011000001110110", 5 => "1010100101000110", 
    6 => "1010110000101001", 7 => "1011000100000011", 8 => "1011000111000101", 
    9 => "1010000000000111", 10 => "0011000111010000", 11 => "1010000110010100", 
    12 => "0010111011000100", 13 => "0010100101110000", 14 => "0010110001100101", 
    15 => "0010100001110101", 16 => "1011000011011101", 17 => "1010000101001000", 
    18 => "1010000001110010", 19 => "0001110100011000", 20 => "1010100000000011", 
    21 => "0010001110111101", 22 => "0010111110101011", 23 => "1010010100010101", 
    24 => "0010110011101001", 25 => "1010011000000001", 26 => "1011000111001001", 
    27 => "0011001010100100", 28 => "1001010100110001", 29 => "0010101010010000", 
    30 => "1010101001011111", 31 => "1001100010111100", 32 => "0010011111111110", 
    33 => "0010010111101101", 34 => "1011000001000100", 35 => "1001100100101001", 
    36 => "1010010100010001", 37 => "1010110011001010", 38 => "1011001000100001", 
    39 => "1010011010101011", 40 => "1001110010010001", 41 => "0010111110101000", 
    42 => "0010100001010001", 43 => "1010010001111011", 44 => "0010100101110000", 
    45 => "0010110101011110", 46 => "1011000111111111", 47 => "0010000111110000", 
    48 => "0010011011111010", 49 => "0011001101110111", 50 => "0011000110101011", 
    51 => "1010101100100011" );

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

entity L2_wlo_L1_WEIGHTStde is
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

architecture arch of L2_wlo_L1_WEIGHTStde is
    component L2_wlo_L1_WEIGHTStde_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTStde_rom_U :  component L2_wlo_L1_WEIGHTStde_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


