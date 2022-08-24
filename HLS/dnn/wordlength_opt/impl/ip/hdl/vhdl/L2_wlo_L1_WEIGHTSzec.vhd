-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSzec_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSzec_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010010001011010", 1 => "0010110111010110", 2 => "1001111100010001", 
    3 => "1000010001100100", 4 => "0010011101110100", 5 => "1010111010010000", 
    6 => "0010100110010011", 7 => "1010001011001011", 8 => "1011001000011001", 
    9 => "1010111011100100", 10 => "1010001001101000", 11 => "0010011001000111", 
    12 => "1010100101110100", 13 => "1010110101011100", 14 => "0010110100000001", 
    15 => "1010110101011000", 16 => "0010011111101111", 17 => "0010110010100111", 
    18 => "0010010111001001", 19 => "1010101000001000", 20 => "1010101010000100", 
    21 => "0010011000111001", 22 => "1001111111101111", 23 => "0010101101111100", 
    24 => "0010000011100101", 25 => "0010101001011010", 26 => "0011000100010000", 
    27 => "0011000001111011", 28 => "1010110100001000", 29 => "0010110110000010", 
    30 => "1010111110101011", 31 => "1010101011000101", 32 => "0010100111011000", 
    33 => "1010010011010010", 34 => "1010101101110001", 35 => "1011001101000110", 
    36 => "1010100101000011", 37 => "1010010100100001", 38 => "1011001010101111", 
    39 => "1010010001010011", 40 => "0010110001101111", 41 => "1001100010010000", 
    42 => "0010111110000110", 43 => "0010110010111110", 44 => "1010100111011101", 
    45 => "0010010101001011", 46 => "1010001001111001", 47 => "0010101100101100", 
    48 => "1001111000000011", 49 => "0010110110011111", 50 => "0011000000100100", 
    51 => "0010100100010001" );

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

entity L2_wlo_L1_WEIGHTSzec is
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

architecture arch of L2_wlo_L1_WEIGHTSzec is
    component L2_wlo_L1_WEIGHTSzec_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSzec_rom_U :  component L2_wlo_L1_WEIGHTSzec_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


