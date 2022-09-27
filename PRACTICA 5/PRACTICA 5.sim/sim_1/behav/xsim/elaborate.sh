#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Sep 28 15:06:45 CDT 2021
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 657971b231d84968a339b95b41475403 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot p5bt_behav xil_defaultlib.p5bt -log elaborate.log"
xelab -wto 657971b231d84968a339b95b41475403 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot p5bt_behav xil_defaultlib.p5bt -log elaborate.log

