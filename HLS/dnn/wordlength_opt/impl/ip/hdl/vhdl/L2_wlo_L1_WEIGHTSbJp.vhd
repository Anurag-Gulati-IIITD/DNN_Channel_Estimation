-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbJp_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbJp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010101111000100", 1 => "0010010100000001", 2 => "1010111010010000", 
    3 => "0010001000100000", 4 => "1010111010110101", 5 => "1010010100100100", 
    6 => "0010011100101010", 7 => "1010100110101101", 8 => "1010111001100010", 
    9 => "1011001000100110", 10 => "0010011111010000", 11 => "1011000101111000", 
    12 => "0010110111000111", 13 => "1011000101000101", 14 => "1010111110000011", 
    15 => "0011010000100000", 16 => "1010110110011000", 17 => "0011000010010111", 
    18 => "0010101111101111", 19 => "1010111110100110", 20 => "1011000111101011", 
    21 => "0010101000110110", 22 => "0010101000000010", 23 => "1011000000000000", 
    24 => "1011000110100001", 25 => "1010100011011001", 26 => "0011000000001111", 
    27 => "0010011110100010", 28 => "1001100101011010", 29 => "0010111000110010", 
    30 => "0010111010010110", 31 => "1011000011111010", 32 => "0011000010011001", 
    33 => "0010111010111010", 34 => "0010111011101001", 35 => "1011000001101011", 
    36 => "1010000100010011", 37 => "0001111110010010", 38 => "1010110001000001", 
    39 => "0011001111011100", 40 => "0010101010100111", 41 => "0010111110000101", 
    42 => "0011001101111011", 43 => "1011001001001001", 44 => "0010010011101101", 
    45 => "1001101111000001", 46 => "0010010110010101", 47 => "0001011001100000", 
    48 => "1010010000100101", 49 => "1010101001011001", 50 => "0010100111010011", 
    51 => "1011000010000000" );

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

entity L2_wlo_L1_WEIGHTSbJp is
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

architecture arch of L2_wlo_L1_WEIGHTSbJp is
    component L2_wlo_L1_WEIGHTSbJp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbJp_rom_U :  component L2_wlo_L1_WEIGHTSbJp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


