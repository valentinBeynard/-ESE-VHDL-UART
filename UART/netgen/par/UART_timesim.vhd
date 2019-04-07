--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: UART_timesim.vhd
-- /___/   /\     Timestamp: Wed Mar 27 16:49:07 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf UART.pcf -rpw 100 -tpw 0 -ar Structure -tm UART -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim UART.ncd UART_timesim.vhd 
-- Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-06-08)
-- Input file	: UART.ncd
-- Output file	: C:\CPE_USERS\TPelec_4ETI\UART\netgen\par\UART_timesim.vhd
-- # of Entities	: 1
-- Design Name	: UART
-- Xilinx	: C:\Xilinx\14.6\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity UART is
  port (
    clk : in STD_LOGIC := 'X'; 
    bd : out STD_LOGIC; 
    rst : in STD_LOGIC := 'X'; 
    tx_start : in STD_LOGIC := 'X'; 
    baud_rate_sel : in STD_LOGIC := 'X'; 
    rx : in STD_LOGIC := 'X'; 
    tx : out STD_LOGIC; 
    tx_done : out STD_LOGIC 
  );
end UART;

architecture Structure of UART is
  signal clk_BUFGP : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_Q : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_1_Q : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_3_Q : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_5_Q : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_7_Q : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_9_Q : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_11_Q : STD_LOGIC; 
  signal baud_rate_sel_IBUF_398 : STD_LOGIC; 
  signal tx_start_IBUF_404 : STD_LOGIC; 
  signal U0_seize_baud_rate_int_405 : STD_LOGIC; 
  signal U1_N5_0 : STD_LOGIC; 
  signal U1_next_state_not0001 : STD_LOGIC; 
  signal U1_n_not0001_0 : STD_LOGIC; 
  signal U1_N6 : STD_LOGIC; 
  signal U1_s_not0001_0 : STD_LOGIC; 
  signal U1_N18 : STD_LOGIC; 
  signal U1_N9 : STD_LOGIC; 
  signal U1_N16_0 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal U0_seize_vcount_0_DXMUX_487 : STD_LOGIC; 
  signal U0_seize_vcount_0_XORF_485 : STD_LOGIC; 
  signal U0_seize_vcount_0_LOGIC_ONE_484 : STD_LOGIC; 
  signal U0_seize_vcount_0_CYINIT_483 : STD_LOGIC; 
  signal U0_seize_vcount_0_CYSELF_474 : STD_LOGIC; 
  signal U0_seize_vcount_0_BXINV_472 : STD_LOGIC; 
  signal U0_seize_vcount_0_DYMUX_467 : STD_LOGIC; 
  signal U0_seize_vcount_0_XORG_465 : STD_LOGIC; 
  signal U0_seize_vcount_0_CYMUXG_464 : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_0_Q : STD_LOGIC; 
  signal U0_seize_vcount_0_LOGIC_ZERO_462 : STD_LOGIC; 
  signal U0_seize_vcount_0_CYSELG_453 : STD_LOGIC; 
  signal U0_seize_vcount_0_G : STD_LOGIC; 
  signal U0_seize_vcount_0_SRINV_451 : STD_LOGIC; 
  signal U0_seize_vcount_0_CLKINV_450 : STD_LOGIC; 
  signal U0_seize_vcount_2_DXMUX_539 : STD_LOGIC; 
  signal U0_seize_vcount_2_XORF_537 : STD_LOGIC; 
  signal U0_seize_vcount_2_CYINIT_536 : STD_LOGIC; 
  signal U0_seize_vcount_2_F : STD_LOGIC; 
  signal U0_seize_vcount_2_DYMUX_522 : STD_LOGIC; 
  signal U0_seize_vcount_2_XORG_520 : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_2_Q : STD_LOGIC; 
  signal U0_seize_vcount_2_CYSELF_518 : STD_LOGIC; 
  signal U0_seize_vcount_2_CYMUXFAST_517 : STD_LOGIC; 
  signal U0_seize_vcount_2_CYAND_516 : STD_LOGIC; 
  signal U0_seize_vcount_2_FASTCARRY_515 : STD_LOGIC; 
  signal U0_seize_vcount_2_CYMUXG2_514 : STD_LOGIC; 
  signal U0_seize_vcount_2_CYMUXF2_513 : STD_LOGIC; 
  signal U0_seize_vcount_2_LOGIC_ZERO_512 : STD_LOGIC; 
  signal U0_seize_vcount_2_CYSELG_503 : STD_LOGIC; 
  signal U0_seize_vcount_2_G : STD_LOGIC; 
  signal U0_seize_vcount_2_SRINV_501 : STD_LOGIC; 
  signal U0_seize_vcount_2_CLKINV_500 : STD_LOGIC; 
  signal U0_seize_vcount_4_DXMUX_591 : STD_LOGIC; 
  signal U0_seize_vcount_4_XORF_589 : STD_LOGIC; 
  signal U0_seize_vcount_4_CYINIT_588 : STD_LOGIC; 
  signal U0_seize_vcount_4_F : STD_LOGIC; 
  signal U0_seize_vcount_4_DYMUX_574 : STD_LOGIC; 
  signal U0_seize_vcount_4_XORG_572 : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_4_Q : STD_LOGIC; 
  signal U0_seize_vcount_4_CYSELF_570 : STD_LOGIC; 
  signal U0_seize_vcount_4_CYMUXFAST_569 : STD_LOGIC; 
  signal U0_seize_vcount_4_CYAND_568 : STD_LOGIC; 
  signal U0_seize_vcount_4_FASTCARRY_567 : STD_LOGIC; 
  signal U0_seize_vcount_4_CYMUXG2_566 : STD_LOGIC; 
  signal U0_seize_vcount_4_CYMUXF2_565 : STD_LOGIC; 
  signal U0_seize_vcount_4_LOGIC_ZERO_564 : STD_LOGIC; 
  signal U0_seize_vcount_4_CYSELG_555 : STD_LOGIC; 
  signal U0_seize_vcount_4_G : STD_LOGIC; 
  signal U0_seize_vcount_4_SRINV_553 : STD_LOGIC; 
  signal U0_seize_vcount_4_CLKINV_552 : STD_LOGIC; 
  signal U0_seize_vcount_6_DXMUX_643 : STD_LOGIC; 
  signal U0_seize_vcount_6_XORF_641 : STD_LOGIC; 
  signal U0_seize_vcount_6_CYINIT_640 : STD_LOGIC; 
  signal U0_seize_vcount_6_F : STD_LOGIC; 
  signal U0_seize_vcount_6_DYMUX_626 : STD_LOGIC; 
  signal U0_seize_vcount_6_XORG_624 : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_6_Q : STD_LOGIC; 
  signal U0_seize_vcount_6_CYSELF_622 : STD_LOGIC; 
  signal U0_seize_vcount_6_CYMUXFAST_621 : STD_LOGIC; 
  signal U0_seize_vcount_6_CYAND_620 : STD_LOGIC; 
  signal U0_seize_vcount_6_FASTCARRY_619 : STD_LOGIC; 
  signal U0_seize_vcount_6_CYMUXG2_618 : STD_LOGIC; 
  signal U0_seize_vcount_6_CYMUXF2_617 : STD_LOGIC; 
  signal U0_seize_vcount_6_LOGIC_ZERO_616 : STD_LOGIC; 
  signal U0_seize_vcount_6_CYSELG_607 : STD_LOGIC; 
  signal U0_seize_vcount_6_G : STD_LOGIC; 
  signal U0_seize_vcount_6_SRINV_605 : STD_LOGIC; 
  signal U0_seize_vcount_6_CLKINV_604 : STD_LOGIC; 
  signal U0_seize_vcount_8_DXMUX_695 : STD_LOGIC; 
  signal U0_seize_vcount_8_XORF_693 : STD_LOGIC; 
  signal U0_seize_vcount_8_CYINIT_692 : STD_LOGIC; 
  signal U0_seize_vcount_8_F : STD_LOGIC; 
  signal U0_seize_vcount_8_DYMUX_678 : STD_LOGIC; 
  signal U0_seize_vcount_8_XORG_676 : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_8_Q : STD_LOGIC; 
  signal U0_seize_vcount_8_CYSELF_674 : STD_LOGIC; 
  signal U0_seize_vcount_8_CYMUXFAST_673 : STD_LOGIC; 
  signal U0_seize_vcount_8_CYAND_672 : STD_LOGIC; 
  signal U0_seize_vcount_8_FASTCARRY_671 : STD_LOGIC; 
  signal U0_seize_vcount_8_CYMUXG2_670 : STD_LOGIC; 
  signal U0_seize_vcount_8_CYMUXF2_669 : STD_LOGIC; 
  signal U0_seize_vcount_8_LOGIC_ZERO_668 : STD_LOGIC; 
  signal U0_seize_vcount_8_CYSELG_659 : STD_LOGIC; 
  signal U0_seize_vcount_8_G : STD_LOGIC; 
  signal U0_seize_vcount_8_SRINV_657 : STD_LOGIC; 
  signal U0_seize_vcount_8_CLKINV_656 : STD_LOGIC; 
  signal U0_seize_vcount_10_DXMUX_747 : STD_LOGIC; 
  signal U0_seize_vcount_10_XORF_745 : STD_LOGIC; 
  signal U0_seize_vcount_10_CYINIT_744 : STD_LOGIC; 
  signal U0_seize_vcount_10_F : STD_LOGIC; 
  signal U0_seize_vcount_10_DYMUX_730 : STD_LOGIC; 
  signal U0_seize_vcount_10_XORG_728 : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_10_Q : STD_LOGIC; 
  signal U0_seize_vcount_10_CYSELF_726 : STD_LOGIC; 
  signal U0_seize_vcount_10_CYMUXFAST_725 : STD_LOGIC; 
  signal U0_seize_vcount_10_CYAND_724 : STD_LOGIC; 
  signal U0_seize_vcount_10_FASTCARRY_723 : STD_LOGIC; 
  signal U0_seize_vcount_10_CYMUXG2_722 : STD_LOGIC; 
  signal U0_seize_vcount_10_CYMUXF2_721 : STD_LOGIC; 
  signal U0_seize_vcount_10_LOGIC_ZERO_720 : STD_LOGIC; 
  signal U0_seize_vcount_10_CYSELG_711 : STD_LOGIC; 
  signal U0_seize_vcount_10_G : STD_LOGIC; 
  signal U0_seize_vcount_10_SRINV_709 : STD_LOGIC; 
  signal U0_seize_vcount_10_CLKINV_708 : STD_LOGIC; 
  signal U0_seize_vcount_12_DXMUX_799 : STD_LOGIC; 
  signal U0_seize_vcount_12_XORF_797 : STD_LOGIC; 
  signal U0_seize_vcount_12_CYINIT_796 : STD_LOGIC; 
  signal U0_seize_vcount_12_F : STD_LOGIC; 
  signal U0_seize_vcount_12_DYMUX_782 : STD_LOGIC; 
  signal U0_seize_vcount_12_XORG_780 : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_12_Q : STD_LOGIC; 
  signal U0_seize_vcount_12_CYSELF_778 : STD_LOGIC; 
  signal U0_seize_vcount_12_CYMUXFAST_777 : STD_LOGIC; 
  signal U0_seize_vcount_12_CYAND_776 : STD_LOGIC; 
  signal U0_seize_vcount_12_FASTCARRY_775 : STD_LOGIC; 
  signal U0_seize_vcount_12_CYMUXG2_774 : STD_LOGIC; 
  signal U0_seize_vcount_12_CYMUXF2_773 : STD_LOGIC; 
  signal U0_seize_vcount_12_LOGIC_ZERO_772 : STD_LOGIC; 
  signal U0_seize_vcount_12_CYSELG_763 : STD_LOGIC; 
  signal U0_seize_vcount_12_G : STD_LOGIC; 
  signal U0_seize_vcount_12_SRINV_761 : STD_LOGIC; 
  signal U0_seize_vcount_12_CLKINV_760 : STD_LOGIC; 
  signal U0_seize_vcount_14_DXMUX_844 : STD_LOGIC; 
  signal U0_seize_vcount_14_XORF_842 : STD_LOGIC; 
  signal U0_seize_vcount_14_LOGIC_ZERO_841 : STD_LOGIC; 
  signal U0_seize_vcount_14_CYINIT_840 : STD_LOGIC; 
  signal U0_seize_vcount_14_CYSELF_831 : STD_LOGIC; 
  signal U0_seize_vcount_14_F : STD_LOGIC; 
  signal U0_seize_vcount_14_DYMUX_825 : STD_LOGIC; 
  signal U0_seize_vcount_14_XORG_823 : STD_LOGIC; 
  signal U0_Mcount_seize_vcount_cy_14_Q : STD_LOGIC; 
  signal U0_seize_vcount_15_rt_820 : STD_LOGIC; 
  signal U0_seize_vcount_14_SRINV_812 : STD_LOGIC; 
  signal U0_seize_vcount_14_CLKINV_811 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYINIT_877 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELF_871 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_lut_0_Q_870 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_BXINV_869 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYMUXG_868 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_0_Q : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_LOGIC_ZERO_866 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELG_860 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_lut_1_Q_859 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_lut_2_Q : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELF_898 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXFAST_897 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYAND_896 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_FASTCARRY_895 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXG2_894 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXF2_893 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO_892 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELG_883 : STD_LOGIC; 
  signal U0_seize_vcount_0_rt_882 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_lut_4_Q_931 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELF_930 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXFAST_929 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYAND_928 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_FASTCARRY_927 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXG2_926 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXF2_925 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO_924 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELG_917 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_lut_5_Q_916 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ZERO_952 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_CYINIT_951 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_CYSELF_944 : STD_LOGIC; 
  signal U0_Mcompar_seize_vcount_cmp_eq0000_lut_6_Q_943 : STD_LOGIC; 
  signal baud_rate_sel_INBUF : STD_LOGIC; 
  signal tx_done_O : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal tx_O : STD_LOGIC; 
  signal tx_start_INBUF : STD_LOGIC; 
  signal bd_O : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal U1_next_state_not0001_F5MUX_1039 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal U1_next_state_not0001_BXINV_1031 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal U1_n_1_DXMUX_1071 : STD_LOGIC; 
  signal U1_n_1_DYMUX_1060 : STD_LOGIC; 
  signal U1_n_1_CLKINVNOT : STD_LOGIC; 
  signal U1_s_2_DXMUX_1105 : STD_LOGIC; 
  signal U1_s_2_DYMUX_1094 : STD_LOGIC; 
  signal U1_s_2_CLKINVNOT : STD_LOGIC; 
  signal U1_n_not0001 : STD_LOGIC; 
  signal U1_next_state_0_DYMUX_1127 : STD_LOGIC; 
  signal U1_next_state_0_CLKINVNOT : STD_LOGIC; 
  signal U1_N16 : STD_LOGIC; 
  signal U1_next_state_3_DYMUX_1157 : STD_LOGIC; 
  signal U1_next_state_3_CLKINVNOT : STD_LOGIC; 
  signal U1_current_state_3_DXMUX_1181 : STD_LOGIC; 
  signal U1_current_state_3_DYMUX_1176 : STD_LOGIC; 
  signal U1_current_state_3_CLKINV_1174 : STD_LOGIC; 
  signal U1_s_reg_1_DXMUX_1197 : STD_LOGIC; 
  signal U1_s_reg_1_DYMUX_1192 : STD_LOGIC; 
  signal U1_s_reg_1_CLKINV_1190 : STD_LOGIC; 
  signal U1_N5 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal U1_s_reg_3_DXMUX_1237 : STD_LOGIC; 
  signal U1_s_reg_3_DYMUX_1232 : STD_LOGIC; 
  signal U1_s_reg_3_CLKINV_1230 : STD_LOGIC; 
  signal U1_tx_not0001 : STD_LOGIC; 
  signal U1_s_not0001 : STD_LOGIC; 
  signal U0_seize_baud_rate_int_DYMUX_1272 : STD_LOGIC; 
  signal U0_seize_baud_rate_int_BYINV_1271 : STD_LOGIC; 
  signal U0_seize_baud_rate_int_SRINVNOT : STD_LOGIC; 
  signal U0_seize_baud_rate_int_CLKINV_1269 : STD_LOGIC; 
  signal U1_s_3_DXMUX_1303 : STD_LOGIC; 
  signal U1_N18_pack_1 : STD_LOGIC; 
  signal U1_s_3_CLKINVNOT : STD_LOGIC; 
  signal U1_next_state_1_DXMUX_1333 : STD_LOGIC; 
  signal U1_N9_pack_1 : STD_LOGIC; 
  signal U1_next_state_1_CLKINVNOT : STD_LOGIC; 
  signal U1_next_state_2_DXMUX_1363 : STD_LOGIC; 
  signal U1_N6_pack_1 : STD_LOGIC; 
  signal U1_next_state_2_CLKINVNOT : STD_LOGIC; 
  signal U1_n_2_DXMUX_1393 : STD_LOGIC; 
  signal N12_pack_1 : STD_LOGIC; 
  signal U1_n_2_CLKINVNOT : STD_LOGIC; 
  signal U1_s_0_DXMUX_1423 : STD_LOGIC; 
  signal N10_pack_1 : STD_LOGIC; 
  signal U1_s_0_CLKINVNOT : STD_LOGIC; 
  signal U1_tx_mux0001_1448 : STD_LOGIC; 
  signal N4_pack_1 : STD_LOGIC; 
  signal U1_n_3_DXMUX_1477 : STD_LOGIC; 
  signal N6_pack_1 : STD_LOGIC; 
  signal U1_n_3_CLKINVNOT : STD_LOGIC; 
  signal U1_n_reg_1_DXMUX_1493 : STD_LOGIC; 
  signal U1_n_reg_1_DYMUX_1488 : STD_LOGIC; 
  signal U1_n_reg_1_CLKINV_1486 : STD_LOGIC; 
  signal U1_n_reg_3_DXMUX_1509 : STD_LOGIC; 
  signal U1_n_reg_3_DYMUX_1504 : STD_LOGIC; 
  signal U1_n_reg_3_CLKINV_1502 : STD_LOGIC; 
  signal U1_current_state_1_DXMUX_1525 : STD_LOGIC; 
  signal U1_current_state_1_DYMUX_1520 : STD_LOGIC; 
  signal U1_current_state_1_CLKINV_1518 : STD_LOGIC; 
  signal tx_done_OUTPUT_OTCLK1INV_967 : STD_LOGIC; 
  signal U1_current_state_3_1_973 : STD_LOGIC; 
  signal tx_done_OUTPUT_OFF_O1INV_970 : STD_LOGIC; 
  signal tx_OUTPUT_OFF_O1INV_992 : STD_LOGIC; 
  signal U1_tx_995 : STD_LOGIC; 
  signal tx_OUTPUT_OTCLK1INVNOT : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_U1_tx_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_n_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_n_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_s_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_s_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_next_state_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_next_state_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_s_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_next_state_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_next_state_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_n_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_s_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_n_3_CLK : STD_LOGIC; 
  signal U0_seize_vcount : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U1_next_state : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_current_state : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_s_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_n_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_n : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_s : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_Mcount_seize_vcount_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_n_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_s_mux0004 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_next_state_mux0005 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  U0_seize_vcount_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y22"
    )
    port map (
      O => U0_seize_vcount_0_LOGIC_ZERO_462
    );
  U0_seize_vcount_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X17Y22"
    )
    port map (
      O => U0_seize_vcount_0_LOGIC_ONE_484
    );
  U0_seize_vcount_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y22",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_0_XORF_485,
      O => U0_seize_vcount_0_DXMUX_487
    );
  U0_seize_vcount_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y22"
    )
    port map (
      I0 => U0_seize_vcount_0_CYINIT_483,
      I1 => U0_Mcount_seize_vcount_lut(0),
      O => U0_seize_vcount_0_XORF_485
    );
  U0_seize_vcount_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y22"
    )
    port map (
      IA => U0_seize_vcount_0_LOGIC_ONE_484,
      IB => U0_seize_vcount_0_CYINIT_483,
      SEL => U0_seize_vcount_0_CYSELF_474,
      O => U0_Mcount_seize_vcount_cy_0_Q
    );
  U0_seize_vcount_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y22",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_0_BXINV_472,
      O => U0_seize_vcount_0_CYINIT_483
    );
  U0_seize_vcount_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y22",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_lut(0),
      O => U0_seize_vcount_0_CYSELF_474
    );
  U0_seize_vcount_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y22",
      PATHPULSE => 605 ps
    )
    port map (
      I => '0',
      O => U0_seize_vcount_0_BXINV_472
    );
  U0_seize_vcount_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y22",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_0_XORG_465,
      O => U0_seize_vcount_0_DYMUX_467
    );
  U0_seize_vcount_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y22"
    )
    port map (
      I0 => U0_Mcount_seize_vcount_cy_0_Q,
      I1 => U0_seize_vcount_0_G,
      O => U0_seize_vcount_0_XORG_465
    );
  U0_seize_vcount_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y22",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_0_CYMUXG_464,
      O => U0_Mcount_seize_vcount_cy_1_Q
    );
  U0_seize_vcount_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X17Y22"
    )
    port map (
      IA => U0_seize_vcount_0_LOGIC_ZERO_462,
      IB => U0_Mcount_seize_vcount_cy_0_Q,
      SEL => U0_seize_vcount_0_CYSELG_453,
      O => U0_seize_vcount_0_CYMUXG_464
    );
  U0_seize_vcount_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y22",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_0_G,
      O => U0_seize_vcount_0_CYSELG_453
    );
  U0_seize_vcount_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y22",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => U0_seize_vcount_0_SRINV_451
    );
  U0_seize_vcount_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y22",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_seize_vcount_0_CLKINV_450
    );
  U0_seize_vcount_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y23"
    )
    port map (
      O => U0_seize_vcount_2_LOGIC_ZERO_512
    );
  U0_seize_vcount_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_2_XORF_537,
      O => U0_seize_vcount_2_DXMUX_539
    );
  U0_seize_vcount_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y23"
    )
    port map (
      I0 => U0_seize_vcount_2_CYINIT_536,
      I1 => U0_seize_vcount_2_F,
      O => U0_seize_vcount_2_XORF_537
    );
  U0_seize_vcount_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y23"
    )
    port map (
      IA => U0_seize_vcount_2_LOGIC_ZERO_512,
      IB => U0_seize_vcount_2_CYINIT_536,
      SEL => U0_seize_vcount_2_CYSELF_518,
      O => U0_Mcount_seize_vcount_cy_2_Q
    );
  U0_seize_vcount_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y23"
    )
    port map (
      IA => U0_seize_vcount_2_LOGIC_ZERO_512,
      IB => U0_seize_vcount_2_LOGIC_ZERO_512,
      SEL => U0_seize_vcount_2_CYSELF_518,
      O => U0_seize_vcount_2_CYMUXF2_513
    );
  U0_seize_vcount_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_1_Q,
      O => U0_seize_vcount_2_CYINIT_536
    );
  U0_seize_vcount_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_2_F,
      O => U0_seize_vcount_2_CYSELF_518
    );
  U0_seize_vcount_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_2_XORG_520,
      O => U0_seize_vcount_2_DYMUX_522
    );
  U0_seize_vcount_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y23"
    )
    port map (
      I0 => U0_Mcount_seize_vcount_cy_2_Q,
      I1 => U0_seize_vcount_2_G,
      O => U0_seize_vcount_2_XORG_520
    );
  U0_seize_vcount_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_2_CYMUXFAST_517,
      O => U0_Mcount_seize_vcount_cy_3_Q
    );
  U0_seize_vcount_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_1_Q,
      O => U0_seize_vcount_2_FASTCARRY_515
    );
  U0_seize_vcount_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y23"
    )
    port map (
      I0 => U0_seize_vcount_2_CYSELG_503,
      I1 => U0_seize_vcount_2_CYSELF_518,
      O => U0_seize_vcount_2_CYAND_516
    );
  U0_seize_vcount_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y23"
    )
    port map (
      IA => U0_seize_vcount_2_CYMUXG2_514,
      IB => U0_seize_vcount_2_FASTCARRY_515,
      SEL => U0_seize_vcount_2_CYAND_516,
      O => U0_seize_vcount_2_CYMUXFAST_517
    );
  U0_seize_vcount_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y23"
    )
    port map (
      IA => U0_seize_vcount_2_LOGIC_ZERO_512,
      IB => U0_seize_vcount_2_CYMUXF2_513,
      SEL => U0_seize_vcount_2_CYSELG_503,
      O => U0_seize_vcount_2_CYMUXG2_514
    );
  U0_seize_vcount_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_2_G,
      O => U0_seize_vcount_2_CYSELG_503
    );
  U0_seize_vcount_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => U0_seize_vcount_2_SRINV_501
    );
  U0_seize_vcount_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_seize_vcount_2_CLKINV_500
    );
  U0_seize_vcount_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y24"
    )
    port map (
      O => U0_seize_vcount_4_LOGIC_ZERO_564
    );
  U0_seize_vcount_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_4_XORF_589,
      O => U0_seize_vcount_4_DXMUX_591
    );
  U0_seize_vcount_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y24"
    )
    port map (
      I0 => U0_seize_vcount_4_CYINIT_588,
      I1 => U0_seize_vcount_4_F,
      O => U0_seize_vcount_4_XORF_589
    );
  U0_seize_vcount_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y24"
    )
    port map (
      IA => U0_seize_vcount_4_LOGIC_ZERO_564,
      IB => U0_seize_vcount_4_CYINIT_588,
      SEL => U0_seize_vcount_4_CYSELF_570,
      O => U0_Mcount_seize_vcount_cy_4_Q
    );
  U0_seize_vcount_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y24"
    )
    port map (
      IA => U0_seize_vcount_4_LOGIC_ZERO_564,
      IB => U0_seize_vcount_4_LOGIC_ZERO_564,
      SEL => U0_seize_vcount_4_CYSELF_570,
      O => U0_seize_vcount_4_CYMUXF2_565
    );
  U0_seize_vcount_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_3_Q,
      O => U0_seize_vcount_4_CYINIT_588
    );
  U0_seize_vcount_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_4_F,
      O => U0_seize_vcount_4_CYSELF_570
    );
  U0_seize_vcount_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_4_XORG_572,
      O => U0_seize_vcount_4_DYMUX_574
    );
  U0_seize_vcount_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y24"
    )
    port map (
      I0 => U0_Mcount_seize_vcount_cy_4_Q,
      I1 => U0_seize_vcount_4_G,
      O => U0_seize_vcount_4_XORG_572
    );
  U0_seize_vcount_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_4_CYMUXFAST_569,
      O => U0_Mcount_seize_vcount_cy_5_Q
    );
  U0_seize_vcount_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_3_Q,
      O => U0_seize_vcount_4_FASTCARRY_567
    );
  U0_seize_vcount_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y24"
    )
    port map (
      I0 => U0_seize_vcount_4_CYSELG_555,
      I1 => U0_seize_vcount_4_CYSELF_570,
      O => U0_seize_vcount_4_CYAND_568
    );
  U0_seize_vcount_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y24"
    )
    port map (
      IA => U0_seize_vcount_4_CYMUXG2_566,
      IB => U0_seize_vcount_4_FASTCARRY_567,
      SEL => U0_seize_vcount_4_CYAND_568,
      O => U0_seize_vcount_4_CYMUXFAST_569
    );
  U0_seize_vcount_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y24"
    )
    port map (
      IA => U0_seize_vcount_4_LOGIC_ZERO_564,
      IB => U0_seize_vcount_4_CYMUXF2_565,
      SEL => U0_seize_vcount_4_CYSELG_555,
      O => U0_seize_vcount_4_CYMUXG2_566
    );
  U0_seize_vcount_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_4_G,
      O => U0_seize_vcount_4_CYSELG_555
    );
  U0_seize_vcount_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => U0_seize_vcount_4_SRINV_553
    );
  U0_seize_vcount_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_seize_vcount_4_CLKINV_552
    );
  U0_seize_vcount_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y25"
    )
    port map (
      O => U0_seize_vcount_6_LOGIC_ZERO_616
    );
  U0_seize_vcount_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_6_XORF_641,
      O => U0_seize_vcount_6_DXMUX_643
    );
  U0_seize_vcount_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y25"
    )
    port map (
      I0 => U0_seize_vcount_6_CYINIT_640,
      I1 => U0_seize_vcount_6_F,
      O => U0_seize_vcount_6_XORF_641
    );
  U0_seize_vcount_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y25"
    )
    port map (
      IA => U0_seize_vcount_6_LOGIC_ZERO_616,
      IB => U0_seize_vcount_6_CYINIT_640,
      SEL => U0_seize_vcount_6_CYSELF_622,
      O => U0_Mcount_seize_vcount_cy_6_Q
    );
  U0_seize_vcount_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y25"
    )
    port map (
      IA => U0_seize_vcount_6_LOGIC_ZERO_616,
      IB => U0_seize_vcount_6_LOGIC_ZERO_616,
      SEL => U0_seize_vcount_6_CYSELF_622,
      O => U0_seize_vcount_6_CYMUXF2_617
    );
  U0_seize_vcount_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_5_Q,
      O => U0_seize_vcount_6_CYINIT_640
    );
  U0_seize_vcount_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_6_F,
      O => U0_seize_vcount_6_CYSELF_622
    );
  U0_seize_vcount_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_6_XORG_624,
      O => U0_seize_vcount_6_DYMUX_626
    );
  U0_seize_vcount_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y25"
    )
    port map (
      I0 => U0_Mcount_seize_vcount_cy_6_Q,
      I1 => U0_seize_vcount_6_G,
      O => U0_seize_vcount_6_XORG_624
    );
  U0_seize_vcount_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_6_CYMUXFAST_621,
      O => U0_Mcount_seize_vcount_cy_7_Q
    );
  U0_seize_vcount_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_5_Q,
      O => U0_seize_vcount_6_FASTCARRY_619
    );
  U0_seize_vcount_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y25"
    )
    port map (
      I0 => U0_seize_vcount_6_CYSELG_607,
      I1 => U0_seize_vcount_6_CYSELF_622,
      O => U0_seize_vcount_6_CYAND_620
    );
  U0_seize_vcount_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y25"
    )
    port map (
      IA => U0_seize_vcount_6_CYMUXG2_618,
      IB => U0_seize_vcount_6_FASTCARRY_619,
      SEL => U0_seize_vcount_6_CYAND_620,
      O => U0_seize_vcount_6_CYMUXFAST_621
    );
  U0_seize_vcount_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y25"
    )
    port map (
      IA => U0_seize_vcount_6_LOGIC_ZERO_616,
      IB => U0_seize_vcount_6_CYMUXF2_617,
      SEL => U0_seize_vcount_6_CYSELG_607,
      O => U0_seize_vcount_6_CYMUXG2_618
    );
  U0_seize_vcount_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_6_G,
      O => U0_seize_vcount_6_CYSELG_607
    );
  U0_seize_vcount_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => U0_seize_vcount_6_SRINV_605
    );
  U0_seize_vcount_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_seize_vcount_6_CLKINV_604
    );
  U0_seize_vcount_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y26"
    )
    port map (
      O => U0_seize_vcount_8_LOGIC_ZERO_668
    );
  U0_seize_vcount_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_8_XORF_693,
      O => U0_seize_vcount_8_DXMUX_695
    );
  U0_seize_vcount_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y26"
    )
    port map (
      I0 => U0_seize_vcount_8_CYINIT_692,
      I1 => U0_seize_vcount_8_F,
      O => U0_seize_vcount_8_XORF_693
    );
  U0_seize_vcount_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y26"
    )
    port map (
      IA => U0_seize_vcount_8_LOGIC_ZERO_668,
      IB => U0_seize_vcount_8_CYINIT_692,
      SEL => U0_seize_vcount_8_CYSELF_674,
      O => U0_Mcount_seize_vcount_cy_8_Q
    );
  U0_seize_vcount_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y26"
    )
    port map (
      IA => U0_seize_vcount_8_LOGIC_ZERO_668,
      IB => U0_seize_vcount_8_LOGIC_ZERO_668,
      SEL => U0_seize_vcount_8_CYSELF_674,
      O => U0_seize_vcount_8_CYMUXF2_669
    );
  U0_seize_vcount_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_7_Q,
      O => U0_seize_vcount_8_CYINIT_692
    );
  U0_seize_vcount_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_8_F,
      O => U0_seize_vcount_8_CYSELF_674
    );
  U0_seize_vcount_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_8_XORG_676,
      O => U0_seize_vcount_8_DYMUX_678
    );
  U0_seize_vcount_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y26"
    )
    port map (
      I0 => U0_Mcount_seize_vcount_cy_8_Q,
      I1 => U0_seize_vcount_8_G,
      O => U0_seize_vcount_8_XORG_676
    );
  U0_seize_vcount_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_8_CYMUXFAST_673,
      O => U0_Mcount_seize_vcount_cy_9_Q
    );
  U0_seize_vcount_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_7_Q,
      O => U0_seize_vcount_8_FASTCARRY_671
    );
  U0_seize_vcount_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y26"
    )
    port map (
      I0 => U0_seize_vcount_8_CYSELG_659,
      I1 => U0_seize_vcount_8_CYSELF_674,
      O => U0_seize_vcount_8_CYAND_672
    );
  U0_seize_vcount_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y26"
    )
    port map (
      IA => U0_seize_vcount_8_CYMUXG2_670,
      IB => U0_seize_vcount_8_FASTCARRY_671,
      SEL => U0_seize_vcount_8_CYAND_672,
      O => U0_seize_vcount_8_CYMUXFAST_673
    );
  U0_seize_vcount_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y26"
    )
    port map (
      IA => U0_seize_vcount_8_LOGIC_ZERO_668,
      IB => U0_seize_vcount_8_CYMUXF2_669,
      SEL => U0_seize_vcount_8_CYSELG_659,
      O => U0_seize_vcount_8_CYMUXG2_670
    );
  U0_seize_vcount_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_8_G,
      O => U0_seize_vcount_8_CYSELG_659
    );
  U0_seize_vcount_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => U0_seize_vcount_8_SRINV_657
    );
  U0_seize_vcount_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_seize_vcount_8_CLKINV_656
    );
  U0_seize_vcount_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      O => U0_seize_vcount_10_LOGIC_ZERO_720
    );
  U0_seize_vcount_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_10_XORF_745,
      O => U0_seize_vcount_10_DXMUX_747
    );
  U0_seize_vcount_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      I0 => U0_seize_vcount_10_CYINIT_744,
      I1 => U0_seize_vcount_10_F,
      O => U0_seize_vcount_10_XORF_745
    );
  U0_seize_vcount_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      IA => U0_seize_vcount_10_LOGIC_ZERO_720,
      IB => U0_seize_vcount_10_CYINIT_744,
      SEL => U0_seize_vcount_10_CYSELF_726,
      O => U0_Mcount_seize_vcount_cy_10_Q
    );
  U0_seize_vcount_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      IA => U0_seize_vcount_10_LOGIC_ZERO_720,
      IB => U0_seize_vcount_10_LOGIC_ZERO_720,
      SEL => U0_seize_vcount_10_CYSELF_726,
      O => U0_seize_vcount_10_CYMUXF2_721
    );
  U0_seize_vcount_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_9_Q,
      O => U0_seize_vcount_10_CYINIT_744
    );
  U0_seize_vcount_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_10_F,
      O => U0_seize_vcount_10_CYSELF_726
    );
  U0_seize_vcount_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_10_XORG_728,
      O => U0_seize_vcount_10_DYMUX_730
    );
  U0_seize_vcount_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      I0 => U0_Mcount_seize_vcount_cy_10_Q,
      I1 => U0_seize_vcount_10_G,
      O => U0_seize_vcount_10_XORG_728
    );
  U0_seize_vcount_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_10_CYMUXFAST_725,
      O => U0_Mcount_seize_vcount_cy_11_Q
    );
  U0_seize_vcount_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_9_Q,
      O => U0_seize_vcount_10_FASTCARRY_723
    );
  U0_seize_vcount_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      I0 => U0_seize_vcount_10_CYSELG_711,
      I1 => U0_seize_vcount_10_CYSELF_726,
      O => U0_seize_vcount_10_CYAND_724
    );
  U0_seize_vcount_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      IA => U0_seize_vcount_10_CYMUXG2_722,
      IB => U0_seize_vcount_10_FASTCARRY_723,
      SEL => U0_seize_vcount_10_CYAND_724,
      O => U0_seize_vcount_10_CYMUXFAST_725
    );
  U0_seize_vcount_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y27"
    )
    port map (
      IA => U0_seize_vcount_10_LOGIC_ZERO_720,
      IB => U0_seize_vcount_10_CYMUXF2_721,
      SEL => U0_seize_vcount_10_CYSELG_711,
      O => U0_seize_vcount_10_CYMUXG2_722
    );
  U0_seize_vcount_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_10_G,
      O => U0_seize_vcount_10_CYSELG_711
    );
  U0_seize_vcount_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => U0_seize_vcount_10_SRINV_709
    );
  U0_seize_vcount_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_seize_vcount_10_CLKINV_708
    );
  U0_seize_vcount_12 : X_SFF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_12_DXMUX_799,
      CE => VCC,
      CLK => U0_seize_vcount_12_CLKINV_760,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_12_SRINV_761,
      O => U0_seize_vcount(12)
    );
  U0_seize_vcount_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      O => U0_seize_vcount_12_LOGIC_ZERO_772
    );
  U0_seize_vcount_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_12_XORF_797,
      O => U0_seize_vcount_12_DXMUX_799
    );
  U0_seize_vcount_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      I0 => U0_seize_vcount_12_CYINIT_796,
      I1 => U0_seize_vcount_12_F,
      O => U0_seize_vcount_12_XORF_797
    );
  U0_seize_vcount_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      IA => U0_seize_vcount_12_LOGIC_ZERO_772,
      IB => U0_seize_vcount_12_CYINIT_796,
      SEL => U0_seize_vcount_12_CYSELF_778,
      O => U0_Mcount_seize_vcount_cy_12_Q
    );
  U0_seize_vcount_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      IA => U0_seize_vcount_12_LOGIC_ZERO_772,
      IB => U0_seize_vcount_12_LOGIC_ZERO_772,
      SEL => U0_seize_vcount_12_CYSELF_778,
      O => U0_seize_vcount_12_CYMUXF2_773
    );
  U0_seize_vcount_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_11_Q,
      O => U0_seize_vcount_12_CYINIT_796
    );
  U0_seize_vcount_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_12_F,
      O => U0_seize_vcount_12_CYSELF_778
    );
  U0_seize_vcount_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_12_XORG_780,
      O => U0_seize_vcount_12_DYMUX_782
    );
  U0_seize_vcount_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      I0 => U0_Mcount_seize_vcount_cy_12_Q,
      I1 => U0_seize_vcount_12_G,
      O => U0_seize_vcount_12_XORG_780
    );
  U0_seize_vcount_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_seize_vcount_cy_11_Q,
      O => U0_seize_vcount_12_FASTCARRY_775
    );
  U0_seize_vcount_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      I0 => U0_seize_vcount_12_CYSELG_763,
      I1 => U0_seize_vcount_12_CYSELF_778,
      O => U0_seize_vcount_12_CYAND_776
    );
  U0_seize_vcount_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      IA => U0_seize_vcount_12_CYMUXG2_774,
      IB => U0_seize_vcount_12_FASTCARRY_775,
      SEL => U0_seize_vcount_12_CYAND_776,
      O => U0_seize_vcount_12_CYMUXFAST_777
    );
  U0_seize_vcount_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y28"
    )
    port map (
      IA => U0_seize_vcount_12_LOGIC_ZERO_772,
      IB => U0_seize_vcount_12_CYMUXF2_773,
      SEL => U0_seize_vcount_12_CYSELG_763,
      O => U0_seize_vcount_12_CYMUXG2_774
    );
  U0_seize_vcount_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_12_G,
      O => U0_seize_vcount_12_CYSELG_763
    );
  U0_seize_vcount_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => U0_seize_vcount_12_SRINV_761
    );
  U0_seize_vcount_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_seize_vcount_12_CLKINV_760
    );
  U0_seize_vcount_13 : X_SFF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_12_DYMUX_782,
      CE => VCC,
      CLK => U0_seize_vcount_12_CLKINV_760,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_12_SRINV_761,
      O => U0_seize_vcount(13)
    );
  U0_seize_vcount_15 : X_SFF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_14_DYMUX_825,
      CE => VCC,
      CLK => U0_seize_vcount_14_CLKINV_811,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_14_SRINV_812,
      O => U0_seize_vcount(15)
    );
  U0_seize_vcount_14 : X_SFF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_14_DXMUX_844,
      CE => VCC,
      CLK => U0_seize_vcount_14_CLKINV_811,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_14_SRINV_812,
      O => U0_seize_vcount(14)
    );
  U0_seize_vcount_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      O => U0_seize_vcount_14_LOGIC_ZERO_841
    );
  U0_seize_vcount_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_14_XORF_842,
      O => U0_seize_vcount_14_DXMUX_844
    );
  U0_seize_vcount_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      I0 => U0_seize_vcount_14_CYINIT_840,
      I1 => U0_seize_vcount_14_F,
      O => U0_seize_vcount_14_XORF_842
    );
  U0_seize_vcount_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      IA => U0_seize_vcount_14_LOGIC_ZERO_841,
      IB => U0_seize_vcount_14_CYINIT_840,
      SEL => U0_seize_vcount_14_CYSELF_831,
      O => U0_Mcount_seize_vcount_cy_14_Q
    );
  U0_seize_vcount_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_12_CYMUXFAST_777,
      O => U0_seize_vcount_14_CYINIT_840
    );
  U0_seize_vcount_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_14_F,
      O => U0_seize_vcount_14_CYSELF_831
    );
  U0_seize_vcount_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_14_XORG_823,
      O => U0_seize_vcount_14_DYMUX_825
    );
  U0_seize_vcount_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y29"
    )
    port map (
      I0 => U0_Mcount_seize_vcount_cy_14_Q,
      I1 => U0_seize_vcount_15_rt_820,
      O => U0_seize_vcount_14_XORG_823
    );
  U0_seize_vcount_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => U0_seize_vcount_14_SRINV_812
    );
  U0_seize_vcount_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_seize_vcount_14_CLKINV_811
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X16Y24"
    )
    port map (
      ADR0 => U0_seize_vcount(5),
      ADR1 => U0_seize_vcount(9),
      ADR2 => U0_seize_vcount(10),
      ADR3 => U0_seize_vcount(7),
      O => U0_Mcompar_seize_vcount_cmp_eq0000_lut_0_Q_870
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X16Y24"
    )
    port map (
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_LOGIC_ZERO_866
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X16Y24"
    )
    port map (
      IA => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_LOGIC_ZERO_866,
      IB => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYINIT_877,
      SEL => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELF_871,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_0_Q
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X16Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_BXINV_869,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYINIT_877
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_lut_0_Q_870,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELF_871
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_BXINV_869
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X16Y24"
    )
    port map (
      IA => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_LOGIC_ZERO_866,
      IB => U0_Mcompar_seize_vcount_cmp_eq0000_cy_0_Q,
      SEL => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELG_860,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYMUXG_868
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_lut_1_Q_859,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELG_860
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_lut_2_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X16Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_seize_vcount(15),
      O => U0_Mcompar_seize_vcount_cmp_eq0000_lut_2_Q
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X16Y25"
    )
    port map (
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO_892
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y25"
    )
    port map (
      IA => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO_892,
      IB => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO_892,
      SEL => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELF_898,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXF2_893
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_lut_2_Q,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELF_898
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X16Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_1_CYMUXG_868,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_FASTCARRY_895
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X16Y25"
    )
    port map (
      I0 => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELG_883,
      I1 => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELF_898,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYAND_896
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X16Y25"
    )
    port map (
      IA => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXG2_894,
      IB => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_FASTCARRY_895,
      SEL => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYAND_896,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXFAST_897
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y25"
    )
    port map (
      IA => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO_892,
      IB => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXF2_893,
      SEL => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELG_883,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXG2_894
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y25",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_vcount_0_rt_882,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELG_883
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0A50",
      LOC => "SLICE_X16Y26"
    )
    port map (
      ADR0 => baud_rate_sel_IBUF_398,
      ADR1 => VCC,
      ADR2 => U0_seize_vcount(2),
      ADR3 => U0_seize_vcount(1),
      O => U0_Mcompar_seize_vcount_cmp_eq0000_lut_4_Q_931
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X16Y26"
    )
    port map (
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO_924
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y26"
    )
    port map (
      IA => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO_924,
      IB => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO_924,
      SEL => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELF_930,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXF2_925
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_lut_4_Q_931,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELF_930
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X16Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXFAST_897,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_FASTCARRY_927
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X16Y26"
    )
    port map (
      I0 => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELG_917,
      I1 => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELF_930,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYAND_928
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X16Y26"
    )
    port map (
      IA => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXG2_926,
      IB => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_FASTCARRY_927,
      SEL => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYAND_928,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXFAST_929
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y26"
    )
    port map (
      IA => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO_924,
      IB => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXF2_925,
      SEL => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELG_917,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXG2_926
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y26",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_lut_5_Q_916,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELG_917
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X16Y27"
    )
    port map (
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ZERO_952
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X16Y27"
    )
    port map (
      IA => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ZERO_952,
      IB => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_CYINIT_951,
      SEL => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_CYSELF_944,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_Q
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X16Y27",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXFAST_929,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_CYINIT_951
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y27",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_lut_6_Q_943,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_CYSELF_944
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"4242",
      LOC => "SLICE_X16Y27"
    )
    port map (
      ADR0 => baud_rate_sel_IBUF_398,
      ADR1 => U0_seize_vcount(8),
      ADR2 => U0_seize_vcount(6),
      ADR3 => VCC,
      O => U0_Mcompar_seize_vcount_cmp_eq0000_lut_6_Q_943
    );
  baud_rate_sel_IBUF : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 605 ps
    )
    port map (
      I => baud_rate_sel,
      O => baud_rate_sel_INBUF
    );
  baud_rate_sel_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 605 ps
    )
    port map (
      I => baud_rate_sel_INBUF,
      O => baud_rate_sel_IBUF_398
    );
  tx_done_OBUF : X_OBUF
    generic map(
      LOC => "PAD21"
    )
    port map (
      I => tx_done_O,
      O => tx_done
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  tx_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => tx_O,
      O => tx
    );
  tx_start_IBUF : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 605 ps
    )
    port map (
      I => tx_start,
      O => tx_start_INBUF
    );
  bd_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => bd_O,
      O => bd
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  U1_next_state_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state_not0001_F5MUX_1039,
      O => U1_next_state_not0001
    );
  U1_next_state_not0001_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X19Y40"
    )
    port map (
      IA => N14,
      IB => N15,
      SEL => U1_next_state_not0001_BXINV_1031,
      O => U1_next_state_not0001_F5MUX_1039
    );
  U1_next_state_not0001_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_current_state(3),
      O => U1_next_state_not0001_BXINV_1031
    );
  U1_n_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n_mux0001(1),
      O => U1_n_1_DXMUX_1071
    );
  U1_n_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n_mux0001(0),
      O => U1_n_1_DYMUX_1060
    );
  U1_n_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X21Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n_not0001_0,
      O => U1_n_1_CLKINVNOT
    );
  U1_s_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y37",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s_mux0004(2),
      O => U1_s_2_DXMUX_1105
    );
  U1_s_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y37",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s_mux0004(1),
      O => U1_s_2_DYMUX_1094
    );
  U1_s_2_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X18Y37",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s_not0001_0,
      O => U1_s_2_CLKINVNOT
    );
  U1_next_state_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n_not0001,
      O => U1_n_not0001_0
    );
  U1_next_state_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state_mux0005(0),
      O => U1_next_state_0_DYMUX_1127
    );
  U1_next_state_0_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X16Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state_not0001,
      O => U1_next_state_0_CLKINVNOT
    );
  U1_next_state_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N16,
      O => U1_N16_0
    );
  U1_next_state_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state_mux0005(3),
      O => U1_next_state_3_DYMUX_1157
    );
  U1_next_state_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X19Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state_not0001,
      O => U1_next_state_3_CLKINVNOT
    );
  U1_current_state_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state(3),
      O => U1_current_state_3_DXMUX_1181
    );
  U1_current_state_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state(2),
      O => U1_current_state_3_DYMUX_1176
    );
  U1_current_state_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U1_current_state_3_CLKINV_1174
    );
  U1_s_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y37",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s(1),
      O => U1_s_reg_1_DXMUX_1197
    );
  U1_s_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y37",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s(0),
      O => U1_s_reg_1_DYMUX_1192
    );
  U1_s_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y37",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U1_s_reg_1_CLKINV_1190
    );
  U1_N5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N5,
      O => U1_N5_0
    );
  U1_N5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  U1_s_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y36",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s(3),
      O => U1_s_reg_3_DXMUX_1237
    );
  U1_s_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y36",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s(2),
      O => U1_s_reg_3_DYMUX_1232
    );
  U1_s_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y36",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U1_s_reg_3_CLKINV_1230
    );
  U1_tx_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y41",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s_not0001,
      O => U1_s_not0001_0
    );
  U0_seize_baud_rate_int_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y34",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_baud_rate_int_BYINV_1271,
      O => U0_seize_baud_rate_int_DYMUX_1272
    );
  U0_seize_baud_rate_int_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y34",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => U0_seize_baud_rate_int_BYINV_1271
    );
  U0_seize_baud_rate_int_SRINV : X_INV
    generic map(
      LOC => "SLICE_X16Y34",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => U0_seize_baud_rate_int_SRINVNOT
    );
  U0_seize_baud_rate_int_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y34",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_seize_baud_rate_int_CLKINV_1269
    );
  U1_s_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s_mux0004(3),
      O => U1_s_3_DXMUX_1303
    );
  U1_s_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N18_pack_1,
      O => U1_N18
    );
  U1_s_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X19Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s_not0001_0,
      O => U1_s_3_CLKINVNOT
    );
  U1_next_state_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state_mux0005(1),
      O => U1_next_state_1_DXMUX_1333
    );
  U1_next_state_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N9_pack_1,
      O => U1_N9
    );
  U1_next_state_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X17Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state_not0001,
      O => U1_next_state_1_CLKINVNOT
    );
  U1_next_state_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state_mux0005(2),
      O => U1_next_state_2_DXMUX_1363
    );
  U1_next_state_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N6_pack_1,
      O => U1_N6
    );
  U1_next_state_2_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X18Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state_not0001,
      O => U1_next_state_2_CLKINVNOT
    );
  U1_n_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n_mux0001(2),
      O => U1_n_2_DXMUX_1393
    );
  U1_n_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => N12_pack_1,
      O => N12
    );
  U1_n_2_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X19Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n_not0001_0,
      O => U1_n_2_CLKINVNOT
    );
  U1_s_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s_mux0004(0),
      O => U1_s_0_DXMUX_1423
    );
  U1_s_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => N10_pack_1,
      O => N10
    );
  U1_s_0_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X18Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_s_not0001_0,
      O => U1_s_0_CLKINVNOT
    );
  U1_tx_mux0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y41",
      PATHPULSE => 605 ps
    )
    port map (
      I => N4_pack_1,
      O => N4
    );
  U1_n_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n_mux0001(3),
      O => U1_n_3_DXMUX_1477
    );
  U1_n_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => N6_pack_1,
      O => N6
    );
  U1_n_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X20Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n_not0001_0,
      O => U1_n_3_CLKINVNOT
    );
  U1_n_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n(1),
      O => U1_n_reg_1_DXMUX_1493
    );
  U1_n_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n(0),
      O => U1_n_reg_1_DYMUX_1488
    );
  U1_n_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U1_n_reg_1_CLKINV_1486
    );
  U1_n_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n(3),
      O => U1_n_reg_3_DXMUX_1509
    );
  U1_n_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_n(2),
      O => U1_n_reg_3_DYMUX_1504
    );
  U1_n_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U1_n_reg_3_CLKINV_1502
    );
  U1_current_state_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state(1),
      O => U1_current_state_1_DXMUX_1525
    );
  U1_current_state_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state(0),
      O => U1_current_state_1_DYMUX_1520
    );
  U1_current_state_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U1_current_state_1_CLKINV_1518
    );
  U0_seize_vcount_15_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X17Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_seize_vcount(15),
      O => U0_seize_vcount_15_rt_820
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X16Y24"
    )
    port map (
      ADR0 => U0_seize_vcount(11),
      ADR1 => U0_seize_vcount(13),
      ADR2 => U0_seize_vcount(14),
      ADR3 => U0_seize_vcount(12),
      O => U0_Mcompar_seize_vcount_cmp_eq0000_lut_1_Q_859
    );
  U0_seize_vcount_0_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X16Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U0_seize_vcount(0),
      ADR3 => VCC,
      O => U0_seize_vcount_0_rt_882
    );
  U0_Mcompar_seize_vcount_cmp_eq0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"8811",
      LOC => "SLICE_X16Y26"
    )
    port map (
      ADR0 => baud_rate_sel_IBUF_398,
      ADR1 => U0_seize_vcount(4),
      ADR2 => VCC,
      ADR3 => U0_seize_vcount(3),
      O => U0_Mcompar_seize_vcount_cmp_eq0000_lut_5_Q_916
    );
  tx_done_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => tx_done_OUTPUT_OTCLK1INV_967
    );
  tx_done_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_current_state_3_1_973,
      O => tx_done_O
    );
  tx_done_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_next_state(3),
      O => tx_done_OUTPUT_OFF_O1INV_970
    );
  U1_current_state_3_1 : X_FF
    generic map(
      LOC => "PAD21",
      INIT => '0'
    )
    port map (
      I => tx_done_OUTPUT_OFF_O1INV_970,
      CE => VCC,
      CLK => tx_done_OUTPUT_OTCLK1INV_967,
      SET => GND,
      RST => GND,
      O => U1_current_state_3_1_973
    );
  U0_seize_vcount_1 : X_SFF
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_0_DYMUX_467,
      CE => VCC,
      CLK => U0_seize_vcount_0_CLKINV_450,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_0_SRINV_451,
      O => U0_seize_vcount(1)
    );
  U0_Mcount_seize_vcount_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X17Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U0_seize_vcount(0),
      ADR3 => VCC,
      O => U0_Mcount_seize_vcount_lut(0)
    );
  U0_seize_vcount_0 : X_SFF
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_0_DXMUX_487,
      CE => VCC,
      CLK => U0_seize_vcount_0_CLKINV_450,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_0_SRINV_451,
      O => U0_seize_vcount(0)
    );
  U0_seize_vcount_3 : X_SFF
    generic map(
      LOC => "SLICE_X17Y23",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_2_DYMUX_522,
      CE => VCC,
      CLK => U0_seize_vcount_2_CLKINV_500,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_2_SRINV_501,
      O => U0_seize_vcount(3)
    );
  U0_seize_vcount_2 : X_SFF
    generic map(
      LOC => "SLICE_X17Y23",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_2_DXMUX_539,
      CE => VCC,
      CLK => U0_seize_vcount_2_CLKINV_500,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_2_SRINV_501,
      O => U0_seize_vcount(2)
    );
  U0_seize_vcount_5 : X_SFF
    generic map(
      LOC => "SLICE_X17Y24",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_4_DYMUX_574,
      CE => VCC,
      CLK => U0_seize_vcount_4_CLKINV_552,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_4_SRINV_553,
      O => U0_seize_vcount(5)
    );
  U0_seize_vcount_4 : X_SFF
    generic map(
      LOC => "SLICE_X17Y24",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_4_DXMUX_591,
      CE => VCC,
      CLK => U0_seize_vcount_4_CLKINV_552,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_4_SRINV_553,
      O => U0_seize_vcount(4)
    );
  U0_seize_vcount_7 : X_SFF
    generic map(
      LOC => "SLICE_X17Y25",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_6_DYMUX_626,
      CE => VCC,
      CLK => U0_seize_vcount_6_CLKINV_604,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_6_SRINV_605,
      O => U0_seize_vcount(7)
    );
  U0_seize_vcount_6 : X_SFF
    generic map(
      LOC => "SLICE_X17Y25",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_6_DXMUX_643,
      CE => VCC,
      CLK => U0_seize_vcount_6_CLKINV_604,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_6_SRINV_605,
      O => U0_seize_vcount(6)
    );
  U0_seize_vcount_9 : X_SFF
    generic map(
      LOC => "SLICE_X17Y26",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_8_DYMUX_678,
      CE => VCC,
      CLK => U0_seize_vcount_8_CLKINV_656,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_8_SRINV_657,
      O => U0_seize_vcount(9)
    );
  U0_seize_vcount_8 : X_SFF
    generic map(
      LOC => "SLICE_X17Y26",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_8_DXMUX_695,
      CE => VCC,
      CLK => U0_seize_vcount_8_CLKINV_656,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_8_SRINV_657,
      O => U0_seize_vcount(8)
    );
  U0_seize_vcount_11 : X_SFF
    generic map(
      LOC => "SLICE_X17Y27",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_10_DYMUX_730,
      CE => VCC,
      CLK => U0_seize_vcount_10_CLKINV_708,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_10_SRINV_709,
      O => U0_seize_vcount(11)
    );
  U0_seize_vcount_10 : X_SFF
    generic map(
      LOC => "SLICE_X17Y27",
      INIT => '0'
    )
    port map (
      I => U0_seize_vcount_10_DXMUX_747,
      CE => VCC,
      CLK => U0_seize_vcount_10_CLKINV_708,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_vcount_10_SRINV_709,
      O => U0_seize_vcount(10)
    );
  tx_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_tx_mux0001_1448,
      O => tx_OUTPUT_OFF_O1INV_992
    );
  tx_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_tx_995,
      O => tx_O
    );
  U1_tx : X_LATCHE
    generic map(
      LOC => "PAD24",
      INIT => '0'
    )
    port map (
      I => tx_OUTPUT_OFF_O1INV_992,
      GE => VCC,
      CLK => NlwInverterSignal_U1_tx_CLK,
      SET => GND,
      RST => GND,
      O => U1_tx_995
    );
  tx_OUTPUT_OTCLK1INV : X_INV
    generic map(
      LOC => "PAD24",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_tx_not0001,
      O => tx_OUTPUT_OTCLK1INVNOT
    );
  tx_start_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 605 ps
    )
    port map (
      I => tx_start_INBUF,
      O => tx_start_IBUF_404
    );
  U1_next_state_not0001_F : X_LUT4
    generic map(
      INIT => X"ABAB",
      LOC => "SLICE_X19Y40"
    )
    port map (
      ADR0 => U0_seize_baud_rate_int_405,
      ADR1 => U1_current_state(1),
      ADR2 => U1_current_state(2),
      ADR3 => VCC,
      O => N14
    );
  U1_next_state_not0001_G : X_LUT4
    generic map(
      INIT => X"0088",
      LOC => "SLICE_X19Y40"
    )
    port map (
      ADR0 => U0_seize_baud_rate_int_405,
      ADR1 => U1_s_reg(3),
      ADR2 => VCC,
      ADR3 => U1_N5_0,
      O => N15
    );
  U1_n_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X21Y39",
      INIT => '0'
    )
    port map (
      I => U1_n_1_DYMUX_1060,
      GE => VCC,
      CLK => NlwInverterSignal_U1_n_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_n(0)
    );
  U1_n_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"0808",
      LOC => "SLICE_X21Y39"
    )
    port map (
      ADR0 => U1_current_state(2),
      ADR1 => U1_N6,
      ADR2 => U1_n_reg(0),
      ADR3 => VCC,
      O => U1_n_mux0001(0)
    );
  U1_n_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"0880",
      LOC => "SLICE_X21Y39"
    )
    port map (
      ADR0 => U1_current_state(2),
      ADR1 => U1_N6,
      ADR2 => U1_n_reg(0),
      ADR3 => U1_n_reg(1),
      O => U1_n_mux0001(1)
    );
  U1_n_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X21Y39",
      INIT => '0'
    )
    port map (
      I => U1_n_1_DXMUX_1071,
      GE => VCC,
      CLK => NlwInverterSignal_U1_n_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_n(1)
    );
  U1_s_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X18Y37",
      INIT => '0'
    )
    port map (
      I => U1_s_2_DYMUX_1094,
      GE => VCC,
      CLK => NlwInverterSignal_U1_s_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_s(1)
    );
  U1_s_mux0004_1_1 : X_LUT4
    generic map(
      INIT => X"4488",
      LOC => "SLICE_X18Y37"
    )
    port map (
      ADR0 => U1_s_reg(1),
      ADR1 => U1_N18,
      ADR2 => VCC,
      ADR3 => U1_s_reg(0),
      O => U1_s_mux0004(1)
    );
  U1_s_mux0004_2_1 : X_LUT4
    generic map(
      INIT => X"48C0",
      LOC => "SLICE_X18Y37"
    )
    port map (
      ADR0 => U1_s_reg(1),
      ADR1 => U1_N18,
      ADR2 => U1_s_reg(2),
      ADR3 => U1_s_reg(0),
      O => U1_s_mux0004(2)
    );
  U1_s_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X18Y37",
      INIT => '0'
    )
    port map (
      I => U1_s_2_DXMUX_1105,
      GE => VCC,
      CLK => NlwInverterSignal_U1_s_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_s(2)
    );
  U1_next_state_mux0005_0_1 : X_LUT4
    generic map(
      INIT => X"F222",
      LOC => "SLICE_X16Y38"
    )
    port map (
      ADR0 => U1_N9,
      ADR1 => tx_start_IBUF_404,
      ADR2 => U1_N6,
      ADR3 => U1_current_state(3),
      O => U1_next_state_mux0005(0)
    );
  U1_next_state_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => '1'
    )
    port map (
      I => U1_next_state_0_DYMUX_1127,
      GE => VCC,
      CLK => NlwInverterSignal_U1_next_state_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_next_state(0)
    );
  U1_n_not00011 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X16Y38"
    )
    port map (
      ADR0 => U1_current_state(0),
      ADR1 => U1_current_state(2),
      ADR2 => U1_N6,
      ADR3 => VCC,
      O => U1_n_not0001
    );
  U1_next_state_mux0005_3_1 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X19Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_n_reg(3),
      ADR2 => U0_seize_baud_rate_int_405,
      ADR3 => U1_current_state(2),
      O => U1_next_state_mux0005(3)
    );
  U1_next_state_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X19Y42",
      INIT => '0'
    )
    port map (
      I => U1_next_state_3_DYMUX_1157,
      GE => VCC,
      CLK => NlwInverterSignal_U1_next_state_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_next_state(3)
    );
  U1_tx_mux000121 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X19Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_n_reg(3),
      ADR2 => U0_seize_baud_rate_int_405,
      ADR3 => U1_current_state(2),
      O => U1_N16
    );
  U1_current_state_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y42",
      INIT => '0'
    )
    port map (
      I => U1_current_state_3_DYMUX_1176,
      CE => VCC,
      CLK => U1_current_state_3_CLKINV_1174,
      SET => GND,
      RST => GND,
      O => U1_current_state(2)
    );
  U1_current_state_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y42",
      INIT => '0'
    )
    port map (
      I => U1_current_state_3_DXMUX_1181,
      CE => VCC,
      CLK => U1_current_state_3_CLKINV_1174,
      SET => GND,
      RST => GND,
      O => U1_current_state(3)
    );
  U1_s_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X19Y37",
      INIT => '0'
    )
    port map (
      I => U1_s_reg_1_DYMUX_1192,
      CE => VCC,
      CLK => U1_s_reg_1_CLKINV_1190,
      SET => GND,
      RST => GND,
      O => U1_s_reg(0)
    );
  U1_s_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X19Y37",
      INIT => '0'
    )
    port map (
      I => U1_s_reg_1_DXMUX_1197,
      CE => VCC,
      CLK => U1_s_reg_1_CLKINV_1190,
      SET => GND,
      RST => GND,
      O => U1_s_reg(1)
    );
  U1_next_state_mux0005_0_3_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X18Y39"
    )
    port map (
      ADR0 => U1_s_reg(2),
      ADR1 => U1_s_reg(3),
      ADR2 => U1_s_reg(1),
      ADR3 => U1_s_reg(0),
      O => N8
    );
  U1_s_mux0004_3_21 : X_LUT4
    generic map(
      INIT => X"5FFF",
      LOC => "SLICE_X18Y39"
    )
    port map (
      ADR0 => U1_s_reg(2),
      ADR1 => VCC,
      ADR2 => U1_s_reg(1),
      ADR3 => U1_s_reg(0),
      O => U1_N5
    );
  U1_s_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => '0'
    )
    port map (
      I => U1_s_reg_3_DYMUX_1232,
      CE => VCC,
      CLK => U1_s_reg_3_CLKINV_1230,
      SET => GND,
      RST => GND,
      O => U1_s_reg(2)
    );
  U1_s_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => '0'
    )
    port map (
      I => U1_s_reg_3_DXMUX_1237,
      CE => VCC,
      CLK => U1_s_reg_3_CLKINV_1230,
      SET => GND,
      RST => GND,
      O => U1_s_reg(3)
    );
  U1_s_not00011 : X_LUT4
    generic map(
      INIT => X"AAAB",
      LOC => "SLICE_X19Y41"
    )
    port map (
      ADR0 => U0_seize_baud_rate_int_405,
      ADR1 => U1_current_state(1),
      ADR2 => U1_current_state(2),
      ADR3 => U1_current_state(3),
      O => U1_s_not0001
    );
  U1_tx_not00011 : X_LUT4
    generic map(
      INIT => X"2F2F",
      LOC => "SLICE_X19Y41"
    )
    port map (
      ADR0 => U0_seize_baud_rate_int_405,
      ADR1 => U1_n_reg(3),
      ADR2 => U1_current_state(2),
      ADR3 => VCC,
      O => U1_tx_not0001
    );
  U0_seize_baud_rate_int : X_SFF
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => '0'
    )
    port map (
      I => U0_seize_baud_rate_int_DYMUX_1272,
      CE => VCC,
      CLK => U0_seize_baud_rate_int_CLKINV_1269,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_seize_baud_rate_int_SRINVNOT,
      O => U0_seize_baud_rate_int_405
    );
  U1_s_mux0004_0_1 : X_LUT4
    generic map(
      INIT => X"EE00",
      LOC => "SLICE_X19Y38"
    )
    port map (
      ADR0 => N10,
      ADR1 => U1_current_state(3),
      ADR2 => VCC,
      ADR3 => U0_seize_baud_rate_int_405,
      O => U1_N18_pack_1
    );
  U1_s_mux0004_3_1 : X_LUT4
    generic map(
      INIT => X"A500",
      LOC => "SLICE_X19Y38"
    )
    port map (
      ADR0 => U1_N5_0,
      ADR1 => VCC,
      ADR2 => U1_s_reg(3),
      ADR3 => U1_N18,
      O => U1_s_mux0004(3)
    );
  U1_s_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X19Y38",
      INIT => '0'
    )
    port map (
      I => U1_s_3_DXMUX_1303,
      GE => VCC,
      CLK => NlwInverterSignal_U1_s_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_s(3)
    );
  U1_next_state_mux0005_0_3 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X17Y39"
    )
    port map (
      ADR0 => U0_seize_baud_rate_int_405,
      ADR1 => U1_current_state(1),
      ADR2 => N8_0,
      ADR3 => U1_current_state(0),
      O => U1_N9_pack_1
    );
  U1_next_state_mux0005_1_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X17Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => tx_start_IBUF_404,
      ADR3 => U1_N9,
      O => U1_next_state_mux0005(1)
    );
  U1_next_state_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X17Y39",
      INIT => '0'
    )
    port map (
      I => U1_next_state_1_DXMUX_1333,
      GE => VCC,
      CLK => NlwInverterSignal_U1_next_state_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_next_state(1)
    );
  U1_next_state_mux0005_0_21 : X_LUT4
    generic map(
      INIT => X"5000",
      LOC => "SLICE_X18Y40"
    )
    port map (
      ADR0 => U1_N5_0,
      ADR1 => VCC,
      ADR2 => U1_s_reg(3),
      ADR3 => U0_seize_baud_rate_int_405,
      O => U1_N6_pack_1
    );
  U1_next_state_mux0005_2_1 : X_LUT4
    generic map(
      INIT => X"FFA0",
      LOC => "SLICE_X18Y40"
    )
    port map (
      ADR0 => U1_N6,
      ADR1 => VCC,
      ADR2 => U1_current_state(1),
      ADR3 => U1_N16_0,
      O => U1_next_state_mux0005(2)
    );
  U1_next_state_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X18Y40",
      INIT => '0'
    )
    port map (
      I => U1_next_state_2_DXMUX_1363,
      GE => VCC,
      CLK => NlwInverterSignal_U1_next_state_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_next_state(2)
    );
  U1_n_mux0001_2_SW1 : X_LUT4
    generic map(
      INIT => X"B777",
      LOC => "SLICE_X19Y39"
    )
    port map (
      ADR0 => U1_n_reg(2),
      ADR1 => U1_s_reg(3),
      ADR2 => U1_n_reg(0),
      ADR3 => U1_n_reg(1),
      O => N12_pack_1
    );
  U1_n_mux0001_2_Q : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X19Y39"
    )
    port map (
      ADR0 => U1_N5_0,
      ADR1 => N12,
      ADR2 => U1_current_state(2),
      ADR3 => U0_seize_baud_rate_int_405,
      O => U1_n_mux0001(2)
    );
  U1_n_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X19Y39",
      INIT => '0'
    )
    port map (
      I => U1_n_2_DXMUX_1393,
      GE => VCC,
      CLK => NlwInverterSignal_U1_n_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_n(2)
    );
  U1_s_mux0004_0_1_SW0 : X_LUT4
    generic map(
      INIT => X"8F88",
      LOC => "SLICE_X18Y38"
    )
    port map (
      ADR0 => U1_current_state(1),
      ADR1 => tx_start_IBUF_404,
      ADR2 => U1_n_reg(3),
      ADR3 => U1_current_state(2),
      O => N10_pack_1
    );
  U1_s_mux0004_0_2 : X_LUT4
    generic map(
      INIT => X"2220",
      LOC => "SLICE_X18Y38"
    )
    port map (
      ADR0 => U0_seize_baud_rate_int_405,
      ADR1 => U1_s_reg(0),
      ADR2 => U1_current_state(3),
      ADR3 => N10,
      O => U1_s_mux0004(0)
    );
  U1_s_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X18Y38",
      INIT => '0'
    )
    port map (
      I => U1_s_0_DXMUX_1423,
      GE => VCC,
      CLK => NlwInverterSignal_U1_s_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_s(0)
    );
  U1_tx_mux0001_SW0 : X_LUT4
    generic map(
      INIT => X"F3FC",
      LOC => "SLICE_X18Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_n_reg(2),
      ADR2 => U1_n_reg(0),
      ADR3 => U1_n_reg(1),
      O => N4_pack_1
    );
  U1_tx_mux0001 : X_LUT4
    generic map(
      INIT => X"EFEE",
      LOC => "SLICE_X18Y41"
    )
    port map (
      ADR0 => U1_current_state(3),
      ADR1 => U1_current_state(0),
      ADR2 => N4,
      ADR3 => U1_N16_0,
      O => U1_tx_mux0001_1448
    );
  U1_n_mux0001_3_SW0 : X_LUT4
    generic map(
      INIT => X"77FF",
      LOC => "SLICE_X20Y38"
    )
    port map (
      ADR0 => U1_n_reg(1),
      ADR1 => U1_n_reg(2),
      ADR2 => VCC,
      ADR3 => U1_n_reg(0),
      O => N6_pack_1
    );
  U1_n_mux0001_3_Q : X_LUT4
    generic map(
      INIT => X"8008",
      LOC => "SLICE_X20Y38"
    )
    port map (
      ADR0 => U1_N6,
      ADR1 => U1_current_state(2),
      ADR2 => U1_n_reg(3),
      ADR3 => N6,
      O => U1_n_mux0001(3)
    );
  U1_n_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X20Y38",
      INIT => '0'
    )
    port map (
      I => U1_n_3_DXMUX_1477,
      GE => VCC,
      CLK => NlwInverterSignal_U1_n_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_n(3)
    );
  U1_n_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y38",
      INIT => '0'
    )
    port map (
      I => U1_n_reg_1_DYMUX_1488,
      CE => VCC,
      CLK => U1_n_reg_1_CLKINV_1486,
      SET => GND,
      RST => GND,
      O => U1_n_reg(0)
    );
  U1_n_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y38",
      INIT => '0'
    )
    port map (
      I => U1_n_reg_1_DXMUX_1493,
      CE => VCC,
      CLK => U1_n_reg_1_CLKINV_1486,
      SET => GND,
      RST => GND,
      O => U1_n_reg(1)
    );
  U1_n_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X20Y39",
      INIT => '0'
    )
    port map (
      I => U1_n_reg_3_DYMUX_1504,
      CE => VCC,
      CLK => U1_n_reg_3_CLKINV_1502,
      SET => GND,
      RST => GND,
      O => U1_n_reg(2)
    );
  U1_n_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X20Y39",
      INIT => '0'
    )
    port map (
      I => U1_n_reg_3_DXMUX_1509,
      CE => VCC,
      CLK => U1_n_reg_3_CLKINV_1502,
      SET => GND,
      RST => GND,
      O => U1_n_reg(3)
    );
  U1_current_state_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => '1'
    )
    port map (
      I => U1_current_state_1_DYMUX_1520,
      CE => VCC,
      CLK => U1_current_state_1_CLKINV_1518,
      SET => GND,
      RST => GND,
      O => U1_current_state(0)
    );
  U1_current_state_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => '0'
    )
    port map (
      I => U1_current_state_1_DXMUX_1525,
      CE => VCC,
      CLK => U1_current_state_1_CLKINV_1518,
      SET => GND,
      RST => GND,
      O => U1_current_state(1)
    );
  U0_seize_vcount_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X17Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U0_seize_vcount(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_seize_vcount_0_G
    );
  U0_seize_vcount_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X17Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_seize_vcount(2),
      O => U0_seize_vcount_2_F
    );
  U0_seize_vcount_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X17Y23"
    )
    port map (
      ADR0 => U0_seize_vcount(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_seize_vcount_2_G
    );
  U0_seize_vcount_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X17Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U0_seize_vcount(4),
      ADR3 => VCC,
      O => U0_seize_vcount_4_F
    );
  U0_seize_vcount_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X17Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_seize_vcount(5),
      O => U0_seize_vcount_4_G
    );
  U0_seize_vcount_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X17Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_seize_vcount(6),
      O => U0_seize_vcount_6_F
    );
  U0_seize_vcount_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X17Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U0_seize_vcount(7),
      ADR3 => VCC,
      O => U0_seize_vcount_6_G
    );
  U0_seize_vcount_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X17Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U0_seize_vcount(8),
      ADR3 => VCC,
      O => U0_seize_vcount_8_F
    );
  U0_seize_vcount_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X17Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U0_seize_vcount(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_seize_vcount_8_G
    );
  U0_seize_vcount_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X17Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_seize_vcount(10),
      O => U0_seize_vcount_10_F
    );
  U0_seize_vcount_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X17Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_seize_vcount(11),
      O => U0_seize_vcount_10_G
    );
  U0_seize_vcount_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X17Y28"
    )
    port map (
      ADR0 => U0_seize_vcount(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_seize_vcount_12_F
    );
  U0_seize_vcount_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X17Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U0_seize_vcount(13),
      ADR3 => VCC,
      O => U0_seize_vcount_12_G
    );
  U0_seize_vcount_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X17Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U0_seize_vcount(14),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_seize_vcount_14_F
    );
  bd_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_seize_baud_rate_int_405,
      O => bd_O
    );
  NlwBlock_UART_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_UART_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_U1_tx_CLK : X_INV
    port map (
      I => tx_OUTPUT_OTCLK1INVNOT,
      O => NlwInverterSignal_U1_tx_CLK
    );
  NlwInverterBlock_U1_n_0_CLK : X_INV
    port map (
      I => U1_n_1_CLKINVNOT,
      O => NlwInverterSignal_U1_n_0_CLK
    );
  NlwInverterBlock_U1_n_1_CLK : X_INV
    port map (
      I => U1_n_1_CLKINVNOT,
      O => NlwInverterSignal_U1_n_1_CLK
    );
  NlwInverterBlock_U1_s_1_CLK : X_INV
    port map (
      I => U1_s_2_CLKINVNOT,
      O => NlwInverterSignal_U1_s_1_CLK
    );
  NlwInverterBlock_U1_s_2_CLK : X_INV
    port map (
      I => U1_s_2_CLKINVNOT,
      O => NlwInverterSignal_U1_s_2_CLK
    );
  NlwInverterBlock_U1_next_state_0_CLK : X_INV
    port map (
      I => U1_next_state_0_CLKINVNOT,
      O => NlwInverterSignal_U1_next_state_0_CLK
    );
  NlwInverterBlock_U1_next_state_3_CLK : X_INV
    port map (
      I => U1_next_state_3_CLKINVNOT,
      O => NlwInverterSignal_U1_next_state_3_CLK
    );
  NlwInverterBlock_U1_s_3_CLK : X_INV
    port map (
      I => U1_s_3_CLKINVNOT,
      O => NlwInverterSignal_U1_s_3_CLK
    );
  NlwInverterBlock_U1_next_state_1_CLK : X_INV
    port map (
      I => U1_next_state_1_CLKINVNOT,
      O => NlwInverterSignal_U1_next_state_1_CLK
    );
  NlwInverterBlock_U1_next_state_2_CLK : X_INV
    port map (
      I => U1_next_state_2_CLKINVNOT,
      O => NlwInverterSignal_U1_next_state_2_CLK
    );
  NlwInverterBlock_U1_n_2_CLK : X_INV
    port map (
      I => U1_n_2_CLKINVNOT,
      O => NlwInverterSignal_U1_n_2_CLK
    );
  NlwInverterBlock_U1_s_0_CLK : X_INV
    port map (
      I => U1_s_0_CLKINVNOT,
      O => NlwInverterSignal_U1_s_0_CLK
    );
  NlwInverterBlock_U1_n_3_CLK : X_INV
    port map (
      I => U1_n_3_CLKINVNOT,
      O => NlwInverterSignal_U1_n_3_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

