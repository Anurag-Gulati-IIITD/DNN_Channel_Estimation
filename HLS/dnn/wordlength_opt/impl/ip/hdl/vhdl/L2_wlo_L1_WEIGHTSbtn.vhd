-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbtn_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbtn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1001011110010010", 1 => "1010110000010110", 2 => "1001111101010101", 
    3 => "0010010011000101", 4 => "0010110010011100", 5 => "1010111000110000", 
    6 => "1001010101110100", 7 => "1001100101010001", 8 => "1001100010101011", 
    9 => "1010111110001000", 10 => "0011001000010011", 11 => "1011000001000001", 
    12 => "1010100010110110", 13 => "1010111101111001", 14 => "0011010000101001", 
    15 => "0010111100100001", 16 => "1010010010110100", 17 => "1010111100001011", 
    18 => "1010110001100101", 19 => "0010101010111100", 20 => "0010010110001010", 
    21 => "0010100001010011", 22 => "1010110110111010", 23 => "0011000101101101", 
    24 => "0001010100111001", 25 => "0010000111000000", 26 => "1010101000101110", 
    27 => "0010110101001011", 28 => "1010110011001110", 29 => "1010011000100110", 
    30 => "1011000101010000", 31 => "0010111001000011", 32 => "1010110100010010", 
    33 => "0001000011100000", 34 => "0011000001111010", 35 => "0011001001011111", 
    36 => "0010001100001011", 37 => "1010111110101101", 38 => "0010010111100001", 
    39 => "1010110101100111", 40 => "1010011011111001", 41 => "0010000101110111", 
    42 => "0010110111100010", 43 => "1010111000011111", 44 => "1010100100110010", 
    45 => "0010100001101000", 46 => "0010000111101111", 47 => "0010100100100011", 
    48 => "1010010010001110", 49 => "1011000000011100", 50 => "0010111111011111", 
    51 => "0011000011011011" );

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

entity L2_wlo_L1_WEIGHTSbtn is
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

architecture arch of L2_wlo_L1_WEIGHTSbtn is
    component L2_wlo_L1_WEIGHTSbtn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbtn_rom_U :  component L2_wlo_L1_WEIGHTSbtn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


