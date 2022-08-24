-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS2iS_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS2iS_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010111001100101", 1 => "1010110101010000", 2 => "1010111010000101", 
    3 => "1011000011100110", 4 => "0010100110110001", 5 => "1010111011111101", 
    6 => "0010100010011111", 7 => "0010100011100001", 8 => "0011000001010111", 
    9 => "1010110101010110", 10 => "0010110111110001", 11 => "0010100110001000", 
    12 => "1010111001011111", 13 => "1010110110011001", 14 => "1010111001000000", 
    15 => "1010110011010001", 16 => "0010110001011111", 17 => "0011000101010001", 
    18 => "0010110100101001", 19 => "1010100000100000", 20 => "1010110001101100", 
    21 => "0010101101000111", 22 => "1010101101100100", 23 => "0010110010100111", 
    24 => "1010110001100010", 25 => "1010110011000001", 26 => "0010011111111000", 
    27 => "0010110110001010", 28 => "0010001100000110", 29 => "0011001000111110", 
    30 => "0010110011000000", 31 => "0010110101000011", 32 => "1010111111011100", 
    33 => "1010101001011001", 34 => "1010010100000010", 35 => "1011000001001110", 
    36 => "0010100000101101", 37 => "1011000010011100", 38 => "1011000111010010", 
    39 => "1010111100110101", 40 => "0010100101001010", 41 => "1011000101001111", 
    42 => "0010100000110000", 43 => "0010110101000100", 44 => "1001110011001101", 
    45 => "1010100001110100", 46 => "0011000010111110", 47 => "0010011010011011", 
    48 => "1010010100111111", 49 => "1010110000010010", 50 => "1011000011101100", 
    51 => "0010101011101000" );

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

entity L2_wlo_L1_WEIGHTS2iS is
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

architecture arch of L2_wlo_L1_WEIGHTS2iS is
    component L2_wlo_L1_WEIGHTS2iS_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS2iS_rom_U :  component L2_wlo_L1_WEIGHTS2iS_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


