-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSUhA_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSUhA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010000010000000", 1 => "0010111001111001", 2 => "1010100110110000", 
    3 => "0010101010011011", 4 => "1010100011100000", 5 => "0010101001011001", 
    6 => "0010110111111000", 7 => "1010100001010000", 8 => "1010101101001001", 
    9 => "1010110010100001", 10 => "1010110011001100", 11 => "1011010001010000", 
    12 => "0010110001101101", 13 => "1010001110000111", 14 => "1011001011111111", 
    15 => "0011000000110100", 16 => "1010110001000101", 17 => "0010101100000110", 
    18 => "1010011101101100", 19 => "1011000001000000", 20 => "1010100011110111", 
    21 => "0010100111111000", 22 => "0010011110100101", 23 => "1010011000111101", 
    24 => "1010001111100111", 25 => "0010100000000111", 26 => "0011001011010101", 
    27 => "0010101100000000", 28 => "1010111011111010", 29 => "1011000110000001", 
    30 => "0011001100100110", 31 => "1010110101010101", 32 => "1010110001101001", 
    33 => "0011000011011110", 34 => "0010011000010101", 35 => "0010110100110101", 
    36 => "0010100011101100", 37 => "0010001001000001", 38 => "1010101100001000", 
    39 => "0010110100010011", 40 => "1010010101101011", 41 => "0010100101100010", 
    42 => "0010100110000110", 43 => "1011000110111100", 44 => "1010110100000011", 
    45 => "1010110000000001", 46 => "0010101111000000", 47 => "0010101100001001", 
    48 => "1001111110011110", 49 => "1011000101110001", 50 => "0010100110001011", 
    51 => "1010111000010100" );

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

entity L2_wlo_L1_WEIGHTSUhA is
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

architecture arch of L2_wlo_L1_WEIGHTSUhA is
    component L2_wlo_L1_WEIGHTSUhA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSUhA_rom_U :  component L2_wlo_L1_WEIGHTSUhA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


