set DESIGN USFFT64_2B
set TOP_LEVEL USFFT64_2B
set SYN_EFF medium
set MAP_EFF high
set DATE [clock format [clock seconds] -format "%b%d-%T"] 
set _OUTPUTS_PATH outputs_${DATE}
set _REPORTS_PATH reports_${DATE}
set _LOG_PATH logs_${DATE}

set MMMC_FILE ../constraints/mmmc.tcl
set LEF_DIR { /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_5V.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef }
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

# TODO: add date to the reports and output paths

set_db init_hdl_search_path ../rtl

read_mmmc $MMMC_FILE

read_physical -lef $LEF_DIR

read_hdl -sv $HDL_FILES

elaborate

init_design

#read_sdc ../constraints/constraints.sdc

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

set_db syn_generic_effort SYN_EFF
syn_generic

report_area > reports/report_area_generic.rpt
report_timing > reports/report_timing_generic.rpt
report_power > reports/report_power_generic.rpt

####################################################################################################
## Synthesizing to gates
####################################################################################################

set_db syn_map_effort medium
syn_map

report_area > reports/report_area_map.rpt
report_timing > reports/report_timing_map.rpt
report_power > reports/report_power_map.rpt

#foreach cg [vfind / -cost_group *] {
#  report_timing -cost_group [list $cg] > reports/${DESIGN}_[vbasename $cg]_post_map.rpt
#}


########################################################################################################
## DFT Setup
########################################################################################################

connect_scan_chain 

report dft_chains >dft/chains.log
report dft_registers > dftreg.rpt
report dft_chains > dftchains.rpt

########################################################################################################
## Incremental Synthesis
########################################################################################################
set_db syn_opt_effort $MAP_EFF
syn_opt

set _REPORTS_PATH "reports_worst"
puts "Exporting results for ss corner..."
# Gera reports para o pior caso
 set_analysis_view -setup worst_view -hold worst_view
 report_area > reports_ss/report_area_opt.rpt
 report_timing > reports_ss/report_timing_opt.rpt
 report_power > reports_ss/report_power_opt.rpt
 report_gates -power > reports_ss/${DESIGN}_gates_power.log
 report_dp > reports_ss/${DESIGN}_datapath_incr.log
 report_messages > reports_ss/${DESIGN}_messages.log
 write_snapshot -outdir reports -tag final
 report_summary -directory reports

 set _REPORTS_PATH "reports_nominal"
 puts "Exporting results for tt corner..."
 # Gera reports para o caso nominal
 set_analysis_view -setup nominal_view -hold nominal_view
 report_area > reports_tt/report_area_opt.rpt
 report_timing > reports_tt/report_timing_opt.rpt
 report_power > reports_tt/report_power_opt.rpt
 report_gates -power > reports_tt/${DESIGN}_gates_power.log
 report_dp > reports_tt/${DESIGN}_datapath_incr.log
 report_messages > reports_tt/${DESIGN}_messages.log
 write_snapshot -outdir reports -tag final
 report_summary -directory reports

 set _REPORTS_PATH "reports_best"
 puts "Exporting results for ff corner..."
 # Gera reports para o melhor caso
 set_analysis_view -setup best_view -hold best_view
 report_area > reports_ff/report_area_opt.rpt
 report_timing > reports_ff/report_timing_opt.rpt
 report_power > reports_ff/report_power_opt.rpt
 report_gates -power > reports_ff/${DESIGN}_gates_power.log
 report_dp > reports_ff/${DESIGN}_datapath_incr.log
 report_messages > reports_ff/${DESIGN}_messages.log
 write_snapshot -outdir reports -tag final
 report_summary -directory reports

set_analysis_view -setup worst_view -hold best_view
write_db $DESIGN -to_file ${DESIGN}.db
#Outputs
write_hdl > outputs/mac_netlist.v
write_sdc -constraint_mode default_constraints  > outputs/mac_netlist_constraints.sdc
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > outputs/delays.sdf
write_scandef > outputs/scan_chain.def
write_design -innovus -base_name ../innovus/${DESIGN}














