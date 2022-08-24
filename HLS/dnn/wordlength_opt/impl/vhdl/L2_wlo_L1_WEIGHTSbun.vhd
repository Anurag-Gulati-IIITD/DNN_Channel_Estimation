-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbun_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbun_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010001101111001", 1 => "0010010110110000", 2 => "0010111010101101", 
    3 => "1010010011001000", 4 => "0010100101011001", 5 => "0010101101110110", 
    6 => "0010110110111001", 7 => "1010101001110010", 8 => "1011001000000000", 
    9 => "1011000001110111", 10 => "0011000011101111", 11 => "1010001011001100", 
    12 => "1010110001010110", 13 => "1010011111001101", 14 => "0011000110000110", 
    15 => "1010101111000101", 16 => "0010011000011011", 17 => "1010111110100101", 
    18 => "0010100110010111", 19 => "0010011001000110", 20 => "1010100001000100", 
    21 => "1010001001101011", 22 => "0010100011010101", 23 => "0010011111100011", 
    24 => "0010001111100101", 25 => "0010101100000100", 26 => "0010101101101111", 
    27 => "0010100111111000", 28 => "0010010011101010", 29 => "1001001111101100", 
    30 => "1010110011101110", 31 => "0010101110001110", 32 => "1010111000111010", 
    33 => "1001011000000001", 34 => "0010010001110110", 35 => "0010101111110100", 
    36 => "1010110010101001", 37 => "1011000010011000", 38 => "1010100001011101", 
    39 => "1010101111001100", 40 => "1010101111111000", 41 => "1010111000111111", 
    42 => "0010100010010010", 43 => "0010101000010000", 44 => "1010110010000001", 
    45 => "1010100010011100", 46 => "0010111100100010", 47 => "1001011101011000", 
    48 => "0010100001000001", 49 => "1010111000011000", 50 => "0011001001011101", 
    51 => "0010101110111100" );

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

entity L2_wlo_L1_WEIGHTSbun is
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

architecture arch of L2_wlo_L1_WEIGHTSbun is
    component L2_wlo_L1_WEIGHTSbun_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbun_rom_U :  component L2_wlo_L1_WEIGHTSbun_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


