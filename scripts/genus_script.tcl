set DESIGN USFFT64_2B
set TOP USFFT64_2B
set SYN_EFF medium
set MAP_EFF high
set OPT_EFF medium
set DATE [clock format [clock seconds] -format "%b%d-%T"] 
set _OUTPUTS_PATH outputs_${DATE}
set _REPORTS_PATH reports_${DATE}
set _DFT_PATH dft_${DATE}
set _LOG_PATH logs_${DATE}

set MMMC_FILE ../constraints/mmmc.tcl
set LEF_DIR { /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_F5V.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef }
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

set_db init_hdl_search_path ../rtl

read_mmmc $MMMC_FILE

read_physical -lef $LEF_DIR

read_hdl -sv $HDL_FILES

elaborate $TOP

init_design

#read_sdc ../constraints/constraints.sdc

if {![file exists ${_LOG_PATH}]} {
	file mkdir ${_LOG_PATH}
} 

if {![file exists ${_OUTPUTS_PATH}]} {
	file mkdir ${_OUTPUTS_PATH}
} 

if {![file exists ${_REPORTS_PATH}]} {
	file mkdir ${_REPORTS_PATH}
} 

if {![file exists ${_DFT_PATH}]} {
	file mkdir ${_DFT_PATH}
}

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

check_dft_rules         > ${_DFT_PATH}/dft_tdrcs
check_design -multiple_driver

report dft_registers    > ${_DFT_PATH}/dft_DFTregs
report dft_setup        > ${_DFT_PATH}/dft_DFTsetup_tdrc
report_dft_violations   > ${_DFT_PATH}/dft_DFTViols

##################################################################

#if {[llength [all::all_seqs]] > 0} { 
#  define_cost_group -name I2R -design $DESIGN
#  define_cost_group -name R2O -design $DESIGN
#  define_cost_group -name R2R -design $DESIGN
#  path_group -from [all::all_seqs] -to [all::all_seqs] -group R2R -name R2R
#  path_group -from [all::all_seqs] -to [all::all_outs] -group R2O -name R2O
#  path_group -from [all::all_inps]  -to [all::all_seqs] -group I2R -name I2R
#}
#define_cost_group -name I2O -design $DESIGN
#path_group -from [all::all_inps]  -to [all::all_outs] -group I2O -name I2O

#foreach cg [vfind / -cost_group *] {
#  report_timing -cost_group [list $cg] >> reports/${DESIGN}_pretim.rpt
#}


####################################################################################################
## Synthesizing to generic 
####################################################################################################

set_db syn_generic_effort $SYN_EFF
syn_generic

if {![file exists ${_REPORTS_PATH}/generic]} {
	file mkdir ${_REPORTS_PATH}/generic
} 

report_area     > $_REPORTS_PATH/generic/${DESIGN}_area.rpt
report_timing   > $_REPORTS_PATH/generic/${DESIGN}_timing.rpt
report_power    > $_REPORTS_PATH/generic/${DESIGN}_power.rpt

####################################################################################################
## Synthesizing to gates
####################################################################################################

set_db syn_map_effort $MAP_EFF
syn_map

if {![file exists ${_REPORTS_PATH}/map]} {
	file mkdir ${_REPORTS_PATH}/map
} 

report_area     > $_REPORTS_PATH/map/${DESIGN}_area.rpt
report_timing   > $_REPORTS_PATH/map/${DESIGN}_timing.rpt
report_power    > $_REPORTS_PATH/map/${DESIGN}_power.rpt

#foreach cg [vfind / -cost_group *] {
#  report_timing -cost_group [list $cg] > reports/${DESIGN}_[vbasename $cg]_post_map.rpt
#}


########################################################################################################
## DFT Setup
########################################################################################################

connect_scan_chain 

report dft_chains       > ${_DFT_PATH}/${DESIGN}chains.log
report dft_registers    > ${_DFT_PATH}/${DESIGN}reg.rpt
#report dft_chains > dftchains.rpt

########################################################################################################
## Incremental Synthesis
########################################################################################################
set_db syn_opt_effort $OPT_EFF
syn_opt

set _REPORTS_PATH "reports_${DATE}_${DESIGN}/reports_worst"
puts "Exporting results for ss corner..."
if {![file exists "reports_${DATE}_${DESIGN}"]} {
	file mkdir "reports_${DATE}_${DESIGN}" 
} 
if {![file exists ${_REPORTS_PATH}]} {
	file mkdir ${_REPORTS_PATH}
} 

# Gera reports para o pior caso
 set_analysis_view -setup worst_view -hold worst_view
    report_area                                > ${_REPORTS_PATH}/report_area_opt.rpt
    report_timing                              > ${_REPORTS_PATH}/report_timing_opt.rpt
    report_power                               > ${_REPORTS_PATH}/report_power_opt.rpt
    report_gates                               > ${_REPORTS_PATH}/report_gates_opt.rpt
    report_dp                                  > ${_REPORTS_PATH}/report_datapath.rpt
    report_messages                            > ${_REPORTS_PATH}/report_messages.log
    write_snapshot -outdir ${_REPORTS_PATH} -tag final
#
 set _REPORTS_PATH "reports_${DATE}_${DESIGN}/reports_nominal"
 puts "Exporting results for tt corner..."
if {![file exists ${_REPORTS_PATH}]} {
	file mkdir ${_REPORTS_PATH}
} 
 # Gera reports para o caso nominal
 set_analysis_view -setup nominal_view -hold nominal_view
    report_area                                > ${_REPORTS_PATH}/report_area_opt.rpt
    report_timing                              > ${_REPORTS_PATH}/report_timing_opt.rpt
    report_power                               > ${_REPORTS_PATH}/report_power_opt.rpt
    report_gates                               > ${_REPORTS_PATH}/report_gates_opt.rpt
    report_dp                                  > ${_REPORTS_PATH}/report_datapath.rpt
    report_messages                            > ${_REPORTS_PATH}/report_messages.log
    write_snapshot -outdir ${_REPORTS_PATH} -tag final

 set _REPORTS_PATH "reports_${DATE}_${DESIGN}/reports_best"
 puts "Exporting results for tt corner..."
if {![file exists ${_REPORTS_PATH}]} {
	file mkdir ${_REPORTS_PATH}
} 

 # Gera reports para o melhor caso
 set_analysis_view -setup best_view -hold best_view
    report_area                                > ${_REPORTS_PATH}/report_area_opt.rpt
    report_timing                              > ${_REPORTS_PATH}/report_timing_opt.rpt
    report_power                               > ${_REPORTS_PATH}/report_power_opt.rpt
    report_gates                               > ${_REPORTS_PATH}/report_gates_opt.rpt
    report_dp                                  > ${_REPORTS_PATH}/report_datapath.rpt
    report_messages                            > ${_REPORTS_PATH}/report_messages.log
    write_snapshot -outdir ${_REPORTS_PATH} -tag final

if {![file exists "outputs"]} {
	file mkdir "outputs"
} 

write_sdc -constraint_mode default_constraints  > ${_OUTPUTS_PATH}/mac_netlist_constraints.sdc
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > outputs/delays.sdf
write_scandef                                   > ${_OUTPUTS_PATH}/scan_chain.def
write_design -innovus -base_name ../innovus_core_limited/${DESIGN}

