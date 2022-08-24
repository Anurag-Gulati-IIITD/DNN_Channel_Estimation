-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbBo_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbBo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010110010101010", 1 => "0010111001100010", 2 => "0010010100001110", 
    3 => "1010110111101000", 4 => "0010111001110100", 5 => "0010100010001011", 
    6 => "0001100011011011", 7 => "1010010000110011", 8 => "1011000111111111", 
    9 => "1010100010100110", 10 => "0011001000011100", 11 => "1010011100001000", 
    12 => "0010110000100011", 13 => "0010111100100110", 14 => "1010110001001011", 
    15 => "0010100111110010", 16 => "0010110110011000", 17 => "1010101011011000", 
    18 => "1010111000110001", 19 => "0010110111001101", 20 => "0010110100100011", 
    21 => "1010111000001001", 22 => "0001100000101010", 23 => "1010101010001100", 
    24 => "1010001010001001", 25 => "1010100111100101", 26 => "1011000011001010", 
    27 => "1010110101001000", 28 => "0011001000001111", 29 => "1010101000111000", 
    30 => "0010100001110111", 31 => "0010010111100011", 32 => "1010110011101000", 
    33 => "1011001011000011", 34 => "0010110011011100", 35 => "1010111101110100", 
    36 => "0001111101000000", 37 => "1010110101110110", 38 => "0010110000000010", 
    39 => "1010110000110010", 40 => "1010011010011000", 41 => "1011000110000110", 
    42 => "0010110101010110", 43 => "1010101010000001", 44 => "0010111111111101", 
    45 => "0010110000011000", 46 => "1010011010011101", 47 => "0010101011111011", 
    48 => "0010011100101011", 49 => "1010010000011111", 50 => "0011000110100110", 
    51 => "0001110001101101" );

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

entity L2_wlo_L1_WEIGHTSbBo is
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

architecture arch of L2_wlo_L1_WEIGHTSbBo is
    component L2_wlo_L1_WEIGHTSbBo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbBo_rom_U :  component L2_wlo_L1_WEIGHTSbBo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


