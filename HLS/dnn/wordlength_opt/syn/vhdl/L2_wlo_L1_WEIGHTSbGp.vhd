-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbGp_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbGp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010110100101111", 1 => "1011000000001100", 2 => "0010110000000101", 
    3 => "1001100111110011", 4 => "0010111000101001", 5 => "1010010000100010", 
    6 => "1010000010111011", 7 => "0010100010001001", 8 => "1001100101001010", 
    9 => "0011010001111001", 10 => "1001111110010001", 11 => "0010101101001000", 
    12 => "1010110000110001", 13 => "0011000000111100", 14 => "0011001000011101", 
    15 => "1010110010010111", 16 => "1010100111000001", 17 => "1010111000100101", 
    18 => "0010010110100110", 19 => "0010010010000001", 20 => "0010101101011010", 
    21 => "0001101101001101", 22 => "1010110110001000", 23 => "0011000101111101", 
    24 => "0010100100101110", 25 => "0001100100010110", 26 => "0010110011000001", 
    27 => "0010110001101000", 28 => "0010100110101100", 29 => "1010111000101010", 
    30 => "1011000110000100", 31 => "1001011000001001", 32 => "1010110100010111", 
    33 => "1010000010100110", 34 => "1010111001011001", 35 => "1010111110011100", 
    36 => "0010011001001001", 37 => "0010111000001110", 38 => "1010011110010100", 
    39 => "0010100001010101", 40 => "1010110100001010", 41 => "1010111010111011", 
    42 => "1011000111011110", 43 => "0011000001101101", 44 => "1010010011110101", 
    45 => "1010111000010011", 46 => "1010101000111000", 47 => "0010000000010000", 
    48 => "0010111100010001", 49 => "0010100001100100", 50 => "0010001000001000", 
    51 => "1001101010011000" );

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

entity L2_wlo_L1_WEIGHTSbGp is
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

architecture arch of L2_wlo_L1_WEIGHTSbGp is
    component L2_wlo_L1_WEIGHTSbGp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbGp_rom_U :  component L2_wlo_L1_WEIGHTSbGp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


