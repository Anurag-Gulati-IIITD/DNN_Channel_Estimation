-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbsm_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbsm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100010101110", 1 => "1010111100011111", 2 => "0010101000001011", 
    3 => "0011001000101101", 4 => "1010110011110010", 5 => "0010101101000001", 
    6 => "0010101011011001", 7 => "0010010101110011", 8 => "0010101000000010", 
    9 => "0010100100010101", 10 => "0001111001000101", 11 => "0010100000101001", 
    12 => "1010000100011010", 13 => "1010000111000111", 14 => "0010101100100100", 
    15 => "0011010000111000", 16 => "1010111001000110", 17 => "1010101101000001", 
    18 => "1010110100010110", 19 => "1010110010001101", 20 => "1010101001001111", 
    21 => "0010010011001101", 22 => "0001111001100010", 23 => "0010110001010111", 
    24 => "0010111011000110", 25 => "0010011011111001", 26 => "1010010010001100", 
    27 => "0001011001101010", 28 => "1010011011101001", 29 => "1010010111001000", 
    30 => "1010101111001010", 31 => "0010010011100110", 32 => "0010110101110011", 
    33 => "0010100101100111", 34 => "0010101010110001", 35 => "0010110000001101", 
    36 => "0010110111001011", 37 => "1010100110011000", 38 => "1010010001100100", 
    39 => "1010110010111001", 40 => "1010100000111101", 41 => "0010111001001100", 
    42 => "1001011001000101", 43 => "1011001101101011", 44 => "0010011000000110", 
    45 => "1010010101111110", 46 => "1010111010101001", 47 => "1010001001111001", 
    48 => "0010101011010011", 49 => "0001111100001111", 50 => "1010110000010111", 
    51 => "1010010110001101" );

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

entity L2_wlo_L1_WEIGHTSbsm is
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

architecture arch of L2_wlo_L1_WEIGHTSbsm is
    component L2_wlo_L1_WEIGHTSbsm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbsm_rom_U :  component L2_wlo_L1_WEIGHTSbsm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


