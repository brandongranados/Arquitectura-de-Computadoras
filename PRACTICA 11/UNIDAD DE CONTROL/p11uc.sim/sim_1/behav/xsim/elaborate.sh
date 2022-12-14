#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Nov 30 21:35:08 CST 2021
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto ff8c29070bee4259b6227d6c6cda539c --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot p11BTH_behav xil_defaultlib.p11BTH -log elaborate.log"
xelab -wto ff8c29070bee4259b6227d6c6cda539c --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot p11BTH_behav xil_defaultlib.p11BTH -log elaborate.log

