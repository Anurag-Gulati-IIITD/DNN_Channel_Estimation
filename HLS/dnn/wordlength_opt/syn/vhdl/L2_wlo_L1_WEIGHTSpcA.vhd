-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSpcA_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSpcA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010001010110101", 1 => "1001100010110110", 2 => "1010101011111000", 
    3 => "1010100001010010", 4 => "0010111101110110", 5 => "1011001000111010", 
    6 => "0010110111111101", 7 => "0011001010001111", 8 => "0010101010001110", 
    9 => "1010101101000111", 10 => "1011000111000000", 11 => "0010110010110001", 
    12 => "1010011000010010", 13 => "1010111010100000", 14 => "0010001000010110", 
    15 => "0010000001000111", 16 => "0010000000110100", 17 => "0010110011111001", 
    18 => "0001100101001110", 19 => "1010110100010110", 20 => "1010001100101100", 
    21 => "0010110100100000", 22 => "1010111110001101", 23 => "1010111001100010", 
    24 => "0001011100000001", 25 => "1001010001001101", 26 => "0010111111000000", 
    27 => "1010111110000011", 28 => "1001100100001000", 29 => "0011000010101001", 
    30 => "0010110000110001", 31 => "0010100010001000", 32 => "1010100010101000", 
    33 => "0010110010100101", 34 => "0010000000011100", 35 => "1010110011101001", 
    36 => "0001110100000001", 37 => "0011001111010101", 38 => "0010111100010011", 
    39 => "0010000010110111", 40 => "1001111110010010", 41 => "1010110011110001", 
    42 => "0010011110101001", 43 => "1010010101100111", 44 => "0010100100001110", 
    45 => "1010101010000101", 46 => "0010001111010001", 47 => "1010101100000000", 
    48 => "0010110011101100", 49 => "1010100000000111", 50 => "1010110100101101", 
    51 => "1010100111010101" );

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

entity L2_wlo_L1_WEIGHTSpcA is
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

architecture arch of L2_wlo_L1_WEIGHTSpcA is
    component L2_wlo_L1_WEIGHTSpcA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSpcA_rom_U :  component L2_wlo_L1_WEIGHTSpcA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


