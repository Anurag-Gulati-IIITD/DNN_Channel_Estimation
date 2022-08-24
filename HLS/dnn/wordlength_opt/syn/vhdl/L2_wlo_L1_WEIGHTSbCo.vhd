-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbCo_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbCo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010110011010010", 1 => "0010111011101101", 2 => "0010100001110100", 
    3 => "1010110011110010", 4 => "1010110011111011", 5 => "0010110110100101", 
    6 => "1001111110010100", 7 => "1010111011101001", 8 => "1010101101110010", 
    9 => "1011000111111111", 10 => "0010110011011110", 11 => "1001011001100111", 
    12 => "0010101110011110", 13 => "0011000011010110", 14 => "1011010000010101", 
    15 => "1010101000011010", 16 => "0010010001011011", 17 => "1010110101010101", 
    18 => "1010100100110100", 19 => "0010111001011000", 20 => "0010100100011001", 
    21 => "1010011111010010", 22 => "0010110110110001", 23 => "1011000001011001", 
    24 => "0010100101101101", 25 => "1010101000001111", 26 => "1011001010100010", 
    27 => "1010100001001011", 28 => "0010100110110000", 29 => "1010110000000001", 
    30 => "0011001011000100", 31 => "0010110010000001", 32 => "1001111000011111", 
    33 => "1010110101000110", 34 => "0010111110011010", 35 => "0010011010010100", 
    36 => "0010001101011010", 37 => "1010011110111001", 38 => "1001100100100100", 
    39 => "1010110101000100", 40 => "1010010001101001", 41 => "0010110111011100", 
    42 => "0011000010011011", 43 => "0010100010111110", 44 => "0010111000111000", 
    45 => "0010110101101101", 46 => "0001011111011101", 47 => "1010101100001000", 
    48 => "1010010001001001", 49 => "1011000010111001", 50 => "0010110101110000", 
    51 => "1010100111111010" );

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

entity L2_wlo_L1_WEIGHTSbCo is
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

architecture arch of L2_wlo_L1_WEIGHTSbCo is
    component L2_wlo_L1_WEIGHTSbCo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbCo_rom_U :  component L2_wlo_L1_WEIGHTSbCo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


