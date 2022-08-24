-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSocq_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSocq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010101100101101", 1 => "0010111100011101", 2 => "1010101000110100", 
    3 => "1010100101101001", 4 => "1010100101011010", 5 => "1011000011000110", 
    6 => "0010101001100000", 7 => "0010110100001100", 8 => "1001111101101010", 
    9 => "0010110001001111", 10 => "1010111111001000", 11 => "1010011000100111", 
    12 => "1011000101100100", 13 => "1011000100111111", 14 => "0010011010010001", 
    15 => "0010101001000011", 16 => "1010111011001011", 17 => "1010100000110010", 
    18 => "1010101010101001", 19 => "1010101000000100", 20 => "0001110000001111", 
    21 => "0010100101101000", 22 => "1010100101100101", 23 => "1010110001000101", 
    24 => "0010101011010010", 25 => "1010011000000011", 26 => "0011001001111011", 
    27 => "1010110011000101", 28 => "1010110000100001", 29 => "0010110010110110", 
    30 => "1010010111001100", 31 => "0010011011001101", 32 => "1010101011001101", 
    33 => "0010110000010001", 34 => "0010000101011011", 35 => "1010110011101000", 
    36 => "0010110000011010", 37 => "0010110011011011", 38 => "0010110111011001", 
    39 => "1010111110111110", 40 => "1010100010110110", 41 => "0010010110000100", 
    42 => "1010001100100100", 43 => "1010010011111011", 44 => "1010010100110101", 
    45 => "0010000110001001", 46 => "1010110100100110", 47 => "1010001011011111", 
    48 => "1010110011001111", 49 => "0010111000100011", 50 => "0010110000110000", 
    51 => "0011000001101100" );

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

entity L2_wlo_L1_WEIGHTSocq is
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

architecture arch of L2_wlo_L1_WEIGHTSocq is
    component L2_wlo_L1_WEIGHTSocq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSocq_rom_U :  component L2_wlo_L1_WEIGHTSocq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


