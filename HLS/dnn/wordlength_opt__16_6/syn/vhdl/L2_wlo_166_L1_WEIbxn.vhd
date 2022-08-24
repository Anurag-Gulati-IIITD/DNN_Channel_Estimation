-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbxn_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbxn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000011110", 1 => "110011100", 2 => "101110010", 3 => "111110001", 
    4 => "000010001", 5 => "100100110", 6 => "110000111", 7 => "110111111", 
    8 => "101000100", 9 => "110010001", 10 => "000101001", 11 => "110011101", 
    12 => "110110110", 13 => "101000000", 14 => "000100011", 15 => "000010001", 
    16 => "000110000", 17 => "001011100", 18 => "111110100", 19 => "110110010", 
    20 => "110111111", 21 => "000111011", 22 => "000111100", 23 => "000000110", 
    24 => "110011100", 25 => "000010110", 26 => "000000000", 27 => "011001001", 
    28 => "111010100", 29 => "011010011", 30 => "110111001", 31 => "000001000", 
    32 => "111011001", 33 => "000101110", 34 => "110101101", 35 => "110011001", 
    36 => "111011101", 37 => "000010111", 38 => "100001111", 39 => "000111010", 
    40 => "001110000", 41 => "000111001", 42 => "010110001", 43 => "000010001", 
    44 => "111011101", 45 to 46=> "001000011", 47 => "001111111", 48 => "111011001", 
    49 => "010001100", 50 => "010110010", 51 => "110110100" );

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

entity L2_wlo_166_L1_WEIbxn is
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

architecture arch of L2_wlo_166_L1_WEIbxn is
    component L2_wlo_166_L1_WEIbxn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbxn_rom_U :  component L2_wlo_166_L1_WEIbxn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


