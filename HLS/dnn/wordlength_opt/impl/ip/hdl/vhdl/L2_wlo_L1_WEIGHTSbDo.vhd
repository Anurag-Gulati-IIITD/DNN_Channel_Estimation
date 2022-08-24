-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbDo_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbDo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100100010100", 1 => "0010101010101101", 2 => "0010110111111000", 
    3 => "0010010011000000", 4 => "1010111101011101", 5 => "0011000010101010", 
    6 => "0010111000000001", 7 => "1010111100111100", 8 => "0010110011011010", 
    9 => "1011000011001101", 10 => "1010101110001100", 11 => "1010110111011000", 
    12 => "0001101101001110", 13 => "1010110010011011", 14 => "1011000101100011", 
    15 => "1011000001011011", 16 => "1010100101000001", 17 => "1010110101001000", 
    18 => "1010101110110101", 19 => "0010010011000101", 20 => "0010011111001111", 
    21 => "0001100101001101", 22 => "0010110011111001", 23 => "1010110100011110", 
    24 => "0010110001001001", 25 => "0010100010111100", 26 => "1010110010101100", 
    27 => "1010101101001000", 28 => "1010101100011110", 29 => "1011000010100001", 
    30 => "0010111101001001", 31 => "0010000101010100", 32 => "0010101111101101", 
    33 => "1010011110101110", 34 => "0010101010010110", 35 => "0011001101101111", 
    36 => "1010011011110001", 37 => "0010101100000101", 38 => "1010101001010101", 
    39 => "1010000111001110", 40 => "1010100010001000", 41 => "0011001000101000", 
    42 => "0011001010010010", 43 => "0011000011010110", 44 => "1010010001111010", 
    45 => "1010011011001011", 46 => "1010110010110101", 47 => "1010001010100110", 
    48 => "1010100001101100", 49 => "1010011101101110", 50 => "1010010001111110", 
    51 => "0010010110011000" );

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

entity L2_wlo_L1_WEIGHTSbDo is
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

architecture arch of L2_wlo_L1_WEIGHTSbDo is
    component L2_wlo_L1_WEIGHTSbDo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbDo_rom_U :  component L2_wlo_L1_WEIGHTSbDo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


