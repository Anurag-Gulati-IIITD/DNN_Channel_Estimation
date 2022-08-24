-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbAo_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbAo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010101100110010", 1 => "1010000101011011", 2 => "1010111011001101", 
    3 => "1010010100010100", 4 => "0010110010000110", 5 => "1011000001110101", 
    6 => "0001100011011100", 7 => "1010000110101001", 8 => "1010111100110100", 
    9 => "0010111011110000", 10 => "0010101011100110", 11 => "0010111111110100", 
    12 => "0001111011100100", 13 => "0010101111100010", 14 => "0010110111011101", 
    15 => "0010101001000100", 16 => "0010101010011111", 17 => "0001010100010010", 
    18 => "1010100111100110", 19 => "0010101011101101", 20 => "0010110001111011", 
    21 => "0010010000101011", 22 => "1010110111000001", 23 => "0010111010000101", 
    24 => "0001110011100110", 25 => "0010011110100111", 26 => "1011000010001000", 
    27 => "1010010110110110", 28 => "0010011010100000", 29 => "0010110101111111", 
    30 => "1010100010110011", 31 => "0001110111010011", 32 => "0010100010100001", 
    33 => "1011001000000110", 34 => "0010100101011101", 35 => "1011010011000010", 
    36 => "1010111110010111", 37 => "1011000110001010", 38 => "0010100010110001", 
    39 => "1010111010010100", 40 => "0010100101101110", 41 => "1010111100010010", 
    42 => "0010001100111000", 43 => "1010110000010011", 44 => "0010100101100000", 
    45 => "1010011111010001", 46 => "1010100011111100", 47 => "0010111100101000", 
    48 => "1010011001011101", 49 => "1010101011100100", 50 => "0010100001001001", 
    51 => "0010101111010110" );

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

entity L2_wlo_L1_WEIGHTSbAo is
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

architecture arch of L2_wlo_L1_WEIGHTSbAo is
    component L2_wlo_L1_WEIGHTSbAo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbAo_rom_U :  component L2_wlo_L1_WEIGHTSbAo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


