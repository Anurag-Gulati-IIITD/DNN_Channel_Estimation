-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbIp_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbIp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100111000011", 1 => "0010100000001010", 2 => "1010111000100011", 
    3 => "0010001011110011", 4 => "0011000001000101", 5 => "0010111111100000", 
    6 => "0010111000101110", 7 => "0001110110110010", 8 => "1010101001001111", 
    9 => "0010010111001011", 10 => "0010010101001100", 11 => "1011001000011111", 
    12 => "0010011011001010", 13 => "0011000110001111", 14 => "1011001001001011", 
    15 => "0011000100000100", 16 => "1001110011111100", 17 => "0010100110111110", 
    18 => "0010011000000010", 19 => "1010110001010001", 20 => "1010111011111011", 
    21 => "0010110011010111", 22 => "0010110011001100", 23 => "1010111000011110", 
    24 => "1010101100101111", 25 => "1010011100001101", 26 => "0010111010110011", 
    27 => "1010011111000001", 28 => "1010000110100010", 29 => "1010100000001100", 
    30 => "0011000101001010", 31 => "1010111011000111", 32 => "1010010110100110", 
    33 => "1010000011010000", 34 => "0010110111111110", 35 => "0010001011111010", 
    36 => "1001000111000100", 37 => "0010100000001010", 38 => "0010000111011100", 
    39 => "0011000110101010", 40 => "0010010100110101", 41 => "0001111001011101", 
    42 => "0010010110011001", 43 => "1011000110101000", 44 => "0010000011010010", 
    45 => "1010110001001111", 46 => "1010110000001010", 47 => "1010100011010100", 
    48 => "0010101101001001", 49 => "1011000000001011", 50 => "0011000011000101", 
    51 => "1010111101101100" );

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

entity L2_wlo_L1_WEIGHTSbIp is
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

architecture arch of L2_wlo_L1_WEIGHTSbIp is
    component L2_wlo_L1_WEIGHTSbIp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbIp_rom_U :  component L2_wlo_L1_WEIGHTSbIp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


