-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbFp_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbFp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000100110", 1 => "0010010111", 2 => "0001111101", 3 => "1110010010", 
    4 => "0001001100", 5 => "0010010010", 6 => "0000010100", 7 => "1111011100", 
    8 => "1101001101", 9 => "1101111010", 10 => "0000001100", 11 => "1111110000", 
    12 => "1111001100", 13 => "0000101101", 14 => "1111010110", 15 => "1100101100", 
    16 => "1111100011", 17 => "1110100110", 18 => "1111100000", 19 => "0000010000", 
    20 => "0000000100", 21 => "1111111100", 22 => "0000010000", 23 => "1101110001", 
    24 => "0000110001", 25 => "1111011111", 26 => "0010110110", 27 => "0000100001", 
    28 => "0001010001", 29 => "1101100110", 30 => "1111110010", 31 => "0001011110", 
    32 => "1111010100", 33 => "1101111000", 34 => "1111111000", 35 => "1111010100", 
    36 => "0000001101", 37 => "1110110100", 38 => "1111100010", 39 => "1110110011", 
    40 => "1110001101", 41 => "1111000000", 42 => "0010100000", 43 => "0100000011", 
    44 => "1111000110", 45 => "0000010001", 46 => "0001110011", 47 => "0001000100", 
    48 => "0001001000", 49 => "0000001110", 50 => "0010011110", 51 => "0000001010" );

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

entity L2_wlo_166_L1_WEIbFp is
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

architecture arch of L2_wlo_166_L1_WEIbFp is
    component L2_wlo_166_L1_WEIbFp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbFp_rom_U :  component L2_wlo_166_L1_WEIbFp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


