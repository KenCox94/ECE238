@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri Mar 05 22:28:01 -0700 2021
REM SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto 4827490ad183482d92fa94763ae1b45e --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot lab2_tb_behav xil_defaultlib.lab2_tb -log elaborate.log"
call xelab  -wto 4827490ad183482d92fa94763ae1b45e --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot lab2_tb_behav xil_defaultlib.lab2_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
