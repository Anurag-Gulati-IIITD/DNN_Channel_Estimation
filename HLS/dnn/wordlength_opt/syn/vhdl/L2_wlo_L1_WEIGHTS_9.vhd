-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS_9_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010101101010011", 1 => "0010010010101000", 2 => "0010100100110110", 
    3 => "1010110001111010", 4 => "1010001100000000", 5 => "0011000100111101", 
    6 => "0010100110100010", 7 => "1011000001010100", 8 => "1010100100011011", 
    9 => "0010101111111111", 10 => "1010101100000101", 11 => "0010110101110100", 
    12 => "1010110100101100", 13 => "0011001000100100", 14 => "1010111000011000", 
    15 => "0010101001011110", 16 => "0010110011011101", 17 => "1010010001001111", 
    18 => "0010001001111001", 19 => "0010100011110101", 20 => "1001101100001110", 
    21 => "1010100011001001", 22 => "0011000111010001", 23 => "1010100001110010", 
    24 => "1010101000110101", 25 => "0010010010011100", 26 => "1010011011000110", 
    27 => "0010100111100111", 28 => "0011000001010110", 29 => "1011000110010010", 
    30 => "0011001001010010", 31 => "0010110010000000", 32 => "1010110000111111", 
    33 => "1010111011101001", 34 => "0010101011001011", 35 => "1011001000110011", 
    36 => "1010110010100100", 37 => "0010111010101001", 38 => "1011000010010010", 
    39 => "1010101000011001", 40 => "0010101001110110", 41 => "1000010110010010", 
    42 => "1010110110001011", 43 => "1000110101000111", 44 => "0010011000001100", 
    45 => "0010101100111100", 46 => "0010111000010011", 47 => "0001100101100100", 
    48 => "1010110010111010", 49 => "1010101010000101", 50 => "0010000100100010", 
    51 => "0010110000010000" );

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

entity L2_wlo_L1_WEIGHTS_9 is
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

architecture arch of L2_wlo_L1_WEIGHTS_9 is
    component L2_wlo_L1_WEIGHTS_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS_9_rom_U :  component L2_wlo_L1_WEIGHTS_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


