-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbFp_rom is 
    generic(
             DWIDTH     : integer := 13; 
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


architecture rtl of L2_wlo_218_L1_WEIbFp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000100110000", 1 => "0010010111101", 2 => "0001111101100", 
    3 => "1110010010101", 4 => "0001001100010", 5 => "0010010010011", 
    6 => "0000010100110", 7 => "1111011100110", 8 => "1101001101101", 
    9 => "1101111010101", 10 => "0000001100100", 11 => "1111110000101", 
    12 => "1111001100110", 13 => "0000101101110", 14 => "1111010110011", 
    15 => "1100101100111", 16 => "1111100011000", 17 => "1110100110100", 
    18 => "1111100000001", 19 => "0000010000001", 20 => "0000000100110", 
    21 => "1111111100111", 22 => "0000010000001", 23 => "1101110001010", 
    24 => "0000110001011", 25 => "1111011111011", 26 => "0010110110010", 
    27 => "0000100001111", 28 => "0001010001001", 29 => "1101100110100", 
    30 => "1111110010011", 31 => "0001011110111", 32 => "1111010100011", 
    33 => "1101111000101", 34 => "1111111000001", 35 => "1111010100110", 
    36 => "0000001101111", 37 => "1110110100011", 38 => "1111100010011", 
    39 => "1110110011010", 40 => "1110001101101", 41 => "1111000000010", 
    42 => "0010100000111", 43 => "0100000011010", 44 => "1111000110010", 
    45 => "0000010001001", 46 => "0001110011001", 47 => "0001000100110", 
    48 => "0001001000110", 49 => "0000001110101", 50 => "0010011110111", 
    51 => "0000001010001" );

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

entity L2_wlo_218_L1_WEIbFp is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIbFp is
    component L2_wlo_218_L1_WEIbFp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbFp_rom_U :  component L2_wlo_218_L1_WEIbFp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


