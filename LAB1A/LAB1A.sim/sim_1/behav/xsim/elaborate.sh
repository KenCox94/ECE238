#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Feb 11 16:52:26 MST 2021
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 3908213a31984a5d8e1e051731ed2529 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot LAB01A_tb_behav xil_defaultlib.LAB01A_tb -log elaborate.log"
xelab -wto 3908213a31984a5d8e1e051731ed2529 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot LAB01A_tb_behav xil_defaultlib.LAB01A_tb -log elaborate.log

