-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbRq_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbRq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111100110011", 1 => "0000000001110", 2 => "1111101001100", 
    3 => "1110110001001", 4 => "0100001101111", 5 => "0001010101110", 
    6 => "0000001001000", 7 => "0001110011010", 8 => "1110011001110", 
    9 => "0010101100100", 10 => "0000110001110", 11 => "1111100110011", 
    12 => "0000110101100", 13 => "0001110100110", 14 => "1111010100110", 
    15 => "0001010100010", 16 => "0001001100101", 17 => "0000111110001", 
    18 => "1111000000000", 19 => "1110110100101", 20 => "0000000000001", 
    21 => "1111001010111", 22 => "1110110101110", 23 => "1110110001011", 
    24 => "1111110100101", 25 => "1111111111100", 26 => "0001001001001", 
    27 => "0000110000110", 28 => "0001010100111", 29 => "1110011111111", 
    30 => "1111111101010", 31 => "0000010011001", 32 => "1110001010111", 
    33 => "1110011011011", 34 => "0010010111010", 35 => "0000001000010", 
    36 => "0000100111001", 37 => "1111110010011", 38 => "1111111001111", 
    39 => "0001110011101", 40 => "1111100000001", 41 => "1011000000101", 
    42 => "1101000010101", 43 => "1110101110100", 44 => "0000001100000", 
    45 => "1110111110100", 46 => "0001110101110", 47 => "1111101001111", 
    48 => "0001110001000", 49 => "1111010011001", 50 => "0010011101110", 
    51 => "1111011001110" );

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

entity L2_wlo_218_L1_WEIbRq is
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

architecture arch of L2_wlo_218_L1_WEIbRq is
    component L2_wlo_218_L1_WEIbRq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbRq_rom_U :  component L2_wlo_218_L1_WEIbRq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


