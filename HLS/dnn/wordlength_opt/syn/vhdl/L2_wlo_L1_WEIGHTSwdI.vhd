-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSwdI_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSwdI_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010110011000111", 1 => "1011000111011111", 2 => "0010111110101000", 
    3 => "1010101110110100", 4 => "0010000100110001", 5 => "0011010010100001", 
    6 => "0010110000011011", 7 => "0010001010001011", 8 => "0010111011110101", 
    9 => "0010110011000011", 10 => "1011000000011001", 11 => "0010111010010010", 
    12 => "1010001101101011", 13 => "0010111110011100", 14 => "1010100010101000", 
    15 => "0010100111010010", 16 => "1010000010001111", 17 => "1010110101011110", 
    18 => "1010110011000110", 19 => "0010101011110110", 20 => "1010010010110110", 
    21 => "1010110111110011", 22 => "0010010011011001", 23 => "0010111101110011", 
    24 => "0010101111010000", 25 => "1010000101101100", 26 => "0010111000000011", 
    27 => "1011000101111011", 28 => "1010101001111000", 29 => "1011010011011011", 
    30 => "0010100100111000", 31 => "0001010110010100", 32 => "1010101011000111", 
    33 => "1010100001001110", 34 => "0011001000000101", 35 => "0010110000000011", 
    36 => "1010010110110011", 37 => "0010111000000110", 38 => "0011000110011010", 
    39 => "1010110011101011", 40 => "1010110101011001", 41 => "1010011011101110", 
    42 => "0010010111101111", 43 => "1000101101111001", 44 => "1010110101011010", 
    45 => "1001111110011111", 46 => "0010001111011111", 47 => "1011000011000110", 
    48 => "0001010100001011", 49 => "1010111111100101", 50 => "1011000000110011", 
    51 => "0010111000010110" );

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

entity L2_wlo_L1_WEIGHTSwdI is
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

architecture arch of L2_wlo_L1_WEIGHTSwdI is
    component L2_wlo_L1_WEIGHTSwdI_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSwdI_rom_U :  component L2_wlo_L1_WEIGHTSwdI_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


