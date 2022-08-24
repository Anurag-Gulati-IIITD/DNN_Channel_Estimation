-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS8jQ_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS8jQ_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010110101101110", 1 => "1010100101001001", 2 => "0010110111011101", 
    3 => "1010111010101010", 4 => "0010111100001000", 5 => "1010101110011101", 
    6 => "1001010100011100", 7 => "0010010101111000", 8 => "0011000011001010", 
    9 => "1010110011000100", 10 => "0011000001001010", 11 => "0001011001101100", 
    12 => "0010110000011111", 13 => "1011000000001000", 14 => "0010001101111101", 
    15 => "1011000000011111", 16 => "0010110001111010", 17 => "1011000100011110", 
    18 => "1010100110100000", 19 => "0010000001011111", 20 => "1001111110000010", 
    21 => "1010011000011101", 22 => "1000100100111110", 23 => "0010101100001011", 
    24 => "0010001011001100", 25 => "0010010101000010", 26 => "1010011010001001", 
    27 => "0010110100100100", 28 => "0010100010010001", 29 => "1010001001000101", 
    30 => "1010011110101100", 31 => "0010100011010100", 32 => "1010100000111100", 
    33 => "0010110011111100", 34 => "0010111010011111", 35 => "0010111101101100", 
    36 => "0010111011101010", 37 => "1010111010010001", 38 => "1010111001011100", 
    39 => "0010100111010001", 40 => "1010110000111011", 41 => "1010100101111001", 
    42 => "0010111111001011", 43 => "0011000001110010", 44 => "1010110011100101", 
    45 => "1010111001100011", 46 => "0010111111010001", 47 => "1010110010110101", 
    48 => "0011000000010110", 49 => "1010111010100101", 50 => "1011000101001100", 
    51 => "1010110101111100" );

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

entity L2_wlo_L1_WEIGHTS8jQ is
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

architecture arch of L2_wlo_L1_WEIGHTS8jQ is
    component L2_wlo_L1_WEIGHTS8jQ_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS8jQ_rom_U :  component L2_wlo_L1_WEIGHTS8jQ_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


