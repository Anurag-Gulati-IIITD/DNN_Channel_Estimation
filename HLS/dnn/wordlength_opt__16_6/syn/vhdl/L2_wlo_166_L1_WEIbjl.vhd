-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbjl_rom is 
    generic(
             DWIDTH     : integer := 9; 
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


architecture rtl of L2_wlo_166_L1_WEIbjl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010011", 1 => "110010101", 2 => "001111011", 3 => "110101001", 
    4 => "111111000", 5 => "011010100", 6 => "001011011", 7 => "110111110", 
    8 => "001011000", 9 => "000011011", 10 => "001011111", 11 => "000101001", 
    12 => "111100100", 13 => "010001110", 14 => "110101111", 15 => "110101010", 
    16 => "111110011", 17 => "110011110", 18 => "111110001", 19 => "001001011", 
    20 => "000010101", 21 => "111101000", 22 => "000110101", 23 => "001000010", 
    24 => "000011100", 25 => "001001001", 26 => "010011110", 27 => "001110100", 
    28 => "111110011", 29 => "100101011", 30 => "000001110", 31 => "110110111", 
    32 => "000110001", 33 => "111111000", 34 => "000110100", 35 => "001000001", 
    36 => "111111101", 37 => "101111010", 38 => "110000111", 39 => "111111001", 
    40 => "110111110", 41 => "000001011", 42 => "111100111", 43 => "010001111", 
    44 => "110100110", 45 => "110100001", 46 => "001101011", 47 => "111001101", 
    48 => "110111110", 49 => "101000101", 50 => "110100111", 51 => "000110111" );

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

entity L2_wlo_166_L1_WEIbjl is
    generic (
        DataWidth : INTEGER := 9;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEIbjl is
    component L2_wlo_166_L1_WEIbjl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbjl_rom_U :  component L2_wlo_166_L1_WEIbjl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


