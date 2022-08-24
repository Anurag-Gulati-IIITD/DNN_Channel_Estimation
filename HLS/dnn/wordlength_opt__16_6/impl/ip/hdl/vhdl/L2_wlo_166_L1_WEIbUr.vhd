-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbUr_rom is 
    generic(
             DWIDTH     : integer := 10; 
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


architecture rtl of L2_wlo_166_L1_WEIbUr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111010011", 1 => "0000101011", 2 => "1110100100", 3 => "1111011111", 
    4 => "1011011001", 5 => "1100011111", 6 => "1111110101", 7 => "0000000100", 
    8 => "0001011001", 9 => "1010100001", 10 => "0000011011", 11 => "0011010010", 
    12 => "0000100011", 13 => "1101100110", 14 => "1111100111", 15 => "0001110001", 
    16 => "1111000001", 17 => "0000100101", 18 => "0000100010", 19 => "1101001100", 
    20 => "0000100001", 21 => "0000101110", 22 => "0001000001", 23 => "1110010011", 
    24 => "1110100001", 25 => "0000000110", 26 => "0000100100", 27 => "1111111110", 
    28 => "1101001110", 29 => "0010110110", 30 => "0001110011", 31 => "1111111110", 
    32 => "0001111011", 33 => "0011110110", 34 => "1111101001", 35 => "1111011011", 
    36 => "1111001010", 37 => "1111111110", 38 => "0000011011", 39 => "0001010010", 
    40 => "0001001001", 41 => "0010000001", 42 => "0010001101", 43 => "1101100100", 
    44 => "0000110010", 45 => "0000111110", 46 => "0001101101", 47 => "0000011000", 
    48 => "1111000110", 49 => "0000111101", 50 => "1111000000", 51 => "1110010000" );

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

entity L2_wlo_166_L1_WEIbUr is
    generic (
        DataWidth : INTEGER := 10;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEIbUr is
    component L2_wlo_166_L1_WEIbUr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbUr_rom_U :  component L2_wlo_166_L1_WEIbUr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


