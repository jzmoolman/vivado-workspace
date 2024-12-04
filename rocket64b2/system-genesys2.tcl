set vivado_board_name genesys2
set vivado_board_part digilentinc.com:genesys2:part0:1.1
set xilinx_part xc7k325tffg900-2
set rocket_module_name Rocket64b2
set riscv_clock_frequency 100.0
set memory_size 0x40000000
cd [file dirname [file normalize [info script]]]
source ../../vivado.tcl
