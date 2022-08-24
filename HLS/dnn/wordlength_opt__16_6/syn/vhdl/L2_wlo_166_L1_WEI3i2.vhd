-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEI3i2_rom is 
    generic(
             DWIDTH     : integer := 10; 
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


architecture rtl of L2_wlo_166_L1_WEI3i2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111000100", 1 => "1110011110", 2 => "0001001100", 3 => "1111000011", 
    4 => "0011010100", 5 => "0011111111", 6 => "0000001100", 7 => "1111110111", 
    8 => "1101111010", 9 => "0001001010", 10 => "1111011010", 11 => "1011000110", 
    12 => "1111011011", 13 => "0010001010", 14 => "1110010010", 15 => "1111010110", 
    16 => "0001100001", 17 => "1111000011", 18 => "1111010101", 19 => "1110101110", 
    20 => "1111100110", 21 => "1110101001", 22 => "0000011001", 23 => "1111101001", 
    24 => "1111110110", 25 => "1111101010", 26 => "0000100011", 27 => "0000010101", 
    28 => "0010001000", 29 => "1101100100", 30 => "0000110001", 31 => "1111110001", 
    32 => "1101011000", 33 => "1111001110", 34 => "1111110101", 35 => "0000110001", 
    36 => "0000100010", 37 => "1111010101", 38 => "1110100111", 39 => "0000100001", 
    40 => "1101111001", 41 => "1100011101", 42 => "1100111001", 43 => "1111010011", 
    44 => "1110101010", 45 => "1101101100", 46 => "0000001010", 47 => "1110111010", 
    48 => "0010110011", 49 => "0000011001", 50 => "0010001011", 51 => "1111000000" );

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

entity L2_wlo_166_L1_WEI3i2 is
    generic (
        DataWidth : INTEGER := 10;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEI3i2 is
    component L2_wlo_166_L1_WEI3i2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEI3i2_rom_U :  component L2_wlo_166_L1_WEI3i2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


