-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSDeQ_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSDeQ_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010010100101111", 1 => "1010110010100101", 2 => "1010100000111110", 
    3 => "0010110000011100", 4 => "1010110101101110", 5 => "1010110000110000", 
    6 => "1010100010010111", 7 => "0010100100010111", 8 => "0010111010000001", 
    9 => "0011000100101001", 10 => "0010010011011100", 11 => "0010000101110111", 
    12 => "0010111001100110", 13 => "0011000000001111", 14 => "0010100110100110", 
    15 => "0011001100001101", 16 => "0001111010000110", 17 => "1010100000101101", 
    18 => "0010000010000000", 19 => "0010010001000011", 20 => "0010101110111110", 
    21 => "0010101011010110", 22 => "1010100010111010", 23 => "0010111101101001", 
    24 => "1010010001101001", 25 => "1010000101011011", 26 => "1011010000010111", 
    27 => "0010010111001000", 28 => "1010100011010111", 29 => "0001100101001100", 
    30 => "0010100011101100", 31 => "1010100011010010", 32 => "0010111011111111", 
    33 => "1010100111010100", 34 => "0010010000011000", 35 => "0011001010111010", 
    36 => "1001001111101000", 37 => "0010110010101000", 38 => "0010001101001010", 
    39 => "0011000001011011", 40 => "0010111000010000", 41 => "0010100000111101", 
    42 => "1011000101111010", 43 => "1011001100111110", 44 => "1010000111000100", 
    45 => "0010001111100110", 46 => "1010111010111100", 47 => "1010101001001101", 
    48 => "0001101111011110", 49 => "1010100011110001", 50 => "1010110101111011", 
    51 => "1011000010100011" );

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

entity L2_wlo_L1_WEIGHTSDeQ is
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

architecture arch of L2_wlo_L1_WEIGHTSDeQ is
    component L2_wlo_L1_WEIGHTSDeQ_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSDeQ_rom_U :  component L2_wlo_L1_WEIGHTSDeQ_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


