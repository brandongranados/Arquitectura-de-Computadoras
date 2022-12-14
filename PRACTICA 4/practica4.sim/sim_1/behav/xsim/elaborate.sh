#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Sep 22 17:14:42 CDT 2021
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 5b8b4d960d534972a2a66cab733ec13d --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot p4TB_behav xil_defaultlib.p4TB -log elaborate.log"
xelab -wto 5b8b4d960d534972a2a66cab733ec13d --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot p4TB_behav xil_defaultlib.p4TB -log elaborate.log

