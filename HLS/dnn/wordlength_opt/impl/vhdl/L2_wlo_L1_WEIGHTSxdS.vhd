-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSxdS_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSxdS_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010101111111010", 1 => "1011000110111100", 2 => "0010010110000000", 
    3 => "0001110010000101", 4 => "1010101101100100", 5 => "0010101000001111", 
    6 => "0010101101110011", 7 => "0010000111110100", 8 => "1010110100010111", 
    9 => "1010101010000110", 10 => "1010111000100011", 11 => "1011001001000011", 
    12 => "1010110010100010", 13 => "0010111111100101", 14 => "0010101111110010", 
    15 => "0011000011111000", 16 => "1010110101111100", 17 => "0010010101101000", 
    18 => "0010011111011111", 19 => "1010110001101110", 20 => "1010111101110010", 
    21 => "1010111011001101", 22 => "0010100010101001", 23 => "0011001000111010", 
    24 => "0010101100011101", 25 => "1010001000001011", 26 => "0011000100000111", 
    27 => "1010100000100111", 28 => "1010101100000100", 29 => "1010110001000110", 
    30 => "1010111000110111", 31 => "1010100100000001", 32 => "0010100101110000", 
    33 => "0010101101111001", 34 => "0011000000010010", 35 => "1010001110010100", 
    36 => "0010010001011101", 37 => "0011000110011000", 38 => "1010010111001110", 
    39 => "1010111001111010", 40 => "1010100100001101", 41 => "0010101000000110", 
    42 => "1010011110110011", 43 => "1011001100011011", 44 => "1010010100101110", 
    45 => "1010110011111100", 46 => "1010110010110011", 47 => "1000101011111011", 
    48 => "1001110011110111", 49 => "1010100100101001", 50 => "1010101111010010", 
    51 => "0010101101101001" );

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

entity L2_wlo_L1_WEIGHTSxdS is
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

architecture arch of L2_wlo_L1_WEIGHTSxdS is
    component L2_wlo_L1_WEIGHTSxdS_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSxdS_rom_U :  component L2_wlo_L1_WEIGHTSxdS_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


