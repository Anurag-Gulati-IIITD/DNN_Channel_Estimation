-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS6jw_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS6jw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010110010110000", 1 => "1010011101000101", 2 => "0010011111010101", 
    3 => "0011000011011001", 4 => "1010110100010010", 5 => "1011000010001001", 
    6 => "1010111000000110", 7 => "0010001111110011", 8 => "1011000100101100", 
    9 => "1010110110111001", 10 => "1011000011110011", 11 => "1011001100001101", 
    12 => "0010100101010111", 13 => "1010010111101001", 14 => "0010101000011001", 
    15 => "0010011111010000", 16 => "1001011000110110", 17 => "1010011110101111", 
    18 => "1001100111110101", 19 => "1010000010101100", 20 => "1010110011010110", 
    21 => "0010011111001011", 22 => "1010111110110101", 23 => "0001111110001100", 
    24 => "1010101011101001", 25 => "0010110001011100", 26 => "1010110011001101", 
    27 => "1011000100010101", 28 => "1010110001010000", 29 => "0010111011111001", 
    30 => "1010110000001011", 31 => "1010111011011010", 32 => "1010110001011101", 
    33 => "1010101010111111", 34 => "1010100011001111", 35 => "0011001000111100", 
    36 => "1001101001001010", 37 => "0010110110010101", 38 => "0010111000110001", 
    39 => "0010011011001000", 40 => "0010110000110100", 41 => "0010011110010011", 
    42 => "0010111010011010", 43 => "0010011001011100", 44 => "0010111100111111", 
    45 => "1010111000001011", 46 => "1010111110010011", 47 => "0010110100101101", 
    48 => "1010101000110000", 49 => "0010110111010111", 50 => "0010111110001000", 
    51 => "1010110101100101" );

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

entity L2_wlo_L1_WEIGHTS6jw is
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

architecture arch of L2_wlo_L1_WEIGHTS6jw is
    component L2_wlo_L1_WEIGHTS6jw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS6jw_rom_U :  component L2_wlo_L1_WEIGHTS6jw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


