-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS0iy_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS0iy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010001000110010", 1 => "1010111111010010", 2 => "1010101101110100", 
    3 => "0010111110000000", 4 => "1010110111011010", 5 => "1010100111111010", 
    6 => "1010100101001010", 7 => "0010100010011111", 8 => "1011000010110100", 
    9 => "0010111111011100", 10 => "0010110101001011", 11 => "1011000011101000", 
    12 => "1010010000100101", 13 => "0011000010001111", 14 => "1010010000110101", 
    15 => "1011000011110111", 16 => "1010100110011001", 17 => "0010111101000110", 
    18 => "0010010011111110", 19 => "1010110110110011", 20 => "1010110001101001", 
    21 => "1010001011001100", 22 => "1010110100010110", 23 => "0011000011110011", 
    24 => "1010110000111100", 25 => "1010110011011000", 26 => "0010111001011011", 
    27 => "1011001111101010", 28 => "0000111111010001", 29 => "0010110110111010", 
    30 => "1010100001110000", 31 => "1010101001001001", 32 => "0010110111000000", 
    33 => "1001111011111000", 34 => "1010101100111111", 35 => "0010011100100010", 
    36 => "1010100010011100", 37 => "1010111000101110", 38 => "0011000011010010", 
    39 => "0001111111111011", 40 => "0010001000010111", 41 => "0010110111111110", 
    42 => "1010010011111101", 43 => "0011000110111110", 44 => "1010010010110001", 
    45 => "0010101011011000", 46 => "1010101100101100", 47 => "0010000101001001", 
    48 => "0001111011111001", 49 => "0010101110010100", 50 => "0011000110001000", 
    51 => "1010001101100100" );

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

entity L2_wlo_L1_WEIGHTS0iy is
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

architecture arch of L2_wlo_L1_WEIGHTS0iy is
    component L2_wlo_L1_WEIGHTS0iy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS0iy_rom_U :  component L2_wlo_L1_WEIGHTS0iy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


