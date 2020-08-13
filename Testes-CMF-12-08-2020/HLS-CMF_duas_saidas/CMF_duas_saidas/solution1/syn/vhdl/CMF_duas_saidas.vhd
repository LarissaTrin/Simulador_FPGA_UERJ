-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CMF_duas_saidas is
port (
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    Saida1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    Saida1_ap_vld : OUT STD_LOGIC;
    Saida2 : OUT STD_LOGIC_VECTOR (31 downto 0);
    Saida2_ap_vld : OUT STD_LOGIC;
    Entrada : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of CMF_duas_saidas is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "CMF_duas_saidas,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.702000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=78,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_1 : BOOLEAN := true;



begin



    Saida1 <= std_logic_vector(unsigned(Entrada) + unsigned(ap_const_lv32_1));

    Saida1_ap_vld_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_1)) then 
            Saida1_ap_vld <= ap_const_logic_1;
        else 
            Saida1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    Saida2 <= std_logic_vector(unsigned(Entrada) + unsigned(ap_const_lv32_2));

    Saida2_ap_vld_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_1)) then 
            Saida2_ap_vld <= ap_const_logic_1;
        else 
            Saida2_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;
end behav;
