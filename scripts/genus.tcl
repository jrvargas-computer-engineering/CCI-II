#### Template Script for RTL->Gate-Level Flow (generated from RC GENUS15.22 - 15.20-s024_1) 

if {[file exists /proc/cpuinfo]} {
  sh grep "model name" /proc/cpuinfo
  sh grep "cpu MHz"    /proc/cpuinfo
}

puts "Hostname : [info hostname]"

##############################################################################
## Preset global variables and attributes
##############################################################################

set DESIGN USFFT64_2B
set TOP_LEVEL USFFT64_2B
set SYN_EFF medium
set MAP_EFF high
set DATE [clock format [clock seconds] -format "%b%d-%T"] 
set _OUTPUTS_PATH outputs_${DATE}
set _REPORTS_PATH reports_${DATE}
set _LOG_PATH logs_${DATE}

read_mmmc ../constraints/mmmc.tcl

set LEF_DIR { /tools/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_5V.lef /tools/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /tools/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef }
set HDL_FILES {
        bufram64c1.v  
        cnorm.v  
        fft8.v  
        mpu707.v  
        ram2x64c_1.v  
        ram64.v  
        rotator64_v.v  
        usfft64_2b.v  
        WROM64.v
        FFT64_CONFIG.inc
}

set CONST_FILE "../constraints/constraints.sdc"

# set_db / .init_lib_search_path $LIB_PATH
set_db / .init_hdl_search_path ../rtl
set_db / .information_level 7 


###############################################################
## Library setup
###############################################################

#set_db / .library $LIB_LIST
#set_db / .lef_library $LEF_DIR 
#set_db / .lp_insert_clock_gating true 

####################################################################
## Load Design
####################################################################

#read_libs $LIB_LIST
read_physical -lef $LEF_DIR
read_hdl -sv $HDL_FILES 
elaborate $DESIGN
puts "Runtime & Memory after 'read_hdl'"
time_info Elaboration

init_design
check_design -unresolved


##################################################################
## DFT Setup
##################################################################

set_db dft_scan_style muxed_scan
set_db dft_identify_top_level_test_clocks true
set_db dft_identify_test_signals true

define_dft shift_enable -name test_signal -active high dft_shift_enable
define_dft scan_chain -name chain1 \
    -sdi dft_scan_input_1 \
    -sdo dft_scan_output_1 \
    -shift_enable test_signal

define_dft scan_chain -name chain2 \ 
    -sdi dft_scan_input_2 \
    -sdo dft_scan_output_2 \
    -shift_enable test_signal

set_compatible_test_clocks -all

check_dft_rules > dft/${DESIGN}-tdrcs
check_design -multiple_driver

report dft_registers > dft/${DESIGN}-DFTregs
report dft_setup > dft/${DESIGN}-DFTsetup_tdrc
report_dft_violations > dft/${DESIGN}-DFTViols

####################################################################
## Constraints Setup
####################################################################
#
#read_sdc $CONST_FILE
#puts "The number of exceptions is [llength [vfind "design:$DESIGN" -exception *]]"
#
#if {![file exists ${_LOG_PATH}]} {
#  file mkdir ${_LOG_PATH}
#  puts "Creating directory ${_LOG_PATH}"
#}
#
#if {![file exists ${_OUTPUTS_PATH}]} {
#  file mkdir ${_OUTPUTS_PATH}
#  puts "Creating directory ${_OUTPUTS_PATH}"
#}
#
#if {![file exists ${_REPORTS_PATH}]} {
#  file mkdir ${_REPORTS_PATH}
#  puts "Creating directory ${_REPORTS_PATH}"
#}
#report_timing -lint
#
###################################################################################
## Define cost groups (clock-clock, clock-output, input-clock, input-output)
###################################################################################

## Uncomment to remove already existing costgroups before creating new ones.
## delete_obj [vfind /designs/* -cost_group *]

#if {[llength [all::all_seqs]] > 0} { 
#  define_cost_group -name I2C -design $DESIGN
#  define_cost_group -name C2O -design $DESIGN
#  define_cost_group -name C2C -design $DESIGN
#  path_group -from [all::all_seqs] -to [all::all_seqs] -group C2C -name C2C
#  path_group -from [all::all_seqs] -to [all::all_outs] -group C2O -name C2O
#  path_group -from [all::all_inps]  -to [all::all_seqs] -group I2C -name I2C
#}
#
#define_cost_group -name I2O -design $DESIGN
#path_group -from [all::all_inps]  -to [all::all_outs] -group I2O -name I2O
#foreach cg [vfind / -cost_group *] {
#  report_timing -cost_group [list $cg] >> $_REPORTS_PATH/${DESIGN}_pretim.rpt
#}

