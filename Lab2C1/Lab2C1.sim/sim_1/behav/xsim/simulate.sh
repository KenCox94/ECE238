#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Mar 05 22:04:37 MST 2021
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim Tb_4_Adder_behav -key {Behavioral:sim_1:Functional:Tb_4_Adder} -tclbatch Tb_4_Adder.tcl -log simulate.log"
xsim Tb_4_Adder_behav -key {Behavioral:sim_1:Functional:Tb_4_Adder} -tclbatch Tb_4_Adder.tcl -log simulate.log

