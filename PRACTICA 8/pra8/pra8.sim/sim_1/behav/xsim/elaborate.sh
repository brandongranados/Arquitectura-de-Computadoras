#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Oct 29 20:36:22 CDT 2021
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto de5400262613487ba1cbd923abcff4bd --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot memDatos_tb_behav xil_defaultlib.memDatos_tb -log elaborate.log"
xelab -wto de5400262613487ba1cbd923abcff4bd --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot memDatos_tb_behav xil_defaultlib.memDatos_tb -log elaborate.log

