#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 07/10/2025 19:42:36
#
#####################################################################


read_mmmc ../innovus_core_limited/USFFT64_2B.mmmc.tcl

read_physical -lef {/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_F5V.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef}

read_netlist ../innovus_core_limited/USFFT64_2B.v

init_design
