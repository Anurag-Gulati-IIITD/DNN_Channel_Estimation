-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbKp_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbKp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010100110001010", 1 => "0010100101111011", 2 => "1010110110110101", 
    3 => "1010100000001100", 4 => "1011010010011011", 5 => "1011001100000010", 
    6 => "1010000100000011", 7 => "0001110010010010", 8 => "0010110110011110", 
    9 => "1011010101111011", 10 => "0010011011100101", 11 => "0011001010010001", 
    12 => "0010100001101100", 13 => "1011000011010000", 14 => "1010011001000000", 
    15 => "0010111100010100", 16 => "1010101111000111", 17 => "0010100010111110", 
    18 => "0010100001011010", 19 => "1011000110011110", 20 => "0010100000101111", 
    21 => "0010100111000111", 22 => "0010110000010111", 23 => "1010111011000110", 
    24 => "1010110111101101", 25 => "0001111001110000", 26 => "0010100010010001", 
    27 => "1001010001101010", 28 => "1011000110001101", 29 => "0011000110110100", 
    30 => "0010111100110000", 31 => "1001011000100110", 32 => "0010111111000000", 
    33 => "0011001110110011", 34 => "1010010110001110", 35 => "1010100010001111", 
    36 => "1010101010100001", 37 => "1001010011101100", 38 => "0010011011011010", 
    39 => "0010110100101010", 40 => "0010110010010110", 41 => "0011000000001011", 
    42 => "0011000001101101", 43 => "1011000011100000", 44 => "0010101001011011", 
    45 => "0010101111010011", 46 => "0010111011011101", 47 => "0010011000000011", 
    48 => "1010101100110000", 49 => "0010101110111001", 50 => "1010101111110111", 
    51 => "1010111011110000" );

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

entity L2_wlo_L1_WEIGHTSbKp is
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

architecture arch of L2_wlo_L1_WEIGHTSbKp is
    component L2_wlo_L1_WEIGHTSbKp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbKp_rom_U :  component L2_wlo_L1_WEIGHTSbKp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


