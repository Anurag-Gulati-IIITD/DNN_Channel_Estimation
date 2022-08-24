-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbwn_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbwn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1001110110100010", 1 => "0011000001010010", 2 => "1010010000000101", 
    3 => "1010110100001000", 4 => "1010011101101001", 5 => "0010110110100001", 
    6 => "0010101000100101", 7 => "1010111110111111", 8 => "0010101010100010", 
    9 => "1010110001101000", 10 => "1010111001101000", 11 => "1010010011110101", 
    12 => "0010101101100011", 13 => "0010110111010001", 14 => "1010111000011111", 
    15 => "1011001011011110", 16 => "0001111010011010", 17 => "1001111110101110", 
    18 => "1010101000100100", 19 => "1010100001010001", 20 => "1010111011100011", 
    21 => "0010100100110010", 22 => "0010110011111011", 23 => "1011000100001011", 
    24 => "0010011110011010", 25 => "1010010000100101", 26 => "0011000101010001", 
    27 => "1010100111010100", 28 => "1010001001110000", 29 => "1010111100011111", 
    30 => "0010110111101010", 31 => "1010101011001010", 32 => "0010011101000100", 
    33 => "1010000010010001", 34 => "1010100101101100", 35 => "0001100100101101", 
    36 => "1010111001101100", 37 => "0010110100111001", 38 => "0010101001111010", 
    39 => "0010101010110001", 40 => "1010011000110010", 41 => "1010110000110011", 
    42 => "0010101011110011", 43 => "0011001100100111", 44 => "1010011110110110", 
    45 => "1010010100100100", 46 => "1010100110001001", 47 => "1010010101010110", 
    48 => "0010000100110001", 49 => "0001101010101011", 50 => "1010100011001000", 
    51 => "1001111111100101" );

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

entity L2_wlo_L1_WEIGHTSbwn is
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

architecture arch of L2_wlo_L1_WEIGHTSbwn is
    component L2_wlo_L1_WEIGHTSbwn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbwn_rom_U :  component L2_wlo_L1_WEIGHTSbwn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


