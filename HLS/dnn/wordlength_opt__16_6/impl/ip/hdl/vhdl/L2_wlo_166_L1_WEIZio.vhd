-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIZio_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIZio_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111100001", 1 => "0001110001", 2 => "0001000000", 3 => "0001001110", 
    4 => "1011111000", 5 => "1111000110", 6 => "1110010111", 7 => "1110000000", 
    8 => "0010011100", 9 => "1101101100", 10 => "1110001001", 11 => "0000011100", 
    12 => "1111010011", 13 => "1110111111", 14 => "1110010110", 15 => "1111001110", 
    16 => "1111000000", 17 => "1111101010", 18 => "0000110011", 19 => "0000000010", 
    20 => "0001000100", 21 => "1111100111", 22 => "0000010100", 23 => "1111000001", 
    24 => "1111001111", 25 => "1111110001", 26 => "1101101100", 27 => "1111110110", 
    28 => "1110101010", 29 => "1111101100", 30 => "0001011000", 31 => "0000011111", 
    32 => "0010001111", 33 => "0001110001", 34 => "1111010110", 35 => "0001110100", 
    36 => "0000011100", 37 => "0001001011", 38 => "0000100100", 39 => "1110110000", 
    40 => "0000111111", 41 => "0010110000", 42 => "0010100000", 43 => "1111110100", 
    44 => "0000000001", 45 => "0000011111", 46 => "1110000111", 47 => "0000001110", 
    48 => "1111010000", 49 => "1111111011", 50 => "1111010100", 51 => "0001000000" );

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

entity L2_wlo_166_L1_WEIZio is
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

architecture arch of L2_wlo_166_L1_WEIZio is
    component L2_wlo_166_L1_WEIZio_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIZio_rom_U :  component L2_wlo_166_L1_WEIZio_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


