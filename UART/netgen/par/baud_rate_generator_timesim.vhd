--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: baud_rate_generator_timesim.vhd
-- /___/   /\     Timestamp: Wed Mar 27 15:17:30 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf baud_rate_generator.pcf -rpw 100 -tpw 0 -ar Structure -tm baud_rate_generator -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim baud_rate_generator.ncd baud_rate_generator_timesim.vhd 
-- Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-06-08)
-- Input file	: baud_rate_generator.ncd
-- Output file	: C:\CPE_USERS\TPelec_4ETI\UART\netgen\par\baud_rate_generator_timesim.vhd
-- # of Entities	: 1
-- Design Name	: baud_rate_generator
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

entity baud_rate_generator is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    baud_rate_sel : in STD_LOGIC := 'X'; 
    seize_baud_rate : out STD_LOGIC 
  );
end baud_rate_generator;

architecture Structure of baud_rate_generator is
  signal baud_rate_sel_IBUF_213 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_6_Q : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal rst_IBUF_223 : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_1_Q : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_3_Q : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_5_Q : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_7_Q : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_9_Q : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_11_Q : STD_LOGIC; 
  signal seize_baud_rate_int_231 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_1_CYINIT_261 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELF_255 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_lut_0_Q_254 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_1_BXINV_253 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_1_CYMUXG_252 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_0_Q : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_1_LOGIC_ZERO_250 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELG_244 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_lut_1_Q_243 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_lut_2_Q : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELF_282 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXFAST_281 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_3_CYAND_280 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_3_FASTCARRY_279 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXG2_278 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXF2_277 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO_276 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELG_267 : STD_LOGIC; 
  signal seize_vcount_0_rt_266 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_lut_4_Q_315 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELF_314 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXFAST_313 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_5_CYAND_312 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_5_FASTCARRY_311 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXG2_310 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXF2_309 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO_308 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELG_301 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_lut_5_Q_300 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ZERO_341 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_lut_6_Q_334 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_6_CYSELF_333 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXFAST_332 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_6_CYAND_331 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_6_FASTCARRY_330 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXG2_329 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ONE_328 : STD_LOGIC; 
  signal Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXF2_327 : STD_LOGIC; 
  signal seize_vcount_0_FFY_RST : STD_LOGIC; 
  signal seize_vcount_0_DXMUX_388 : STD_LOGIC; 
  signal seize_vcount_0_XORF_386 : STD_LOGIC; 
  signal seize_vcount_0_CYINIT_385 : STD_LOGIC; 
  signal seize_vcount_0_CYSELF_377 : STD_LOGIC; 
  signal seize_vcount_0_DYMUX_368 : STD_LOGIC; 
  signal seize_vcount_0_XORG_366 : STD_LOGIC; 
  signal seize_vcount_0_CYMUXG_365 : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_0_Q : STD_LOGIC; 
  signal seize_vcount_0_LOGIC_ZERO_363 : STD_LOGIC; 
  signal seize_vcount_0_CYSELG_355 : STD_LOGIC; 
  signal seize_vcount_0_SRINV_353 : STD_LOGIC; 
  signal seize_vcount_0_CLKINV_352 : STD_LOGIC; 
  signal seize_vcount_2_DXMUX_444 : STD_LOGIC; 
  signal seize_vcount_2_XORF_442 : STD_LOGIC; 
  signal seize_vcount_2_CYINIT_441 : STD_LOGIC; 
  signal seize_vcount_2_DYMUX_426 : STD_LOGIC; 
  signal seize_vcount_2_XORG_424 : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_2_Q : STD_LOGIC; 
  signal seize_vcount_2_CYSELF_422 : STD_LOGIC; 
  signal seize_vcount_2_CYMUXFAST_421 : STD_LOGIC; 
  signal seize_vcount_2_CYAND_420 : STD_LOGIC; 
  signal seize_vcount_2_FASTCARRY_419 : STD_LOGIC; 
  signal seize_vcount_2_CYMUXG2_418 : STD_LOGIC; 
  signal seize_vcount_2_CYMUXF2_417 : STD_LOGIC; 
  signal seize_vcount_2_LOGIC_ZERO_416 : STD_LOGIC; 
  signal seize_vcount_2_CYSELG_408 : STD_LOGIC; 
  signal seize_vcount_2_SRINV_406 : STD_LOGIC; 
  signal seize_vcount_2_CLKINV_405 : STD_LOGIC; 
  signal seize_vcount_4_DXMUX_500 : STD_LOGIC; 
  signal seize_vcount_4_XORF_498 : STD_LOGIC; 
  signal seize_vcount_4_CYINIT_497 : STD_LOGIC; 
  signal seize_vcount_4_DYMUX_482 : STD_LOGIC; 
  signal seize_vcount_4_XORG_480 : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_4_Q : STD_LOGIC; 
  signal seize_vcount_4_CYSELF_478 : STD_LOGIC; 
  signal seize_vcount_4_CYMUXFAST_477 : STD_LOGIC; 
  signal seize_vcount_4_CYAND_476 : STD_LOGIC; 
  signal seize_vcount_4_FASTCARRY_475 : STD_LOGIC; 
  signal seize_vcount_4_CYMUXG2_474 : STD_LOGIC; 
  signal seize_vcount_4_CYMUXF2_473 : STD_LOGIC; 
  signal seize_vcount_4_LOGIC_ZERO_472 : STD_LOGIC; 
  signal seize_vcount_4_CYSELG_464 : STD_LOGIC; 
  signal seize_vcount_4_SRINV_462 : STD_LOGIC; 
  signal seize_vcount_4_CLKINV_461 : STD_LOGIC; 
  signal seize_vcount_6_DXMUX_556 : STD_LOGIC; 
  signal seize_vcount_6_XORF_554 : STD_LOGIC; 
  signal seize_vcount_6_CYINIT_553 : STD_LOGIC; 
  signal seize_vcount_6_DYMUX_538 : STD_LOGIC; 
  signal seize_vcount_6_XORG_536 : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_6_Q : STD_LOGIC; 
  signal seize_vcount_6_CYSELF_534 : STD_LOGIC; 
  signal seize_vcount_6_CYMUXFAST_533 : STD_LOGIC; 
  signal seize_vcount_6_CYAND_532 : STD_LOGIC; 
  signal seize_vcount_6_FASTCARRY_531 : STD_LOGIC; 
  signal seize_vcount_6_CYMUXG2_530 : STD_LOGIC; 
  signal seize_vcount_6_CYMUXF2_529 : STD_LOGIC; 
  signal seize_vcount_6_LOGIC_ZERO_528 : STD_LOGIC; 
  signal seize_vcount_6_CYSELG_520 : STD_LOGIC; 
  signal seize_vcount_6_SRINV_518 : STD_LOGIC; 
  signal seize_vcount_6_CLKINV_517 : STD_LOGIC; 
  signal seize_vcount_8_DXMUX_612 : STD_LOGIC; 
  signal seize_vcount_8_XORF_610 : STD_LOGIC; 
  signal seize_vcount_8_CYINIT_609 : STD_LOGIC; 
  signal seize_vcount_8_DYMUX_594 : STD_LOGIC; 
  signal seize_vcount_8_XORG_592 : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_8_Q : STD_LOGIC; 
  signal seize_vcount_8_CYSELF_590 : STD_LOGIC; 
  signal seize_vcount_8_CYMUXFAST_589 : STD_LOGIC; 
  signal seize_vcount_8_CYAND_588 : STD_LOGIC; 
  signal seize_vcount_8_FASTCARRY_587 : STD_LOGIC; 
  signal seize_vcount_8_CYMUXG2_586 : STD_LOGIC; 
  signal seize_vcount_8_CYMUXF2_585 : STD_LOGIC; 
  signal seize_vcount_8_LOGIC_ZERO_584 : STD_LOGIC; 
  signal seize_vcount_8_CYSELG_576 : STD_LOGIC; 
  signal seize_vcount_8_SRINV_574 : STD_LOGIC; 
  signal seize_vcount_8_CLKINV_573 : STD_LOGIC; 
  signal seize_vcount_10_DXMUX_668 : STD_LOGIC; 
  signal seize_vcount_10_XORF_666 : STD_LOGIC; 
  signal seize_vcount_10_CYINIT_665 : STD_LOGIC; 
  signal seize_vcount_10_DYMUX_650 : STD_LOGIC; 
  signal seize_vcount_10_XORG_648 : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_10_Q : STD_LOGIC; 
  signal seize_vcount_10_CYSELF_646 : STD_LOGIC; 
  signal seize_vcount_10_CYMUXFAST_645 : STD_LOGIC; 
  signal seize_vcount_10_CYAND_644 : STD_LOGIC; 
  signal seize_vcount_10_FASTCARRY_643 : STD_LOGIC; 
  signal seize_vcount_10_CYMUXG2_642 : STD_LOGIC; 
  signal seize_vcount_10_CYMUXF2_641 : STD_LOGIC; 
  signal seize_vcount_10_LOGIC_ZERO_640 : STD_LOGIC; 
  signal seize_vcount_10_CYSELG_632 : STD_LOGIC; 
  signal seize_vcount_10_SRINV_630 : STD_LOGIC; 
  signal seize_vcount_10_CLKINV_629 : STD_LOGIC; 
  signal seize_vcount_12_DXMUX_724 : STD_LOGIC; 
  signal seize_vcount_12_XORF_722 : STD_LOGIC; 
  signal seize_vcount_12_CYINIT_721 : STD_LOGIC; 
  signal seize_vcount_12_DYMUX_706 : STD_LOGIC; 
  signal seize_vcount_12_XORG_704 : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_12_Q : STD_LOGIC; 
  signal seize_vcount_12_CYSELF_702 : STD_LOGIC; 
  signal seize_vcount_12_CYMUXFAST_701 : STD_LOGIC; 
  signal seize_vcount_12_CYAND_700 : STD_LOGIC; 
  signal seize_vcount_12_FASTCARRY_699 : STD_LOGIC; 
  signal seize_vcount_12_CYMUXG2_698 : STD_LOGIC; 
  signal seize_vcount_12_CYMUXF2_697 : STD_LOGIC; 
  signal seize_vcount_12_LOGIC_ZERO_696 : STD_LOGIC; 
  signal seize_vcount_12_CYSELG_688 : STD_LOGIC; 
  signal seize_vcount_12_SRINV_686 : STD_LOGIC; 
  signal seize_vcount_12_CLKINV_685 : STD_LOGIC; 
  signal seize_vcount_14_DXMUX_773 : STD_LOGIC; 
  signal seize_vcount_14_XORF_771 : STD_LOGIC; 
  signal seize_vcount_14_LOGIC_ZERO_770 : STD_LOGIC; 
  signal seize_vcount_14_CYINIT_769 : STD_LOGIC; 
  signal seize_vcount_14_CYSELF_761 : STD_LOGIC; 
  signal seize_vcount_14_DYMUX_753 : STD_LOGIC; 
  signal seize_vcount_14_XORG_751 : STD_LOGIC; 
  signal Mcount_seize_vcount_cy_14_Q : STD_LOGIC; 
  signal seize_vcount_14_SRINV_741 : STD_LOGIC; 
  signal seize_vcount_14_CLKINV_740 : STD_LOGIC; 
  signal baud_rate_sel_INBUF : STD_LOGIC; 
  signal seize_baud_rate_O : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal rst_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal seize_baud_rate_int_FFY_RST : STD_LOGIC; 
  signal seize_baud_rate_int_DYMUX_818 : STD_LOGIC; 
  signal seize_baud_rate_int_CLKINV_815 : STD_LOGIC; 
  signal NLW_Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXG2_IA_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal seize_vcount : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcount_seize_vcount_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  Mcompar_seize_vcount_cmp_eq0000_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X21Y0"
    )
    port map (
      O => Mcompar_seize_vcount_cmp_eq0000_cy_1_LOGIC_ZERO_250
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X21Y0"
    )
    port map (
      IA => Mcompar_seize_vcount_cmp_eq0000_cy_1_LOGIC_ZERO_250,
      IB => Mcompar_seize_vcount_cmp_eq0000_cy_1_CYINIT_261,
      SEL => Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELF_255,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_0_Q
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X21Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_cy_1_BXINV_253,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_1_CYINIT_261
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_lut_0_Q_254,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELF_255
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => Mcompar_seize_vcount_cmp_eq0000_cy_1_BXINV_253
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X21Y0"
    )
    port map (
      IA => Mcompar_seize_vcount_cmp_eq0000_cy_1_LOGIC_ZERO_250,
      IB => Mcompar_seize_vcount_cmp_eq0000_cy_0_Q,
      SEL => Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELG_244,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_1_CYMUXG_252
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X21Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_lut_1_Q_243,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_1_CYSELG_244
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X21Y1"
    )
    port map (
      O => Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO_276
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y1"
    )
    port map (
      IA => Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO_276,
      IB => Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO_276,
      SEL => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELF_282,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXF2_277
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_lut_2_Q,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELF_282
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X21Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_cy_1_CYMUXG_252,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_3_FASTCARRY_279
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X21Y1"
    )
    port map (
      I0 => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELG_267,
      I1 => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELF_282,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYAND_280
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X21Y1"
    )
    port map (
      IA => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXG2_278,
      IB => Mcompar_seize_vcount_cmp_eq0000_cy_3_FASTCARRY_279,
      SEL => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYAND_280,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXFAST_281
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y1"
    )
    port map (
      IA => Mcompar_seize_vcount_cmp_eq0000_cy_3_LOGIC_ZERO_276,
      IB => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXF2_277,
      SEL => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELG_267,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXG2_278
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X21Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_0_rt_266,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYSELG_267
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X21Y2"
    )
    port map (
      O => Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO_308
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y2"
    )
    port map (
      IA => Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO_308,
      IB => Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO_308,
      SEL => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELF_314,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXF2_309
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_lut_4_Q_315,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELF_314
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X21Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_cy_3_CYMUXFAST_281,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_5_FASTCARRY_311
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X21Y2"
    )
    port map (
      I0 => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELG_301,
      I1 => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELF_314,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYAND_312
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X21Y2"
    )
    port map (
      IA => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXG2_310,
      IB => Mcompar_seize_vcount_cmp_eq0000_cy_5_FASTCARRY_311,
      SEL => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYAND_312,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXFAST_313
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y2"
    )
    port map (
      IA => Mcompar_seize_vcount_cmp_eq0000_cy_5_LOGIC_ZERO_308,
      IB => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXF2_309,
      SEL => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELG_301,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXG2_310
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X21Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_lut_5_Q_300,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYSELG_301
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X21Y3"
    )
    port map (
      O => Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ONE_328
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X21Y3"
    )
    port map (
      O => Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ZERO_341
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y3"
    )
    port map (
      IA => Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ZERO_341,
      IB => Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ZERO_341,
      SEL => Mcompar_seize_vcount_cmp_eq0000_cy_6_CYSELF_333,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXF2_327
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_lut_6_Q_334,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_6_CYSELF_333
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXFAST_332,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X21Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_cy_5_CYMUXFAST_313,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_6_FASTCARRY_330
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X21Y3"
    )
    port map (
      I0 => Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ONE_328,
      I1 => Mcompar_seize_vcount_cmp_eq0000_cy_6_CYSELF_333,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_6_CYAND_331
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X21Y3"
    )
    port map (
      IA => Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXG2_329,
      IB => Mcompar_seize_vcount_cmp_eq0000_cy_6_FASTCARRY_330,
      SEL => Mcompar_seize_vcount_cmp_eq0000_cy_6_CYAND_331,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXFAST_332
    );
  Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y3"
    )
    port map (
      IA => NLW_Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXG2_IA_UNCONNECTED,
      IB => Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXF2_327,
      SEL => Mcompar_seize_vcount_cmp_eq0000_cy_6_LOGIC_ONE_328,
      O => Mcompar_seize_vcount_cmp_eq0000_cy_6_CYMUXG2_329
    );
  Mcount_seize_vcount_lut_0_Q : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X20Y0"
    )
    port map (
      ADR0 => seize_vcount(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => Mcount_seize_vcount_lut(0)
    );
  seize_vcount_0_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_0_SRINV_353,
      O => seize_vcount_0_FFY_RST
    );
  seize_vcount_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y0",
      INIT => '0'
    )
    port map (
      I => seize_vcount_0_DYMUX_368,
      CE => VCC,
      CLK => seize_vcount_0_CLKINV_352,
      SET => GND,
      RST => seize_vcount_0_FFY_RST,
      O => seize_vcount(1)
    );
  seize_vcount_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y0"
    )
    port map (
      O => seize_vcount_0_LOGIC_ZERO_363
    );
  seize_vcount_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_0_XORF_386,
      O => seize_vcount_0_DXMUX_388
    );
  seize_vcount_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y0"
    )
    port map (
      I0 => seize_vcount_0_CYINIT_385,
      I1 => Mcount_seize_vcount_lut(0),
      O => seize_vcount_0_XORF_386
    );
  seize_vcount_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y0"
    )
    port map (
      IA => seize_vcount_0_LOGIC_ZERO_363,
      IB => seize_vcount_0_CYINIT_385,
      SEL => seize_vcount_0_CYSELF_377,
      O => Mcount_seize_vcount_cy_0_Q
    );
  seize_vcount_0_CYINIT : X_INV
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => seize_vcount_0_CYINIT_385
    );
  seize_vcount_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(0),
      O => seize_vcount_0_CYSELF_377
    );
  seize_vcount_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_0_XORG_366,
      O => seize_vcount_0_DYMUX_368
    );
  seize_vcount_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y0"
    )
    port map (
      I0 => Mcount_seize_vcount_cy_0_Q,
      I1 => Mcount_seize_vcount_lut(1),
      O => seize_vcount_0_XORG_366
    );
  seize_vcount_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_0_CYMUXG_365,
      O => Mcount_seize_vcount_cy_1_Q
    );
  seize_vcount_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X20Y0"
    )
    port map (
      IA => seize_vcount_0_LOGIC_ZERO_363,
      IB => Mcount_seize_vcount_cy_0_Q,
      SEL => seize_vcount_0_CYSELG_355,
      O => seize_vcount_0_CYMUXG_365
    );
  seize_vcount_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(1),
      O => seize_vcount_0_CYSELG_355
    );
  seize_vcount_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_IBUF_223,
      O => seize_vcount_0_SRINV_353
    );
  seize_vcount_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => seize_vcount_0_CLKINV_352
    );
  Mcount_seize_vcount_lut_1_Q : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X20Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seize_vcount(1),
      ADR2 => VCC,
      ADR3 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => Mcount_seize_vcount_lut(1)
    );
  seize_vcount_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y1"
    )
    port map (
      O => seize_vcount_2_LOGIC_ZERO_416
    );
  seize_vcount_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_2_XORF_442,
      O => seize_vcount_2_DXMUX_444
    );
  seize_vcount_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y1"
    )
    port map (
      I0 => seize_vcount_2_CYINIT_441,
      I1 => Mcount_seize_vcount_lut(2),
      O => seize_vcount_2_XORF_442
    );
  seize_vcount_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y1"
    )
    port map (
      IA => seize_vcount_2_LOGIC_ZERO_416,
      IB => seize_vcount_2_CYINIT_441,
      SEL => seize_vcount_2_CYSELF_422,
      O => Mcount_seize_vcount_cy_2_Q
    );
  seize_vcount_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y1"
    )
    port map (
      IA => seize_vcount_2_LOGIC_ZERO_416,
      IB => seize_vcount_2_LOGIC_ZERO_416,
      SEL => seize_vcount_2_CYSELF_422,
      O => seize_vcount_2_CYMUXF2_417
    );
  seize_vcount_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_1_Q,
      O => seize_vcount_2_CYINIT_441
    );
  seize_vcount_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(2),
      O => seize_vcount_2_CYSELF_422
    );
  seize_vcount_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_2_XORG_424,
      O => seize_vcount_2_DYMUX_426
    );
  seize_vcount_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y1"
    )
    port map (
      I0 => Mcount_seize_vcount_cy_2_Q,
      I1 => Mcount_seize_vcount_lut(3),
      O => seize_vcount_2_XORG_424
    );
  seize_vcount_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_2_CYMUXFAST_421,
      O => Mcount_seize_vcount_cy_3_Q
    );
  seize_vcount_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_1_Q,
      O => seize_vcount_2_FASTCARRY_419
    );
  seize_vcount_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y1"
    )
    port map (
      I0 => seize_vcount_2_CYSELG_408,
      I1 => seize_vcount_2_CYSELF_422,
      O => seize_vcount_2_CYAND_420
    );
  seize_vcount_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y1"
    )
    port map (
      IA => seize_vcount_2_CYMUXG2_418,
      IB => seize_vcount_2_FASTCARRY_419,
      SEL => seize_vcount_2_CYAND_420,
      O => seize_vcount_2_CYMUXFAST_421
    );
  seize_vcount_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y1"
    )
    port map (
      IA => seize_vcount_2_LOGIC_ZERO_416,
      IB => seize_vcount_2_CYMUXF2_417,
      SEL => seize_vcount_2_CYSELG_408,
      O => seize_vcount_2_CYMUXG2_418
    );
  seize_vcount_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(3),
      O => seize_vcount_2_CYSELG_408
    );
  seize_vcount_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_IBUF_223,
      O => seize_vcount_2_SRINV_406
    );
  seize_vcount_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => seize_vcount_2_CLKINV_405
    );
  Mcount_seize_vcount_lut_2_Q : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X20Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seize_vcount(2),
      ADR2 => VCC,
      ADR3 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => Mcount_seize_vcount_lut(2)
    );
  seize_vcount_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      O => seize_vcount_4_LOGIC_ZERO_472
    );
  seize_vcount_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_4_XORF_498,
      O => seize_vcount_4_DXMUX_500
    );
  seize_vcount_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      I0 => seize_vcount_4_CYINIT_497,
      I1 => Mcount_seize_vcount_lut(4),
      O => seize_vcount_4_XORF_498
    );
  seize_vcount_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      IA => seize_vcount_4_LOGIC_ZERO_472,
      IB => seize_vcount_4_CYINIT_497,
      SEL => seize_vcount_4_CYSELF_478,
      O => Mcount_seize_vcount_cy_4_Q
    );
  seize_vcount_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      IA => seize_vcount_4_LOGIC_ZERO_472,
      IB => seize_vcount_4_LOGIC_ZERO_472,
      SEL => seize_vcount_4_CYSELF_478,
      O => seize_vcount_4_CYMUXF2_473
    );
  seize_vcount_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_3_Q,
      O => seize_vcount_4_CYINIT_497
    );
  seize_vcount_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(4),
      O => seize_vcount_4_CYSELF_478
    );
  seize_vcount_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_4_XORG_480,
      O => seize_vcount_4_DYMUX_482
    );
  seize_vcount_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      I0 => Mcount_seize_vcount_cy_4_Q,
      I1 => Mcount_seize_vcount_lut(5),
      O => seize_vcount_4_XORG_480
    );
  seize_vcount_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_4_CYMUXFAST_477,
      O => Mcount_seize_vcount_cy_5_Q
    );
  seize_vcount_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_3_Q,
      O => seize_vcount_4_FASTCARRY_475
    );
  seize_vcount_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      I0 => seize_vcount_4_CYSELG_464,
      I1 => seize_vcount_4_CYSELF_478,
      O => seize_vcount_4_CYAND_476
    );
  seize_vcount_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      IA => seize_vcount_4_CYMUXG2_474,
      IB => seize_vcount_4_FASTCARRY_475,
      SEL => seize_vcount_4_CYAND_476,
      O => seize_vcount_4_CYMUXFAST_477
    );
  seize_vcount_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      IA => seize_vcount_4_LOGIC_ZERO_472,
      IB => seize_vcount_4_CYMUXF2_473,
      SEL => seize_vcount_4_CYSELG_464,
      O => seize_vcount_4_CYMUXG2_474
    );
  seize_vcount_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(5),
      O => seize_vcount_4_CYSELG_464
    );
  seize_vcount_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_IBUF_223,
      O => seize_vcount_4_SRINV_462
    );
  seize_vcount_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => seize_vcount_4_CLKINV_461
    );
  Mcount_seize_vcount_lut_4_Q : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X20Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => seize_vcount(4),
      ADR3 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => Mcount_seize_vcount_lut(4)
    );
  seize_vcount_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      O => seize_vcount_6_LOGIC_ZERO_528
    );
  seize_vcount_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_6_XORF_554,
      O => seize_vcount_6_DXMUX_556
    );
  seize_vcount_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      I0 => seize_vcount_6_CYINIT_553,
      I1 => Mcount_seize_vcount_lut(6),
      O => seize_vcount_6_XORF_554
    );
  seize_vcount_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      IA => seize_vcount_6_LOGIC_ZERO_528,
      IB => seize_vcount_6_CYINIT_553,
      SEL => seize_vcount_6_CYSELF_534,
      O => Mcount_seize_vcount_cy_6_Q
    );
  seize_vcount_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      IA => seize_vcount_6_LOGIC_ZERO_528,
      IB => seize_vcount_6_LOGIC_ZERO_528,
      SEL => seize_vcount_6_CYSELF_534,
      O => seize_vcount_6_CYMUXF2_529
    );
  seize_vcount_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_5_Q,
      O => seize_vcount_6_CYINIT_553
    );
  seize_vcount_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(6),
      O => seize_vcount_6_CYSELF_534
    );
  seize_vcount_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_6_XORG_536,
      O => seize_vcount_6_DYMUX_538
    );
  seize_vcount_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      I0 => Mcount_seize_vcount_cy_6_Q,
      I1 => Mcount_seize_vcount_lut(7),
      O => seize_vcount_6_XORG_536
    );
  seize_vcount_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_6_CYMUXFAST_533,
      O => Mcount_seize_vcount_cy_7_Q
    );
  seize_vcount_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_5_Q,
      O => seize_vcount_6_FASTCARRY_531
    );
  seize_vcount_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      I0 => seize_vcount_6_CYSELG_520,
      I1 => seize_vcount_6_CYSELF_534,
      O => seize_vcount_6_CYAND_532
    );
  seize_vcount_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      IA => seize_vcount_6_CYMUXG2_530,
      IB => seize_vcount_6_FASTCARRY_531,
      SEL => seize_vcount_6_CYAND_532,
      O => seize_vcount_6_CYMUXFAST_533
    );
  seize_vcount_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      IA => seize_vcount_6_LOGIC_ZERO_528,
      IB => seize_vcount_6_CYMUXF2_529,
      SEL => seize_vcount_6_CYSELG_520,
      O => seize_vcount_6_CYMUXG2_530
    );
  seize_vcount_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(7),
      O => seize_vcount_6_CYSELG_520
    );
  seize_vcount_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_IBUF_223,
      O => seize_vcount_6_SRINV_518
    );
  seize_vcount_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => seize_vcount_6_CLKINV_517
    );
  Mcount_seize_vcount_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X20Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seize_vcount(6),
      ADR2 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      ADR3 => VCC,
      O => Mcount_seize_vcount_lut(6)
    );
  seize_vcount_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      O => seize_vcount_8_LOGIC_ZERO_584
    );
  seize_vcount_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_8_XORF_610,
      O => seize_vcount_8_DXMUX_612
    );
  seize_vcount_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      I0 => seize_vcount_8_CYINIT_609,
      I1 => Mcount_seize_vcount_lut(8),
      O => seize_vcount_8_XORF_610
    );
  seize_vcount_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      IA => seize_vcount_8_LOGIC_ZERO_584,
      IB => seize_vcount_8_CYINIT_609,
      SEL => seize_vcount_8_CYSELF_590,
      O => Mcount_seize_vcount_cy_8_Q
    );
  seize_vcount_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      IA => seize_vcount_8_LOGIC_ZERO_584,
      IB => seize_vcount_8_LOGIC_ZERO_584,
      SEL => seize_vcount_8_CYSELF_590,
      O => seize_vcount_8_CYMUXF2_585
    );
  seize_vcount_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_7_Q,
      O => seize_vcount_8_CYINIT_609
    );
  seize_vcount_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(8),
      O => seize_vcount_8_CYSELF_590
    );
  seize_vcount_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_8_XORG_592,
      O => seize_vcount_8_DYMUX_594
    );
  seize_vcount_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      I0 => Mcount_seize_vcount_cy_8_Q,
      I1 => Mcount_seize_vcount_lut(9),
      O => seize_vcount_8_XORG_592
    );
  seize_vcount_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_8_CYMUXFAST_589,
      O => Mcount_seize_vcount_cy_9_Q
    );
  seize_vcount_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_7_Q,
      O => seize_vcount_8_FASTCARRY_587
    );
  seize_vcount_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      I0 => seize_vcount_8_CYSELG_576,
      I1 => seize_vcount_8_CYSELF_590,
      O => seize_vcount_8_CYAND_588
    );
  seize_vcount_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      IA => seize_vcount_8_CYMUXG2_586,
      IB => seize_vcount_8_FASTCARRY_587,
      SEL => seize_vcount_8_CYAND_588,
      O => seize_vcount_8_CYMUXFAST_589
    );
  seize_vcount_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      IA => seize_vcount_8_LOGIC_ZERO_584,
      IB => seize_vcount_8_CYMUXF2_585,
      SEL => seize_vcount_8_CYSELG_576,
      O => seize_vcount_8_CYMUXG2_586
    );
  seize_vcount_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(9),
      O => seize_vcount_8_CYSELG_576
    );
  seize_vcount_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_IBUF_223,
      O => seize_vcount_8_SRINV_574
    );
  seize_vcount_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => seize_vcount_8_CLKINV_573
    );
  Mcount_seize_vcount_lut_8_Q : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X20Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      ADR3 => seize_vcount(8),
      O => Mcount_seize_vcount_lut(8)
    );
  seize_vcount_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      O => seize_vcount_10_LOGIC_ZERO_640
    );
  seize_vcount_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_10_XORF_666,
      O => seize_vcount_10_DXMUX_668
    );
  seize_vcount_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      I0 => seize_vcount_10_CYINIT_665,
      I1 => Mcount_seize_vcount_lut(10),
      O => seize_vcount_10_XORF_666
    );
  seize_vcount_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      IA => seize_vcount_10_LOGIC_ZERO_640,
      IB => seize_vcount_10_CYINIT_665,
      SEL => seize_vcount_10_CYSELF_646,
      O => Mcount_seize_vcount_cy_10_Q
    );
  seize_vcount_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      IA => seize_vcount_10_LOGIC_ZERO_640,
      IB => seize_vcount_10_LOGIC_ZERO_640,
      SEL => seize_vcount_10_CYSELF_646,
      O => seize_vcount_10_CYMUXF2_641
    );
  seize_vcount_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_9_Q,
      O => seize_vcount_10_CYINIT_665
    );
  seize_vcount_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(10),
      O => seize_vcount_10_CYSELF_646
    );
  seize_vcount_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_10_XORG_648,
      O => seize_vcount_10_DYMUX_650
    );
  seize_vcount_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      I0 => Mcount_seize_vcount_cy_10_Q,
      I1 => Mcount_seize_vcount_lut(11),
      O => seize_vcount_10_XORG_648
    );
  seize_vcount_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_10_CYMUXFAST_645,
      O => Mcount_seize_vcount_cy_11_Q
    );
  seize_vcount_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_9_Q,
      O => seize_vcount_10_FASTCARRY_643
    );
  seize_vcount_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      I0 => seize_vcount_10_CYSELG_632,
      I1 => seize_vcount_10_CYSELF_646,
      O => seize_vcount_10_CYAND_644
    );
  seize_vcount_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      IA => seize_vcount_10_CYMUXG2_642,
      IB => seize_vcount_10_FASTCARRY_643,
      SEL => seize_vcount_10_CYAND_644,
      O => seize_vcount_10_CYMUXFAST_645
    );
  seize_vcount_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      IA => seize_vcount_10_LOGIC_ZERO_640,
      IB => seize_vcount_10_CYMUXF2_641,
      SEL => seize_vcount_10_CYSELG_632,
      O => seize_vcount_10_CYMUXG2_642
    );
  seize_vcount_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(11),
      O => seize_vcount_10_CYSELG_632
    );
  seize_vcount_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_IBUF_223,
      O => seize_vcount_10_SRINV_630
    );
  seize_vcount_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => seize_vcount_10_CLKINV_629
    );
  Mcount_seize_vcount_lut_10_Q : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X20Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      ADR3 => seize_vcount(10),
      O => Mcount_seize_vcount_lut(10)
    );
  seize_vcount_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      O => seize_vcount_12_LOGIC_ZERO_696
    );
  seize_vcount_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_12_XORF_722,
      O => seize_vcount_12_DXMUX_724
    );
  seize_vcount_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      I0 => seize_vcount_12_CYINIT_721,
      I1 => Mcount_seize_vcount_lut(12),
      O => seize_vcount_12_XORF_722
    );
  seize_vcount_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      IA => seize_vcount_12_LOGIC_ZERO_696,
      IB => seize_vcount_12_CYINIT_721,
      SEL => seize_vcount_12_CYSELF_702,
      O => Mcount_seize_vcount_cy_12_Q
    );
  seize_vcount_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      IA => seize_vcount_12_LOGIC_ZERO_696,
      IB => seize_vcount_12_LOGIC_ZERO_696,
      SEL => seize_vcount_12_CYSELF_702,
      O => seize_vcount_12_CYMUXF2_697
    );
  seize_vcount_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_11_Q,
      O => seize_vcount_12_CYINIT_721
    );
  seize_vcount_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(12),
      O => seize_vcount_12_CYSELF_702
    );
  seize_vcount_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_12_XORG_704,
      O => seize_vcount_12_DYMUX_706
    );
  seize_vcount_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      I0 => Mcount_seize_vcount_cy_12_Q,
      I1 => Mcount_seize_vcount_lut(13),
      O => seize_vcount_12_XORG_704
    );
  seize_vcount_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_cy_11_Q,
      O => seize_vcount_12_FASTCARRY_699
    );
  seize_vcount_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      I0 => seize_vcount_12_CYSELG_688,
      I1 => seize_vcount_12_CYSELF_702,
      O => seize_vcount_12_CYAND_700
    );
  seize_vcount_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      IA => seize_vcount_12_CYMUXG2_698,
      IB => seize_vcount_12_FASTCARRY_699,
      SEL => seize_vcount_12_CYAND_700,
      O => seize_vcount_12_CYMUXFAST_701
    );
  seize_vcount_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      IA => seize_vcount_12_LOGIC_ZERO_696,
      IB => seize_vcount_12_CYMUXF2_697,
      SEL => seize_vcount_12_CYSELG_688,
      O => seize_vcount_12_CYMUXG2_698
    );
  seize_vcount_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(13),
      O => seize_vcount_12_CYSELG_688
    );
  seize_vcount_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_IBUF_223,
      O => seize_vcount_12_SRINV_686
    );
  seize_vcount_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => seize_vcount_12_CLKINV_685
    );
  Mcount_seize_vcount_lut_12_Q : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X20Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seize_vcount(12),
      ADR2 => VCC,
      ADR3 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => Mcount_seize_vcount_lut(12)
    );
  seize_vcount_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      O => seize_vcount_14_LOGIC_ZERO_770
    );
  seize_vcount_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_14_XORF_771,
      O => seize_vcount_14_DXMUX_773
    );
  seize_vcount_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      I0 => seize_vcount_14_CYINIT_769,
      I1 => Mcount_seize_vcount_lut(14),
      O => seize_vcount_14_XORF_771
    );
  seize_vcount_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      IA => seize_vcount_14_LOGIC_ZERO_770,
      IB => seize_vcount_14_CYINIT_769,
      SEL => seize_vcount_14_CYSELF_761,
      O => Mcount_seize_vcount_cy_14_Q
    );
  seize_vcount_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_12_CYMUXFAST_701,
      O => seize_vcount_14_CYINIT_769
    );
  seize_vcount_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_seize_vcount_lut(14),
      O => seize_vcount_14_CYSELF_761
    );
  seize_vcount_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_vcount_14_XORG_751,
      O => seize_vcount_14_DYMUX_753
    );
  seize_vcount_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      I0 => Mcount_seize_vcount_cy_14_Q,
      I1 => Mcount_seize_vcount_lut(15),
      O => seize_vcount_14_XORG_751
    );
  seize_vcount_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_IBUF_223,
      O => seize_vcount_14_SRINV_741
    );
  seize_vcount_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => seize_vcount_14_CLKINV_740
    );
  seize_vcount_14 : X_FF
    generic map(
      LOC => "SLICE_X20Y7",
      INIT => '0'
    )
    port map (
      I => seize_vcount_14_DXMUX_773,
      CE => VCC,
      CLK => seize_vcount_14_CLKINV_740,
      SET => GND,
      RST => seize_vcount_14_SRINV_741,
      O => seize_vcount(14)
    );
  baud_rate_sel_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 605 ps
    )
    port map (
      I => baud_rate_sel,
      O => baud_rate_sel_INBUF
    );
  seize_baud_rate_OBUF : X_OBUF
    generic map(
      LOC => "PAD120"
    )
    port map (
      I => seize_baud_rate_O,
      O => seize_baud_rate
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
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst,
      O => rst_INBUF
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
  seize_baud_rate_int_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_IBUF_223,
      O => seize_baud_rate_int_FFY_RST
    );
  seize_baud_rate_int : X_FF
    generic map(
      LOC => "SLICE_X22Y0",
      INIT => '0'
    )
    port map (
      I => seize_baud_rate_int_DYMUX_818,
      CE => VCC,
      CLK => seize_baud_rate_int_CLKINV_815,
      SET => GND,
      RST => seize_baud_rate_int_FFY_RST,
      O => seize_baud_rate_int_231
    );
  seize_baud_rate_int_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => seize_baud_rate_int_DYMUX_818
    );
  seize_baud_rate_int_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => seize_baud_rate_int_CLKINV_815
    );
  Mcompar_seize_vcount_cmp_eq0000_lut_2_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X21Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => seize_vcount(15),
      O => Mcompar_seize_vcount_cmp_eq0000_lut_2_Q
    );
  seize_vcount_3 : X_FF
    generic map(
      LOC => "SLICE_X20Y1",
      INIT => '0'
    )
    port map (
      I => seize_vcount_2_DYMUX_426,
      CE => VCC,
      CLK => seize_vcount_2_CLKINV_405,
      SET => GND,
      RST => seize_vcount_2_SRINV_406,
      O => seize_vcount(3)
    );
  seize_vcount_5 : X_FF
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => '0'
    )
    port map (
      I => seize_vcount_4_DYMUX_482,
      CE => VCC,
      CLK => seize_vcount_4_CLKINV_461,
      SET => GND,
      RST => seize_vcount_4_SRINV_462,
      O => seize_vcount(5)
    );
  seize_vcount_7 : X_FF
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => '0'
    )
    port map (
      I => seize_vcount_6_DYMUX_538,
      CE => VCC,
      CLK => seize_vcount_6_CLKINV_517,
      SET => GND,
      RST => seize_vcount_6_SRINV_518,
      O => seize_vcount(7)
    );
  seize_vcount_9 : X_FF
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => '0'
    )
    port map (
      I => seize_vcount_8_DYMUX_594,
      CE => VCC,
      CLK => seize_vcount_8_CLKINV_573,
      SET => GND,
      RST => seize_vcount_8_SRINV_574,
      O => seize_vcount(9)
    );
  seize_vcount_11 : X_FF
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => '0'
    )
    port map (
      I => seize_vcount_10_DYMUX_650,
      CE => VCC,
      CLK => seize_vcount_10_CLKINV_629,
      SET => GND,
      RST => seize_vcount_10_SRINV_630,
      O => seize_vcount(11)
    );
  seize_vcount_13 : X_FF
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => '0'
    )
    port map (
      I => seize_vcount_12_DYMUX_706,
      CE => VCC,
      CLK => seize_vcount_12_CLKINV_685,
      SET => GND,
      RST => seize_vcount_12_SRINV_686,
      O => seize_vcount(13)
    );
  Mcompar_seize_vcount_cmp_eq0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"A005",
      LOC => "SLICE_X21Y2"
    )
    port map (
      ADR0 => seize_vcount(3),
      ADR1 => VCC,
      ADR2 => baud_rate_sel_IBUF_213,
      ADR3 => seize_vcount(4),
      O => Mcompar_seize_vcount_cmp_eq0000_lut_5_Q_300
    );
  Mcompar_seize_vcount_cmp_eq0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X21Y0"
    )
    port map (
      ADR0 => seize_vcount(13),
      ADR1 => seize_vcount(11),
      ADR2 => seize_vcount(12),
      ADR3 => seize_vcount(14),
      O => Mcompar_seize_vcount_cmp_eq0000_lut_1_Q_243
    );
  Mcompar_seize_vcount_cmp_eq0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X21Y0"
    )
    port map (
      ADR0 => seize_vcount(10),
      ADR1 => seize_vcount(5),
      ADR2 => seize_vcount(9),
      ADR3 => seize_vcount(7),
      O => Mcompar_seize_vcount_cmp_eq0000_lut_0_Q_254
    );
  seize_vcount_0_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X21Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => seize_vcount(0),
      O => seize_vcount_0_rt_266
    );
  Mcompar_seize_vcount_cmp_eq0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"2424",
      LOC => "SLICE_X21Y2"
    )
    port map (
      ADR0 => baud_rate_sel_IBUF_213,
      ADR1 => seize_vcount(2),
      ADR2 => seize_vcount(1),
      ADR3 => VCC,
      O => Mcompar_seize_vcount_cmp_eq0000_lut_4_Q_315
    );
  Mcompar_seize_vcount_cmp_eq0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"2424",
      LOC => "SLICE_X21Y3"
    )
    port map (
      ADR0 => seize_vcount(8),
      ADR1 => baud_rate_sel_IBUF_213,
      ADR2 => seize_vcount(6),
      ADR3 => VCC,
      O => Mcompar_seize_vcount_cmp_eq0000_lut_6_Q_334
    );
  seize_vcount_0 : X_FF
    generic map(
      LOC => "SLICE_X20Y0",
      INIT => '0'
    )
    port map (
      I => seize_vcount_0_DXMUX_388,
      CE => VCC,
      CLK => seize_vcount_0_CLKINV_352,
      SET => GND,
      RST => seize_vcount_0_SRINV_353,
      O => seize_vcount(0)
    );
  Mcount_seize_vcount_lut_3_Q : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X20Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => seize_vcount(3),
      ADR3 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => Mcount_seize_vcount_lut(3)
    );
  seize_vcount_2 : X_FF
    generic map(
      LOC => "SLICE_X20Y1",
      INIT => '0'
    )
    port map (
      I => seize_vcount_2_DXMUX_444,
      CE => VCC,
      CLK => seize_vcount_2_CLKINV_405,
      SET => GND,
      RST => seize_vcount_2_SRINV_406,
      O => seize_vcount(2)
    );
  Mcount_seize_vcount_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X20Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seize_vcount(5),
      ADR2 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      ADR3 => VCC,
      O => Mcount_seize_vcount_lut(5)
    );
  seize_vcount_4 : X_FF
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => '0'
    )
    port map (
      I => seize_vcount_4_DXMUX_500,
      CE => VCC,
      CLK => seize_vcount_4_CLKINV_461,
      SET => GND,
      RST => seize_vcount_4_SRINV_462,
      O => seize_vcount(4)
    );
  Mcount_seize_vcount_lut_7_Q : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X20Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      ADR3 => seize_vcount(7),
      O => Mcount_seize_vcount_lut(7)
    );
  seize_vcount_6 : X_FF
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => '0'
    )
    port map (
      I => seize_vcount_6_DXMUX_556,
      CE => VCC,
      CLK => seize_vcount_6_CLKINV_517,
      SET => GND,
      RST => seize_vcount_6_SRINV_518,
      O => seize_vcount(6)
    );
  Mcount_seize_vcount_lut_9_Q : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X20Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seize_vcount(9),
      ADR2 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      ADR3 => VCC,
      O => Mcount_seize_vcount_lut(9)
    );
  seize_vcount_8 : X_FF
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => '0'
    )
    port map (
      I => seize_vcount_8_DXMUX_612,
      CE => VCC,
      CLK => seize_vcount_8_CLKINV_573,
      SET => GND,
      RST => seize_vcount_8_SRINV_574,
      O => seize_vcount(8)
    );
  Mcount_seize_vcount_lut_11_Q : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X20Y5"
    )
    port map (
      ADR0 => seize_vcount(11),
      ADR1 => VCC,
      ADR2 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      ADR3 => VCC,
      O => Mcount_seize_vcount_lut(11)
    );
  seize_vcount_10 : X_FF
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => '0'
    )
    port map (
      I => seize_vcount_10_DXMUX_668,
      CE => VCC,
      CLK => seize_vcount_10_CLKINV_629,
      SET => GND,
      RST => seize_vcount_10_SRINV_630,
      O => seize_vcount(10)
    );
  Mcount_seize_vcount_lut_13_Q : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X20Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seize_vcount(13),
      ADR2 => VCC,
      ADR3 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => Mcount_seize_vcount_lut(13)
    );
  seize_vcount_12 : X_FF
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => '0'
    )
    port map (
      I => seize_vcount_12_DXMUX_724,
      CE => VCC,
      CLK => seize_vcount_12_CLKINV_685,
      SET => GND,
      RST => seize_vcount_12_SRINV_686,
      O => seize_vcount(12)
    );
  Mcount_seize_vcount_lut_15_Q : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X20Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => seize_vcount(15),
      ADR3 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => Mcount_seize_vcount_lut(15)
    );
  seize_vcount_15 : X_FF
    generic map(
      LOC => "SLICE_X20Y7",
      INIT => '0'
    )
    port map (
      I => seize_vcount_14_DYMUX_753,
      CE => VCC,
      CLK => seize_vcount_14_CLKINV_740,
      SET => GND,
      RST => seize_vcount_14_SRINV_741,
      O => seize_vcount(15)
    );
  Mcount_seize_vcount_lut_14_Q : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X20Y7"
    )
    port map (
      ADR0 => seize_vcount(14),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Mcompar_seize_vcount_cmp_eq0000_cy_6_Q,
      O => Mcount_seize_vcount_lut(14)
    );
  baud_rate_sel_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 605 ps
    )
    port map (
      I => baud_rate_sel_INBUF,
      O => baud_rate_sel_IBUF_213
    );
  rst_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_INBUF,
      O => rst_IBUF_223
    );
  seize_baud_rate_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 605 ps
    )
    port map (
      I => seize_baud_rate_int_231,
      O => seize_baud_rate_O
    );
  NlwBlock_baud_rate_generator_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_baud_rate_generator_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

