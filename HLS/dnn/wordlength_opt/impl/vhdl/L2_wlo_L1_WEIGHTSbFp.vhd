-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbFp_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbFp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010010010010010", 1 => "1011000000110011", 2 => "0010101010110100", 
    3 => "1010001001110001", 4 => "1001111110101010", 5 => "1010101001001010", 
    6 => "0010000000110010", 7 => "0010100010110000", 8 => "0010111011011011", 
    9 => "0011000101001111", 10 => "1010100011000000", 11 => "0010110110011011", 
    12 => "1010111001101111", 13 => "1011000100110101", 14 => "0010111010101110", 
    15 => "1010011111110011", 16 => "1010000011011110", 17 => "1011000000011111", 
    18 => "1010110010010011", 19 => "0010000010011110", 20 => "0010110000001000", 
    21 => "0001000000111110", 22 => "1010010110001101", 23 => "0010011100000100", 
    24 => "0000011011010001", 25 => "0000111011101110", 26 => "0010011010101000", 
    27 => "0010100000001011", 28 => "1011000101101100", 29 => "0010001011111001", 
    30 => "1010111000100000", 31 => "0010111101001100", 32 => "1010101000000010", 
    33 => "0010111101100101", 34 => "0001110101110001", 35 => "0010111100111111", 
    36 => "1001011001011001", 37 => "0010100110100010", 38 => "1010011111110100", 
    39 => "1010111110011000", 40 => "1001011110110000", 41 => "0010010100100001", 
    42 => "1011000011010101", 43 => "1010011011111111", 44 => "1010010011011100", 
    45 => "1010101101010001", 46 => "1001111011111111", 47 => "1010010010100011", 
    48 => "0010100101010111", 49 => "0010110010001101", 50 => "1011000010011111", 
    51 => "0010100011010100" );

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

entity L2_wlo_L1_WEIGHTSbFp is
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

architecture arch of L2_wlo_L1_WEIGHTSbFp is
    component L2_wlo_L1_WEIGHTSbFp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbFp_rom_U :  component L2_wlo_L1_WEIGHTSbFp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


