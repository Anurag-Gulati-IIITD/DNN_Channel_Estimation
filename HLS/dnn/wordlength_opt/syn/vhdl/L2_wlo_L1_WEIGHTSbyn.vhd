-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbyn_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbyn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010100000010100", 1 => "1010110101101011", 2 => "1010111000011110", 
    3 => "0010010010100001", 4 => "1010110010001011", 5 => "1011000100110000", 
    6 => "1010011010011101", 7 => "0010100110000010", 8 => "0011000110010010", 
    9 => "0010110101000010", 10 => "1010110001010100", 11 => "1010100011110011", 
    12 => "0010101110110011", 13 => "1010111011011001", 14 => "0010101011001000", 
    15 => "0011001000100011", 16 => "1010101001100101", 17 => "0011000000000001", 
    18 => "1001111111001011", 19 => "1010110101001101", 20 => "1010110011101000", 
    21 => "0010011000111010", 22 => "1010110000100000", 23 => "0010110100001101", 
    24 => "1011000001011100", 25 => "1010001010000001", 26 => "0010100101000010", 
    27 => "0010101101001000", 28 => "1011000110010010", 29 => "0011001010011011", 
    30 => "0010010000001010", 31 => "1011000000000010", 32 => "0010110110000110", 
    33 => "0010101111010110", 34 => "1011000010000001", 35 => "1010111111101111", 
    36 => "1010010100101111", 37 => "0011000011000111", 38 => "1011000010010001", 
    39 => "0010110010110010", 40 => "0010100000100000", 41 => "0010110011111101", 
    42 => "1011000011000000", 43 => "1011000001001000", 44 => "0010011010010101", 
    45 => "0010100101100100", 46 => "1010001111111001", 47 => "1010011100110100", 
    48 => "1010011110011011", 49 => "0010100100011000", 50 => "1011001001001110", 
    51 => "1010111001100010" );

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

entity L2_wlo_L1_WEIGHTSbyn is
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

architecture arch of L2_wlo_L1_WEIGHTSbyn is
    component L2_wlo_L1_WEIGHTSbyn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbyn_rom_U :  component L2_wlo_L1_WEIGHTSbyn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


