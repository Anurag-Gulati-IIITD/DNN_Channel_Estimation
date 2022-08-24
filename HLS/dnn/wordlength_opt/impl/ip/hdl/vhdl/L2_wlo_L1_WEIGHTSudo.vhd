-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSudo_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSudo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100101011111", 1 => "0011000001110100", 2 => "0010101110101110", 
    3 => "0010011100001000", 4 => "1001010011011101", 5 => "1010111110000110", 
    6 => "1010111011010111", 7 => "1010011001001010", 8 => "1010110111010011", 
    9 => "0011000001011010", 10 => "0011000000111100", 11 => "1010000100111011", 
    12 => "0010101111101111", 13 => "1010111110111001", 14 => "1010010000110000", 
    15 => "1010101000100110", 16 => "0010101001011100", 17 => "1010100001010110", 
    18 => "1010100111001000", 19 => "0010011100010000", 20 => "0010110001010101", 
    21 => "1010000001111010", 22 => "1010100010101100", 23 => "1011010001011001", 
    24 => "0010000011001010", 25 => "1010101111100011", 26 => "1010111101000001", 
    27 => "0011000111111000", 28 => "0010110100001001", 29 => "0010110100001011", 
    30 => "1001111111010010", 31 => "1010100100100101", 32 => "1010100101001000", 
    33 => "1010010101010010", 34 => "1010111011000110", 35 => "0010101001101000", 
    36 => "0010101100101011", 37 => "1010111100101111", 38 => "1010100100111101", 
    39 => "1001100010010111", 40 => "0010011010111010", 41 => "0010000101111010", 
    42 => "1010110111110010", 43 => "0010110000110001", 44 => "0010101001000011", 
    45 => "0010110101101111", 46 => "0010010011001011", 47 => "1010000100010101", 
    48 => "1011000011001011", 49 => "0010110111111011", 50 => "0011000010001101", 
    51 => "1010101001110111" );

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

entity L2_wlo_L1_WEIGHTSudo is
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

architecture arch of L2_wlo_L1_WEIGHTSudo is
    component L2_wlo_L1_WEIGHTSudo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSudo_rom_U :  component L2_wlo_L1_WEIGHTSudo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


