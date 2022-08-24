-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSrcU_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSrcU_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010100011001101", 1 => "1011010010001011", 2 => "1010100101110111", 
    3 => "0010101011100110", 4 => "1010011111010100", 5 => "0010110111000101", 
    6 => "1010101001001000", 7 => "1011000001110101", 8 => "0010111101111001", 
    9 => "1010111000000001", 10 => "1010110110111101", 11 => "1001011000001001", 
    12 => "0010101100110110", 13 => "0010111000011000", 14 => "1010010101100010", 
    15 => "0010011111110110", 16 => "0010101110111000", 17 => "0010110011011101", 
    18 => "1001010000001111", 19 => "0010100001100001", 20 => "1010110001110010", 
    21 => "0010100001100100", 22 => "0010111111001111", 23 => "0011001110010000", 
    24 => "0001110101111101", 25 => "1010100010100101", 26 => "1010100111100000", 
    27 => "0000010111100110", 28 => "0010110100101000", 29 => "1010111010111111", 
    30 => "0010011011111011", 31 => "1010011111100100", 32 => "1010000000011000", 
    33 => "1010111000001001", 34 => "0010110000101101", 35 => "1011000110010101", 
    36 => "1010110011010110", 37 => "0010110100100100", 38 => "1010100111011000", 
    39 => "0010011010001011", 40 => "0010111000111000", 41 => "0001110100101111", 
    42 => "0010101000000001", 43 => "1010100000101011", 44 => "0010111100111100", 
    45 => "1010101110111101", 46 => "1010010111010111", 47 => "1010010110001001", 
    48 => "0011000000110010", 49 => "1010100011111011", 50 => "1010110000011011", 
    51 => "1010101110010100" );

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

entity L2_wlo_L1_WEIGHTSrcU is
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

architecture arch of L2_wlo_L1_WEIGHTSrcU is
    component L2_wlo_L1_WEIGHTSrcU_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSrcU_rom_U :  component L2_wlo_L1_WEIGHTSrcU_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


