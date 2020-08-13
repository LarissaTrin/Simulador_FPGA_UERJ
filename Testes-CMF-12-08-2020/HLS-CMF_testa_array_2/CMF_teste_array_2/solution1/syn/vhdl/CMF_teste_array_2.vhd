-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CMF_teste_array_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    pulsoSinc : IN STD_LOGIC_VECTOR (0 downto 0);
    Saida : OUT STD_LOGIC_VECTOR (14 downto 0);
    Saida_ap_vld : OUT STD_LOGIC );
end;


architecture behav of CMF_teste_array_2 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "CMF_teste_array_2,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.433125,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=24,HLS_SYN_LUT=89,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv13_1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_const_lv15_1 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal SimCLK : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal k : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    signal dados1_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal dados1_ce0 : STD_LOGIC;
    signal dados1_q0 : STD_LOGIC_VECTOR (5 downto 0);
    signal storemerge_fu_112_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_phi_mux_tmp_6_phi_fu_63_p4 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_fu_73_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_fu_127_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_1_fu_90_p4 : STD_LOGIC_VECTOR (12 downto 0);
    signal icmp_fu_100_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_106_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);

    component CMF_teste_array_2bkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (5 downto 0) );
    end component;



begin
    dados1_U : component CMF_teste_array_2bkb
    generic map (
        DataWidth => 6,
        AddressRange => 5,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => dados1_address0,
        ce0 => dados1_ce0,
        q0 => dados1_q0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (tmp_fu_73_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                SimCLK <= pulsoSinc;
                k <= storemerge_fu_112_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    Saida <= std_logic_vector(IEEE.numeric_std.resize(unsigned(dados1_q0),15));

    Saida_ap_vld_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            Saida_ap_vld <= ap_const_logic_1;
        else 
            Saida_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_done_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_tmp_6_phi_fu_63_p4_assign_proc : process(ap_CS_fsm_state1, k, storemerge_fu_112_p3, tmp_fu_73_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
            if ((tmp_fu_73_p2 = ap_const_lv1_0)) then 
                ap_phi_mux_tmp_6_phi_fu_63_p4 <= k;
            elsif ((tmp_fu_73_p2 = ap_const_lv1_1)) then 
                ap_phi_mux_tmp_6_phi_fu_63_p4 <= storemerge_fu_112_p3;
            else 
                ap_phi_mux_tmp_6_phi_fu_63_p4 <= "XXXXXXXXXXXXXXX";
            end if;
        else 
            ap_phi_mux_tmp_6_phi_fu_63_p4 <= "XXXXXXXXXXXXXXX";
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    dados1_address0 <= tmp_7_fu_127_p1(3 - 1 downto 0);

    dados1_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            dados1_ce0 <= ap_const_logic_1;
        else 
            dados1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_fu_100_p2 <= "1" when (signed(tmp_1_fu_90_p4) < signed(ap_const_lv13_1)) else "0";
    storemerge_fu_112_p3 <= 
        tmp_3_fu_106_p2 when (icmp_fu_100_p2(0) = '1') else 
        ap_const_lv15_0;
    tmp_1_fu_90_p4 <= k(14 downto 2);
    tmp_3_fu_106_p2 <= std_logic_vector(unsigned(k) + unsigned(ap_const_lv15_1));
    tmp_7_fu_127_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_tmp_6_phi_fu_63_p4),64));
    tmp_fu_73_p2 <= (pulsoSinc xor SimCLK);
end behav;
