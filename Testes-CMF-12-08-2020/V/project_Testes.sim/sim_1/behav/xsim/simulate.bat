@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.3 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Aug 12 19:08:32 -0300 2020
REM SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim design_T_cmf_duas_saidas_wrapper_behav -key {Behavioral:sim_1:Functional:design_T_cmf_duas_saidas_wrapper} -tclbatch design_T_cmf_duas_saidas_wrapper.tcl -protoinst "protoinst_files/design_Teste_cmf_soma_int.protoinst" -protoinst "protoinst_files/design_T_cmf_testa_array.protoinst" -protoinst "protoinst_files/design_T_cmf_duas_saidas.protoinst" -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
