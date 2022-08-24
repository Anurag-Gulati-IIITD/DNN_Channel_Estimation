-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbyn_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbyn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111010100", 1 => "0001110010", 2 => "1110101011", 3 => "1110110101", 
    4 => "0001001110", 5 => "1010100111", 6 => "1111001000", 7 => "1111110101", 
    8 => "1110001111", 9 => "1110110011", 10 => "0010100001", 11 => "0000100111", 
    12 => "0001100110", 13 => "1110111100", 14 => "1111011010", 15 => "1110100010", 
    16 => "0000111100", 17 => "0000001101", 18 => "0000011101", 19 => "1111110001", 
    20 to 21=> "0000011100", 22 => "1111111111", 23 => "1101111010", 24 => "1110011110", 
    25 => "1111101110", 26 => "1110111001", 27 => "0010011100", 28 => "0001100110", 
    29 => "0100100010", 30 => "0000000010", 31 => "1111101100", 32 => "0000001000", 
    33 => "1111101101", 34 => "0000000010", 35 => "1100010110", 36 => "1111100010", 
    37 => "1110100001", 38 => "1110110110", 39 => "0000001000", 40 => "0000110011", 
    41 => "1110010011", 42 => "0001001110", 43 => "0010010011", 44 => "0001100010", 
    45 => "1111100010", 46 => "0001111101", 47 => "1111111010", 48 => "1111111101", 
    49 => "0001011001", 50 => "0010001011", 51 => "1110111001" );

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

entity L2_wlo_166_L1_WEIbyn is
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

architecture arch of L2_wlo_166_L1_WEIbyn is
    component L2_wlo_166_L1_WEIbyn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbyn_rom_U :  component L2_wlo_166_L1_WEIbyn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


