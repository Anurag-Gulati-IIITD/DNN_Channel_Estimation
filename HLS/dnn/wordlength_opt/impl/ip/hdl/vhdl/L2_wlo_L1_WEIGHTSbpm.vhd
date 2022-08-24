-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbpm_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbpm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010101100101100", 1 => "0011001101110100", 2 => "0010100010100000", 
    3 => "0010100111000010", 4 => "0010101110111000", 5 => "1010111100110101", 
    6 => "1010111100010111", 7 => "0010011000011101", 8 => "1001011010000101", 
    9 => "0010001110010110", 10 => "1010110001011101", 11 => "0011000101100000", 
    12 => "0010111011101001", 13 => "1010100001011000", 14 => "1011000101101000", 
    15 => "1011001011111101", 16 => "0010100011101111", 17 => "0010111110101011", 
    18 => "1010101000011011", 19 => "0010110000111110", 20 => "0010100000001100", 
    21 => "0010100101101101", 22 => "1010010011101101", 23 => "1011001001111101", 
    24 => "1010101011000110", 25 => "1010100101000110", 26 => "1010110111101101", 
    27 => "1010100101111010", 28 => "0010010111111011", 29 => "0010101100000001", 
    30 => "0011001001111000", 31 => "1010100111001010", 32 => "0010110111011000", 
    33 => "1010010001111100", 34 => "1010110001010010", 35 => "1011000110010000", 
    36 => "1010101010010111", 37 => "0010011101110110", 38 => "0010110000011000", 
    39 => "1010100100111110", 40 => "0010100001101111", 41 => "1010110000011111", 
    42 => "1011000000001101", 43 => "0011001010001101", 44 => "0010101100000111", 
    45 => "0010101101000100", 46 => "0010100110000011", 47 => "0010101011101111", 
    48 => "1010110010111111", 49 => "0011000010101010", 50 => "1010101011001000", 
    51 => "1010101110101101" );

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

entity L2_wlo_L1_WEIGHTSbpm is
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

architecture arch of L2_wlo_L1_WEIGHTSbpm is
    component L2_wlo_L1_WEIGHTSbpm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbpm_rom_U :  component L2_wlo_L1_WEIGHTSbpm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


