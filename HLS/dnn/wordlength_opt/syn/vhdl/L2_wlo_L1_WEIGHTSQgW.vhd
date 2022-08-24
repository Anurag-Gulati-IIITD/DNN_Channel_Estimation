-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSQgW_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSQgW_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010011000110101", 1 => "1010111011010000", 2 => "0011000011100100", 
    3 => "0010011101110101", 4 => "1010101101000101", 5 => "1010101111100011", 
    6 => "1010101100010010", 7 => "1010110001010000", 8 => "0011000000011110", 
    9 => "1010100111100001", 10 => "1010011100110011", 11 => "0010111011110110", 
    12 => "1010110011011001", 13 => "1011000011011100", 14 => "0010110101001101", 
    15 => "1010111111100000", 16 => "1010101100101001", 17 => "1010111001011000", 
    18 => "1010010011111010", 19 => "0010000001100010", 20 => "0001101100001100", 
    21 => "1010111100010101", 22 => "0010010100100100", 23 => "0010110101100010", 
    24 => "1001110010101101", 25 => "0010010111010001", 26 => "0010001110110100", 
    27 => "0010101001010001", 28 => "1010011110110110", 29 => "1010010000000001", 
    30 => "1011000101100100", 31 => "0010110011100110", 32 => "0010111111111011", 
    33 => "0010101100101000", 34 => "1010110110011111", 35 => "0011000110011001", 
    36 => "0010011011100111", 37 => "0010111110000011", 38 => "1010101001010000", 
    39 => "1010111101101010", 40 => "1010110110101011", 41 => "0010110001000000", 
    42 => "0010101011010110", 43 => "0010111111101010", 44 => "0010110111111010", 
    45 => "0010101101011110", 46 => "1010100101010011", 47 => "1010011110101110", 
    48 => "0010100100001111", 49 => "0010111111100110", 50 => "1010100111111001", 
    51 => "0011000011111010" );

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

entity L2_wlo_L1_WEIGHTSQgW is
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

architecture arch of L2_wlo_L1_WEIGHTSQgW is
    component L2_wlo_L1_WEIGHTSQgW_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSQgW_rom_U :  component L2_wlo_L1_WEIGHTSQgW_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


