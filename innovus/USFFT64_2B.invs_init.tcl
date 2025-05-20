#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 05/19/2025 22:29:49
#
#####################################################################


read_mmmc ../innovus/USFFT64_2B.mmmc.tcl

read_physical -lef {/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_5V.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef}

read_netlist ../innovus/USFFT64_2B.v

init_design