####################################################################################################
## Synthesizing to generic 
####################################################################################################

set_db syn_generic_effort $SYN_EFF
syn_generic
puts "Runtime & Memory after 'syn_generic'"
time_info GENERIC
report_dp > $_REPORTS_PATH/generic/${DESIGN}_datapath.rpt
write_snapshot -outdir $_REPORTS_PATH -tag generic
report_summary -directory $_REPORTS_PATH

####################################################################################################
## Synthesizing to gates
####################################################################################################

set_db / .syn_map_effort $MAP_EFF
syn_map
puts "Runtime & Memory after 'syn_map'"
time_info MAPPED
write_snapshot -outdir $_REPORTS_PATH -tag map
report_summary -directory $_REPORTS_PATH
report_dp > $_REPORTS_PATH/map/${DESIGN}_datapath.rpt

foreach cg [vfind / -cost_group *] {
  report_timing -cost_group [list $cg] > $_REPORTS_PATH/${DESIGN}_[vbasename $cg]_post_map.rpt
}


########################################################################################################
## DFT Setup
########################################################################################################

connect_scan_chains $DESIGN 

report dft_chains > dft/chains.log
report dft_registers > dftreg.rpt
report dft_chains > dftchains.rpt

########################################################################################################

##Intermediate netlist for LEC verification..
write_hdl -lec > ${_OUTPUTS_PATH}/${DESIGN}_intermediate.v
write_do_lec -revised_design ${_OUTPUTS_PATH}/${DESIGN}_intermediate.v -logfile ${_LOG_PATH}/rtl2intermediate.lec.log > ${_OUTPUTS_PATH}/rtl2intermediate.lec.do

## ungroup -threshold <value>

#######################################################################################################
## Incremental Synthesis
#######################################################################################################

## Uncomment to remove assigns & insert tiehilo cells during Incremental synthesis
##set_db / .remove_assigns true 
##set_remove_assign_options -buffer_or_inverter <libcell> -design <design|subdesign> 
##set_db / .use_tiehilo_for_const <none|duplicate|unique> 
set_db / .syn_opt_effort $MAP_EFF
syn_opt
write_snapshot -outdir $_REPORTS_PATH -tag syn_opt
report_summary -directory $_REPORTS_PATH

puts "Runtime & Memory after incremental synthesis"
time_info INCREMENTAL

foreach cg [vfind / -cost_group *] {
  report_timing -cost_group [list $cg] > $_REPORTS_PATH/${DESIGN}_[vbasename $cg]_post_incr.rpt
}



######################################################################################################
## write backend file set (verilog, SDC, config, etc.)
######################################################################################################



report_dp > $_REPORTS_PATH/${DESIGN}_datapath_incr.rpt
report_messages > $_REPORTS_PATH/${DESIGN}_messages.rpt
write_snapshot -outdir $_REPORTS_PATH -tag final
report_summary -directory $_REPORTS_PATH
## write_hdl  > ${_OUTPUTS_PATH}/${DESIGN}_m.v
## write_script > ${_OUTPUTS_PATH}/${DESIGN}_m.script
write_sdc -constraint_mode default_constraints  > ${_OUTPUTS_PATH}/${DESIGN}_m.sdc


#################################
### write_do_lec
#################################


write_do_lec -golden_design ${_OUTPUTS_PATH}/${DESIGN}_intermediate.v -revised_design ${_OUTPUTS_PATH}/${DESIGN}_m.v -logfile  ${_LOG_PATH}/intermediate2final.lec.log > ${_OUTPUTS_PATH}/intermediate2final.lec.do
##Uncomment if the RTL is to be compared with the final netlist..
##write_do_lec -revised_design ${_OUTPUTS_PATH}/${DESIGN}_m.v -logfile ${_LOG_PATH}/rtl2final.lec.log > ${_OUTPUTS_PATH}/rtl2final.lec.do

puts "Final Runtime & Memory."
time_info FINAL
puts "============================"
puts "Synthesis Finished ........."
puts "============================"

file copy [get_db / .stdout_log] ${_LOG_PATH}/.

##quit