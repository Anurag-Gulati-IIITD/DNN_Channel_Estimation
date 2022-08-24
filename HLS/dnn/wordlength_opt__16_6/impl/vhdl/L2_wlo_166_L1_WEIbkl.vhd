-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbkl_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbkl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111100101", 1 => "0000010000", 2 => "0010101010", 3 => "0000101110", 
    4 => "1101110100", 5 => "0011111010", 6 => "0001011001", 7 => "1011100101", 
    8 => "1111110111", 9 => "0010110001", 10 => "0000001001", 11 => "1110111100", 
    12 => "1110100101", 13 => "0001010010", 14 => "0000001101", 15 => "1111000011", 
    16 => "0000110111", 17 => "1101100011", 18 => "1111111000", 19 => "1111011110", 
    20 => "1110100000", 21 => "1111101101", 22 => "0010100011", 23 => "1110111101", 
    24 => "0000001100", 25 => "0001001011", 26 => "0010010010", 27 => "0010101101", 
    28 => "1111110001", 29 => "1010100110", 30 => "1111110101", 31 => "0001110001", 
    32 => "0001001000", 33 => "1111100100", 34 => "0000111000", 35 => "1111010110", 
    36 => "0001011111", 37 => "1110001101", 38 => "1110101000", 39 => "1110001001", 
    40 => "1111100011", 41 => "0010100000", 42 => "1100100010", 43 => "1111101010", 
    44 => "1111000111", 45 => "0001100011", 46 => "1111011011", 47 => "1110101011", 
    48 => "1110110010", 49 => "1111101110", 50 => "0001111111", 51 => "0001100111" );

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

entity L2_wlo_166_L1_WEIbkl is
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

architecture arch of L2_wlo_166_L1_WEIbkl is
    component L2_wlo_166_L1_WEIbkl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbkl_rom_U :  component L2_wlo_166_L1_WEIbkl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


