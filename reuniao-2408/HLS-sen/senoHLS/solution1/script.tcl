############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project senoHLS
set_top sen
add_files ../../C++/sen.cpp
add_files ../../C++/sen.h
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./senoHLS/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
