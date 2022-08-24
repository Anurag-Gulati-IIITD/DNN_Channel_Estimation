-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS4jc_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS4jc_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001110110100110", 1 => "0011001001100101", 2 => "0010110101110111", 
    3 => "1010110001110100", 4 => "0010110011110000", 5 => "0011000110110110", 
    6 => "1010100001001000", 7 => "1010101001110001", 8 => "1010110100001001", 
    9 => "0001110100000001", 10 => "1010101110101101", 11 => "0010111111101001", 
    12 => "1010000100110111", 13 => "0011000000010111", 14 => "0001100011010001", 
    15 => "0010110001011111", 16 => "0010100111001000", 17 => "1010100111111111", 
    18 => "0010100111010110", 19 => "0010100111110100", 20 => "1001100111100100", 
    21 => "1010011100011000", 22 => "0010010100011001", 23 => "1011000111011111", 
    24 => "1010010011101001", 25 => "0010010001011110", 26 => "1011000010101000", 
    27 => "0010010111110000", 28 => "0010110101111100", 29 => "1010110011101110", 
    30 => "1010100000111010", 31 => "0010100001101010", 32 => "0010011010100000", 
    33 => "1010111100010010", 34 => "0010101011111000", 35 => "1010110010010100", 
    36 => "1010110010110000", 37 => "0011000100011000", 38 => "1010100110010111", 
    39 => "1010111100111001", 40 => "0001110110101010", 41 => "1010110010111011", 
    42 => "1010101111101010", 43 => "1010110111111110", 44 => "0010010111100101", 
    45 => "1010100000001110", 46 => "0010100001000010", 47 => "1010011000011111", 
    48 => "0010000100111100", 49 => "0010110101001000", 50 => "0010111101011000", 
    51 => "0010111000000111" );

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

entity L2_wlo_L1_WEIGHTS4jc is
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

architecture arch of L2_wlo_L1_WEIGHTS4jc is
    component L2_wlo_L1_WEIGHTS4jc_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS4jc_rom_U :  component L2_wlo_L1_WEIGHTS4jc_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


