-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbak_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbak_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111110011", 1 => "110000010", 2 => "111000100", 3 => "001110111", 
    4 => "110100010", 5 => "111010000", 6 => "111010101", 7 => "000100100", 
    8 => "101101001", 9 => "001111101", 10 => "001010100", 11 => "101100011", 
    12 => "111101111", 13 => "010010001", 14 => "111101111", 15 => "101100001", 
    16 => "111010011", 17 => "001110100", 18 => "000010011", 19 => "110100100", 
    20 => "110111001", 21 => "111110010", 22 => "110101110", 23 => "010011110", 
    24 => "110111100", 25 => "110110010", 26 => "001100101", 27 => "100000010", 
    28 => "000000000", 29 => "001011011", 30 => "111011100", 31 => "111001101", 
    32 => "001011100", 33 => "111111001", 34 => "111000110", 35 => "000011100", 
    36 => "111011011", 37 => "110011101", 38 => "010011010", 39 => "000000111", 
    40 => "000001100", 41 => "001011111", 42 => "111101100", 43 => "010110111", 
    44 => "111101101", 45 => "000110110", 46 => "111000110", 47 => "000001010", 
    48 => "000000110", 49 => "000111100", 50 => "010110001", 51 => "111110001" );

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

entity L2_wlo_166_L1_WEIbak is
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

architecture arch of L2_wlo_166_L1_WEIbak is
    component L2_wlo_166_L1_WEIbak_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbak_rom_U :  component L2_wlo_166_L1_WEIbak_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


