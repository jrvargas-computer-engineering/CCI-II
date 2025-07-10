######################################################################

# Created by Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1 on Thu Jul 10 19:42:29 -0300 2025

# This file contains the RC script for design:USFFT64_2B

######################################################################

set_db / .design_mode_process 230.0
set_db / .phys_assume_met_fill 0.0
set_db / .runtime_by_stage { {to_generic 64 181 29 75}  {first_condense 129 361 60 189}  {reify 171 532 38 228}  {global_incr_map 87 624 74 306}  {incr_opt 94 789 92 455} }
set_db / .tinfo_tstamp_file .rs_juliana.vargas.tstamp
set_db / .use_area_from_lef true
set_db / .flow_metrics_snapshot_uuid 7974d605
set_db / .read_qrc_tech_file_rc_corner true
set_db / .super_thread_servers {localhost localhost localhost localhost localhost localhost localhost localhost   }
set_db / .syn_opt_effort medium
if {[::legacy::find design:USFFT64_2B -mode best_view] eq ""} {  create_mode -name best_view -design design:USFFT64_2B  }
::legacy::set_attribute -quiet phys_use_segment_parasitics true /
::legacy::set_attribute -quiet probabilistic_extraction true /
::legacy::set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
::legacy::set_attribute -quiet maximum_interval_of_vias infinity /
::legacy::set_attribute -quiet ple_mode global /
::legacy::set_attribute -quiet wireload_selection wireload_selection:worst_libset/D_CELLS_MOSST_slow_1_62V_125C/4_metls_routing library_domain:worst_timing_cond
::legacy::set_attribute -quiet tree_type worst_case_tree operating_condition:worst_libset/D_CELLS_MOSST_slow_1_62V_125C/slow_1_80V_70C
::legacy::set_attribute -quiet tree_type worst_case_tree operating_condition:worst_libset/D_CELLS_MOSST_slow_1_62V_125C/slow_1_80V_85C
::legacy::set_attribute -quiet tree_type worst_case_tree operating_condition:worst_libset/D_CELLS_MOSST_slow_1_62V_125C/slow_1_80V_150C
::legacy::set_attribute -quiet tree_type worst_case_tree operating_condition:worst_libset/D_CELLS_MOSST_slow_1_62V_125C/slow_1_80V_125C
::legacy::set_attribute -quiet tree_type worst_case_tree operating_condition:worst_libset/D_CELLS_MOSST_slow_1_62V_125C/slow_1_62V_70C
::legacy::set_attribute -quiet tree_type worst_case_tree operating_condition:worst_libset/D_CELLS_MOSST_slow_1_62V_125C/slow_1_62V_85C
::legacy::set_attribute -quiet tree_type worst_case_tree operating_condition:worst_libset/D_CELLS_MOSST_slow_1_62V_125C/slow_1_62V_150C
::legacy::set_attribute -quiet tree_type worst_case_tree operating_condition:worst_libset/D_CELLS_MOSST_slow_1_62V_125C/slow_1_62V_125C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:worst_libset/D_CELLS_MOSST_slow_1_62V_125C/_nominal_
::legacy::set_attribute -quiet tree_type worst_case_tree operating_condition:worst_libset/IO_CELLS_3V_MOS3ST_slow_1_62V_3_30V_125C/slow_1_62V_3_30V_125C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:worst_libset/IO_CELLS_3V_MOS3ST_slow_1_62V_3_30V_125C/_nominal_
::legacy::set_attribute -quiet wireload_selection wireload_selection:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/4_metls_routing library_domain:nominal_timing_cond
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_98V_0C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_98V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_62V_70C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_62V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_80V_70C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_80V_0C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/TYPICAL
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_80V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/_nominal_
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/IO_CELLS_3V_MOS3ST_typ_1_80V_3_30V_25C/typ_1_80V_3_30V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/IO_CELLS_3V_MOS3ST_typ_1_80V_3_30V_25C/_nominal_
::legacy::set_attribute -quiet wireload_selection wireload_selection:best_libset/D_CELLS_MOSST_fast_1_98V_m40C/4_metls_routing library_domain:best_timing_cond
::legacy::set_attribute -quiet tree_type best_case_tree operating_condition:best_libset/D_CELLS_MOSST_fast_1_98V_m40C/fast_1_80V_m55C
::legacy::set_attribute -quiet tree_type best_case_tree operating_condition:best_libset/D_CELLS_MOSST_fast_1_98V_m40C/fast_1_80V_0C
::legacy::set_attribute -quiet tree_type best_case_tree operating_condition:best_libset/D_CELLS_MOSST_fast_1_98V_m40C/fast_1_80V_m40C
::legacy::set_attribute -quiet tree_type best_case_tree operating_condition:best_libset/D_CELLS_MOSST_fast_1_98V_m40C/fast_1_98V_m55C
::legacy::set_attribute -quiet tree_type best_case_tree operating_condition:best_libset/D_CELLS_MOSST_fast_1_98V_m40C/fast_1_98V_0C
::legacy::set_attribute -quiet tree_type best_case_tree operating_condition:best_libset/D_CELLS_MOSST_fast_1_98V_m40C/fast_1_98V_m40C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:best_libset/D_CELLS_MOSST_fast_1_98V_m40C/_nominal_
::legacy::set_attribute -quiet tree_type best_case_tree operating_condition:best_libset/IO_CELLS_3V_MOS3ST_fast_1_98V_3_30V_m40C/fast_1_98V_3_30V_m40C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:best_libset/IO_CELLS_3V_MOS3ST_fast_1_98V_3_30V_m40C/_nominal_
# BEGIN MSV SECTION
::legacy::set_attribute -quiet library_domain library_domain:best_timing_cond design:USFFT64_2B
# END MSV SECTION
define_clock -name clk -mode mode:USFFT64_2B/best_view -domain domain_1 -period 6670.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:USFFT64_2B port:USFFT64_2B/CLK
::legacy::set_attribute -quiet clock_setup_uncertainty {400.0 400.0} clock:USFFT64_2B/best_view/clk
::legacy::set_attribute -quiet clock_hold_uncertainty {400.0 400.0} clock:USFFT64_2B/best_view/clk
::legacy::set_attribute -quiet waveform {0.0 3335.0} clock:USFFT64_2B/best_view/clk
define_cost_group -design design:USFFT64_2B -name clk
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:USFFT64_2B/best_view/clk -name create_clock_delay_domain_1_clk_R_0 port:USFFT64_2B/CLK
::legacy::set_attribute -quiet clock_network_latency_included true external_delay:USFFT64_2B/best_view/create_clock_delay_domain_1_clk_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:USFFT64_2B/best_view/clk -edge_fall -name create_clock_delay_domain_1_clk_F_0 port:USFFT64_2B/CLK
::legacy::set_attribute -quiet clock_network_latency_included true external_delay:USFFT64_2B/best_view/create_clock_delay_domain_1_clk_F_0
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_17 port:USFFT64_2B/RDY
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_18 port:USFFT64_2B/OVF1
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_19 port:USFFT64_2B/OVF2
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_20 {{port:USFFT64_2B/ADDR[5]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_21 {{port:USFFT64_2B/ADDR[4]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_22 {{port:USFFT64_2B/ADDR[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_23 {{port:USFFT64_2B/ADDR[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_24 {{port:USFFT64_2B/ADDR[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_25 {{port:USFFT64_2B/ADDR[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_26 {{port:USFFT64_2B/DOR[18]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_27 {{port:USFFT64_2B/DOR[17]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_28 {{port:USFFT64_2B/DOR[16]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_29 {{port:USFFT64_2B/DOR[15]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_30 {{port:USFFT64_2B/DOR[14]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_31 {{port:USFFT64_2B/DOR[13]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_32 {{port:USFFT64_2B/DOR[12]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_33 {{port:USFFT64_2B/DOR[11]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_34 {{port:USFFT64_2B/DOR[10]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_35 {{port:USFFT64_2B/DOR[9]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_36 {{port:USFFT64_2B/DOR[8]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_37 {{port:USFFT64_2B/DOR[7]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_38 {{port:USFFT64_2B/DOR[6]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_39 {{port:USFFT64_2B/DOR[5]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_40 {{port:USFFT64_2B/DOR[4]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_41 {{port:USFFT64_2B/DOR[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_42 {{port:USFFT64_2B/DOR[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_43 {{port:USFFT64_2B/DOR[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_44 {{port:USFFT64_2B/DOR[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_45 {{port:USFFT64_2B/DOI[18]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_46 {{port:USFFT64_2B/DOI[17]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_47 {{port:USFFT64_2B/DOI[16]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_48 {{port:USFFT64_2B/DOI[15]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_49 {{port:USFFT64_2B/DOI[14]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_50 {{port:USFFT64_2B/DOI[13]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_51 {{port:USFFT64_2B/DOI[12]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_52 {{port:USFFT64_2B/DOI[11]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_53 {{port:USFFT64_2B/DOI[10]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_54 {{port:USFFT64_2B/DOI[9]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_55 {{port:USFFT64_2B/DOI[8]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_56 {{port:USFFT64_2B/DOI[7]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_57 {{port:USFFT64_2B/DOI[6]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_58 {{port:USFFT64_2B/DOI[5]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_59 {{port:USFFT64_2B/DOI[4]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_60 {{port:USFFT64_2B/DOI[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_61 {{port:USFFT64_2B/DOI[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_62 {{port:USFFT64_2B/DOI[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_63 {{port:USFFT64_2B/DOI[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_64 port:USFFT64_2B/dft_scan_output_1
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:USFFT64_2B/best_view/clk -name tmp_sdc_nominal_view_line_65 port:USFFT64_2B/dft_scan_output_2
path_group -paths [specify_paths -mode mode:USFFT64_2B/best_view -to clock:USFFT64_2B/best_view/clk]  -name clk -group cost_group:USFFT64_2B/clk -user_priority -1047552
# BEGIN DFT SECTION
::legacy::set_attribute -quiet dft_scan_style muxed_scan /
::legacy::set_attribute -quiet dft_scanbit_waveform_analysis false /
define_test_clock -name CLK -domain CLK -period 50000.0 -divide_period 1 -rise 1 -divide_rise 2 -fall 9 -divide_fall 10 -controllable port:USFFT64_2B/CLK
::legacy::set_attribute -quiet user_defined_signal false test_clock:USFFT64_2B/CLK/CLK
define_shift_enable -name test_signal -active high   port:USFFT64_2B/dft_shift_enable    -no_ideal 
::legacy::set_attribute -quiet default_shift_enable true test_signal:USFFT64_2B/test_signal
::legacy::set_attribute -quiet dedicated_pin true test_signal:USFFT64_2B/test_signal
::legacy::set_attribute -quiet lec_value auto test_signal:USFFT64_2B/test_signal
::legacy::set_attribute -quiet atpg_use none test_signal:USFFT64_2B/test_signal
::legacy::set_attribute -quiet atpg_use none test_clock:USFFT64_2B/CLK/CLK
define_dft formal_verification_constraint -name wdl_cons_0 -pin port:USFFT64_2B/dft_shift_enable  -golden low   -tool_derived -redefine design:USFFT64_2B
define_dft formal_verification_constraint -name wdl_cons_1 -pin port:USFFT64_2B/dft_shift_enable    -revised low -tool_derived -redefine design:USFFT64_2B
define_scan_chain -name chain1 -shift_enable test_signal:USFFT64_2B/test_signal   -sdi port:USFFT64_2B/dft_scan_input_1 -sdo port:USFFT64_2B/dft_scan_output_1      -non_shared_out 
define_scan_chain -name chain2 -shift_enable test_signal:USFFT64_2B/test_signal   -sdi port:USFFT64_2B/dft_scan_input_2 -sdo port:USFFT64_2B/dft_scan_output_2      -non_shared_out 
define_scan_chain -name chain1 -sdi port:USFFT64_2B/dft_scan_input_1  -sdo port:USFFT64_2B/dft_scan_output_1  -analyze -non_shared_out    -write_script_flow
define_scan_chain -name chain2 -sdi port:USFFT64_2B/dft_scan_input_2  -sdo port:USFFT64_2B/dft_scan_output_2  -analyze -non_shared_out    -write_script_flow
# END DFT SECTION
::legacy::set_attribute -quiet dft_test_signals_snapshot {test_signal } design:USFFT64_2B
::legacy::set_attribute -quiet qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 1619194} {cell_count 49347} {utilization  0.00} {runtime 64 181 29 75} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 1792361} {cell_count 73583} {utilization  0.00} {runtime 129 361 60 189} }{reify {wns 551} {tns 0} {vep 0} {area 1830746} {cell_count 56643} {utilization  0.00} {runtime 171 537 38 232} }{global_incr_map {wns 82} {tns 0} {vep 0} {area 1782672} {cell_count 54533} {utilization  0.00} {runtime 87 628 74 311} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 1765649} {cell_count 53445} {utilization  0.00} {runtime 94 789 92 455} }} design:USFFT64_2B
::legacy::set_attribute -quiet qos_data_collection_time 8 design:USFFT64_2B
::legacy::set_attribute -quiet hdl_user_name USFFT64_2B design:USFFT64_2B
::legacy::set_attribute -quiet hdl_filelist {{default -sv {SYNTHESIS} {../rtl/bufram64c1.v ../rtl/cnorm.v ../rtl/fft8.v ../rtl/mpu707.v ../rtl/ram2x64c_1.v ../rtl/rotator64_v.v ../rtl/usfft64_2b.v ../rtl/WROM64.v} {../rtl}}} design:USFFT64_2B
::legacy::set_attribute -quiet seq_reason_deleted {{U_BUF1/URAM/oddd unloaded} {U_BUF1/URAM/odd2 unloaded} {U_BUF2/URAM/oddd unloaded} {U_BUF2/URAM/odd2 unloaded} {Ubuf3/URAM/oddd unloaded} {Ubuf3/URAM/odd2 unloaded} {{U_FFT1/UMR/dt_reg[0]} unloaded} {{U_FFT1/UMR/dt_reg[1]} unloaded} {{U_FFT1/UMR/dt_reg[2]} unloaded} {{U_FFT1/UMR/dt_reg[3]} unloaded} {{U_FFT1/UMI/dt_reg[0]} unloaded} {{U_FFT1/UMI/dt_reg[1]} unloaded} {{U_FFT1/UMI/dt_reg[2]} unloaded} {{U_FFT1/UMI/dt_reg[3]} unloaded} {{U_FFT1/s6r_reg[19]} unloaded} {{U_FFT1/s6i_reg[19]} unloaded} {{U_NORM1/dir_reg[18]} unloaded} {{U_NORM1/dii_reg[18]} unloaded} {{U_MPU/dwr_reg[0]} unloaded} {{U_MPU/dwi_reg[0]} unloaded} {{U_FFT2/UMR/dt_reg[0]} unloaded} {{U_FFT2/UMR/dt_reg[1]} unloaded} {{U_FFT2/UMR/dt_reg[2]} unloaded} {{U_FFT2/UMR/dt_reg[3]} unloaded} {{U_FFT2/UMI/dt_reg[0]} unloaded} {{U_FFT2/UMI/dt_reg[1]} unloaded} {{U_FFT2/UMI/dt_reg[2]} unloaded} {{U_FFT2/UMI/dt_reg[3]} unloaded} {{U_FFT2/s6r_reg[21]} unloaded} {{U_FFT2/s6i_reg[21]} unloaded} {{U_NORM2/dir_reg[19]} unloaded} {{U_NORM2/dir_reg[20]} unloaded} {{U_NORM2/dii_reg[19]} unloaded} {{U_NORM2/dii_reg[20]} unloaded} {{U_FFT1/UMR/dx5_reg[21]} {{merged with U_FFT1/UMR/dx5_reg[20]}}} {{U_FFT1/UMR/dt_reg[18]} {{merged with U_FFT1/UMR/dt_reg[17]}}} {{U_FFT2/UMR/dx5_reg[23]} {{merged with U_FFT2/UMR/dx5_reg[22]}}} {{U_FFT2/UMR/dt_reg[20]} {{merged with U_FFT2/UMR/dt_reg[19]}}} {{U_FFT1/UMI/dt_reg[18]} unloaded} {{U_FFT1/UMI/dx5_reg[21]} unloaded} {{U_FFT2/UMI/dt_reg[20]} unloaded} {{U_FFT2/UMI/dx5_reg[23]} unloaded} {{U_FFT1/UMI_dx5_reg[20]} {{merged with U_FFT1/UMI_dt_reg[17]}}} {{U_FFT1/UMR_dx5_reg[20]} {{merged with U_FFT1/UMR_dt_reg[17]}}} {{U_FFT2/UMI_dx5_reg[22]} {{merged with U_FFT2/UMI_dt_reg[19]}}} {{U_FFT2/UMR_dx5_reg[22]} {{merged with U_FFT2/UMR_dt_reg[19]}}}} design:USFFT64_2B
::legacy::set_attribute -quiet verification_directory fv/USFFT64_2B design:USFFT64_2B
::legacy::set_attribute -quiet max_fanout 8.000 design:USFFT64_2B
::legacy::set_attribute -quiet arch_filename ../rtl/usfft64_2b.v design:USFFT64_2B
::legacy::set_attribute -quiet entity_filename ../rtl/usfft64_2b.v design:USFFT64_2B
::legacy::set_attribute -quiet input_slew_max_rise 200.0 port:USFFT64_2B/CLK
::legacy::set_attribute -quiet input_slew_max_fall 200.0 port:USFFT64_2B/CLK
::legacy::set_attribute -quiet input_slew_min_rise 200.0 port:USFFT64_2B/CLK
::legacy::set_attribute -quiet input_slew_min_fall 200.0 port:USFFT64_2B/CLK
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} port:USFFT64_2B/CLK
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} port:USFFT64_2B/CLK
::legacy::set_attribute -quiet input_slew_max_rise 200.0 port:USFFT64_2B/RST
::legacy::set_attribute -quiet input_slew_max_fall 200.0 port:USFFT64_2B/RST
::legacy::set_attribute -quiet input_slew_min_rise 200.0 port:USFFT64_2B/RST
::legacy::set_attribute -quiet input_slew_min_fall 200.0 port:USFFT64_2B/RST
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} port:USFFT64_2B/RST
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} port:USFFT64_2B/RST
::legacy::set_attribute -quiet input_slew_max_rise 200.0 port:USFFT64_2B/ED
::legacy::set_attribute -quiet input_slew_max_fall 200.0 port:USFFT64_2B/ED
::legacy::set_attribute -quiet input_slew_min_rise 200.0 port:USFFT64_2B/ED
::legacy::set_attribute -quiet input_slew_min_fall 200.0 port:USFFT64_2B/ED
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} port:USFFT64_2B/ED
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} port:USFFT64_2B/ED
::legacy::set_attribute -quiet input_slew_max_rise 200.0 port:USFFT64_2B/START
::legacy::set_attribute -quiet input_slew_max_fall 200.0 port:USFFT64_2B/START
::legacy::set_attribute -quiet input_slew_min_rise 200.0 port:USFFT64_2B/START
::legacy::set_attribute -quiet input_slew_min_fall 200.0 port:USFFT64_2B/START
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} port:USFFT64_2B/START
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} port:USFFT64_2B/START
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/SHIFT[3]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/SHIFT[3]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/SHIFT[3]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/SHIFT[3]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/SHIFT[3]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/SHIFT[3]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/SHIFT[2]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/SHIFT[2]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/SHIFT[2]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/SHIFT[2]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/SHIFT[2]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/SHIFT[2]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/SHIFT[1]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/SHIFT[1]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/SHIFT[1]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/SHIFT[1]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/SHIFT[1]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/SHIFT[1]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/SHIFT[0]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/SHIFT[0]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/SHIFT[0]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/SHIFT[0]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/SHIFT[0]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/SHIFT[0]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[15]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[15]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[15]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[15]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[15]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[15]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[14]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[14]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[14]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[14]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[14]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[14]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[13]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[13]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[13]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[13]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[13]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[13]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[12]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[12]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[12]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[12]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[12]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[12]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[11]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[11]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[11]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[11]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[11]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[11]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[10]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[10]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[10]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[10]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[10]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[10]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[9]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[9]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[9]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[9]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[9]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[9]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[8]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[8]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[8]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[8]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[8]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[8]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[7]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[7]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[7]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[7]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[7]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[7]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[6]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[6]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[6]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[6]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[6]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[6]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[5]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[5]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[5]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[5]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[5]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[5]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[4]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[4]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[4]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[4]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[4]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[4]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[3]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[3]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[3]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[3]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[3]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[3]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[2]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[2]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[2]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[2]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[2]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[2]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[1]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[1]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[1]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[1]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[1]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[1]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DR[0]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DR[0]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DR[0]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DR[0]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DR[0]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DR[0]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[15]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[15]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[15]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[15]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[15]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[15]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[14]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[14]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[14]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[14]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[14]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[14]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[13]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[13]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[13]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[13]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[13]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[13]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[12]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[12]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[12]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[12]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[12]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[12]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[11]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[11]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[11]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[11]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[11]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[11]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[10]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[10]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[10]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[10]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[10]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[10]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[9]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[9]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[9]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[9]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[9]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[9]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[8]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[8]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[8]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[8]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[8]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[8]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[7]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[7]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[7]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[7]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[7]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[7]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[6]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[6]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[6]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[6]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[6]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[6]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[5]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[5]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[5]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[5]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[5]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[5]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[4]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[4]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[4]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[4]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[4]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[4]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[3]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[3]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[3]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[3]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[3]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[3]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[2]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[2]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[2]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[2]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[2]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[2]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[1]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[1]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[1]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[1]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[1]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[1]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 {port:USFFT64_2B/DI[0]}
::legacy::set_attribute -quiet input_slew_max_fall 200.0 {port:USFFT64_2B/DI[0]}
::legacy::set_attribute -quiet input_slew_min_rise 200.0 {port:USFFT64_2B/DI[0]}
::legacy::set_attribute -quiet input_slew_min_fall 200.0 {port:USFFT64_2B/DI[0]}
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} {port:USFFT64_2B/DI[0]}
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} {port:USFFT64_2B/DI[0]}
::legacy::set_attribute -quiet input_slew_max_rise 200.0 port:USFFT64_2B/dft_shift_enable
::legacy::set_attribute -quiet input_slew_max_fall 200.0 port:USFFT64_2B/dft_shift_enable
::legacy::set_attribute -quiet input_slew_min_rise 200.0 port:USFFT64_2B/dft_shift_enable
::legacy::set_attribute -quiet input_slew_min_fall 200.0 port:USFFT64_2B/dft_shift_enable
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} port:USFFT64_2B/dft_shift_enable
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} port:USFFT64_2B/dft_shift_enable
::legacy::set_attribute -quiet input_slew_max_rise 200.0 port:USFFT64_2B/dft_scan_input_1
::legacy::set_attribute -quiet input_slew_max_fall 200.0 port:USFFT64_2B/dft_scan_input_1
::legacy::set_attribute -quiet input_slew_min_rise 200.0 port:USFFT64_2B/dft_scan_input_1
::legacy::set_attribute -quiet input_slew_min_fall 200.0 port:USFFT64_2B/dft_scan_input_1
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} port:USFFT64_2B/dft_scan_input_1
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} port:USFFT64_2B/dft_scan_input_1
::legacy::set_attribute -quiet input_slew_max_rise 200.0 port:USFFT64_2B/dft_scan_input_2
::legacy::set_attribute -quiet input_slew_max_fall 200.0 port:USFFT64_2B/dft_scan_input_2
::legacy::set_attribute -quiet input_slew_min_rise 200.0 port:USFFT64_2B/dft_scan_input_2
::legacy::set_attribute -quiet input_slew_min_fall 200.0 port:USFFT64_2B/dft_scan_input_2
::legacy::set_attribute -quiet fixed_slew {200.0 200.0 200.0 200.0} port:USFFT64_2B/dft_scan_input_2
::legacy::set_attribute -quiet fixed_slew_by_mode {{mode:USFFT64_2B/best_view {200.0 200.0 200.0 200.0}}} port:USFFT64_2B/dft_scan_input_2
::legacy::set_attribute -quiet hdl_user_name RAM2x64C_1 module:USFFT64_2B/RAM2x64C_1_nb16
::legacy::set_attribute -quiet hdl_filelist {{default -sv {SYNTHESIS} {../rtl/ram2x64c_1.v} {../rtl}}} module:USFFT64_2B/RAM2x64C_1_nb16
::legacy::set_attribute -quiet arch_filename ../rtl/ram2x64c_1.v module:USFFT64_2B/RAM2x64C_1_nb16
::legacy::set_attribute -quiet entity_filename ../rtl/ram2x64c_1.v module:USFFT64_2B/RAM2x64C_1_nb16
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_BUF1_URAM/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_BUF1_URAM/DFT_sen
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_BUF1_URAM/DFT_sdo
::legacy::set_attribute -quiet hdl_user_name RAM2x64C_1 module:USFFT64_2B/RAM2x64C_1_nb18
::legacy::set_attribute -quiet hdl_filelist {{default -sv {SYNTHESIS} {../rtl/ram2x64c_1.v} {../rtl}}} module:USFFT64_2B/RAM2x64C_1_nb18
::legacy::set_attribute -quiet arch_filename ../rtl/ram2x64c_1.v module:USFFT64_2B/RAM2x64C_1_nb18
::legacy::set_attribute -quiet entity_filename ../rtl/ram2x64c_1.v module:USFFT64_2B/RAM2x64C_1_nb18
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_BUF2_URAM/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_BUF2_URAM/DFT_sen
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_BUF2_URAM/DFT_sdi_1
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_BUF2_URAM/DFT_sdo
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_BUF2_URAM/DFT_sdo_2
::legacy::set_attribute -quiet hdl_user_name FFT8 module:USFFT64_2B/FFT8_nb16
::legacy::set_attribute -quiet hdl_filelist {{default -sv {SYNTHESIS} {../rtl/fft8.v ../rtl/mpu707.v} {../rtl}}} module:USFFT64_2B/FFT8_nb16
::legacy::set_attribute -quiet arch_filename ../rtl/fft8.v module:USFFT64_2B/FFT8_nb16
::legacy::set_attribute -quiet entity_filename ../rtl/fft8.v module:USFFT64_2B/FFT8_nb16
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_FFT1/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_FFT1/DFT_sen
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_FFT1/DFT_sdo
::legacy::set_attribute -quiet logical_hier false module:USFFT64_2B/csa_tree_add_82_30_group_788_789
::legacy::set_attribute -quiet logical_hier false module:USFFT64_2B/csa_tree_add_82_30_group_788_789_1
::legacy::set_attribute -quiet hdl_user_name FFT8 module:USFFT64_2B/FFT8_nb18
::legacy::set_attribute -quiet hdl_filelist {{default -sv {SYNTHESIS} {../rtl/fft8.v ../rtl/mpu707.v} {../rtl}}} module:USFFT64_2B/FFT8_nb18
::legacy::set_attribute -quiet arch_filename ../rtl/fft8.v module:USFFT64_2B/FFT8_nb18
::legacy::set_attribute -quiet entity_filename ../rtl/fft8.v module:USFFT64_2B/FFT8_nb18
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_FFT2/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_FFT2/DFT_sen
::legacy::set_attribute -quiet dft_auto_created 1 hport:USFFT64_2B/U_FFT2/DFT_sdo
::legacy::set_attribute -quiet logical_hier false module:USFFT64_2B/csa_tree_add_82_30_group_784_785
::legacy::set_attribute -quiet logical_hier false module:USFFT64_2B/csa_tree_add_82_30_group_784_785_1
::legacy::set_attribute -quiet logical_hier false module:USFFT64_2B/mult_signed
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_004_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_005_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_006_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_006_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_007_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_007_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_008_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_008_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_008_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_009_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_009_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_009_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_010_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_010_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_010_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_010_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_011_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_011_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_011_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_011_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_012_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_012_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_012_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_012_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_012_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_013_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_013_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_013_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_013_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_013_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_014_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_014_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_014_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_014_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_014_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_014_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_015_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_015_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_015_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_015_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_015_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_015_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_016_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_016_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_016_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_016_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_016_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_016_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_017_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_017_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_017_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_017_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_017_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_017_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_018_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_018_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_018_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_018_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_018_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_018_6
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_019_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_019_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_019_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_019_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_019_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_019_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_020_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_020_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_020_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_020_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_020_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_020_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_021_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_021_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_021_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_021_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_021_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_022_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_022_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_022_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_022_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_022_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_023_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_023_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_023_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_023_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_024_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_024_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_024_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_024_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_025_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_025_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_025_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_026_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_026_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_026_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_027_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_027_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_028_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_028_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_029_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_107_19/cdnfadd_030_0
::legacy::set_attribute -quiet rtlop_info {{} 0 0 0 3 0 48 1 2 1 1 2 0 1} hinst:USFFT64_2B/U_MPU_mul_107_19
::legacy::set_attribute -quiet logical_hier false module:USFFT64_2B/mult_signed_615
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_004_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_005_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_006_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_006_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_007_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_007_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_008_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_008_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_008_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_009_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_009_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_009_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_010_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_010_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_010_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_010_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_011_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_011_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_011_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_011_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_012_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_012_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_012_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_012_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_012_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_013_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_013_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_013_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_013_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_013_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_014_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_014_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_014_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_014_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_014_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_014_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_015_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_015_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_015_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_015_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_015_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_015_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_016_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_016_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_016_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_016_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_016_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_016_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_017_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_017_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_017_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_017_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_017_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_017_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_018_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_018_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_018_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_018_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_018_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_018_6
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_019_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_019_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_019_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_019_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_019_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_019_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_020_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_020_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_020_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_020_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_020_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_020_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_021_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_021_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_021_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_021_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_021_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_022_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_022_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_022_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_022_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_022_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_023_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_023_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_023_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_023_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_024_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_024_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_024_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_024_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_025_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_025_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_025_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_026_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_026_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_026_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_027_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_027_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_028_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_028_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_029_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_108_17/cdnfadd_030_0
::legacy::set_attribute -quiet rtlop_info {{} 0 0 0 3 0 48 1 2 1 1 2 0 1} hinst:USFFT64_2B/U_MPU_mul_108_17
::legacy::set_attribute -quiet logical_hier false module:USFFT64_2B/mult_signed_616
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_004_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_005_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_006_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_006_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_007_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_007_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_008_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_008_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_008_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_009_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_009_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_009_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_010_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_010_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_010_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_010_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_011_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_011_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_011_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_011_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_012_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_012_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_012_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_012_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_012_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_013_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_013_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_013_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_013_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_013_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_014_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_014_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_014_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_014_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_014_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_014_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_015_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_015_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_015_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_015_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_015_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_015_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_016_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_016_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_016_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_016_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_016_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_016_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_017_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_017_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_017_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_017_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_017_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_017_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_018_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_018_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_018_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_018_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_018_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_018_6
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_019_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_019_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_019_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_019_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_019_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_019_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_020_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_020_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_020_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_020_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_020_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_020_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_021_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_021_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_021_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_021_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_021_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_022_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_022_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_022_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_022_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_022_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_023_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_023_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_023_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_023_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_024_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_024_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_024_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_024_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_025_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_025_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_025_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_026_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_026_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_026_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_027_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_027_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_028_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_028_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_029_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_109_17/cdnfadd_030_0
::legacy::set_attribute -quiet rtlop_info {{} 0 0 0 3 0 48 1 2 1 1 2 0 1} hinst:USFFT64_2B/U_MPU_mul_109_17
::legacy::set_attribute -quiet logical_hier false module:USFFT64_2B/mult_signed_614
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_004_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_005_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_006_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_006_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_007_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_007_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_008_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_008_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_008_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_009_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_009_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_009_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_010_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_010_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_010_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_010_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_011_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_011_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_011_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_011_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_012_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_012_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_012_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_012_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_012_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_013_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_013_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_013_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_013_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_013_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_014_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_014_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_014_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_014_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_014_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_014_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_015_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_015_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_015_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_015_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_015_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_015_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_016_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_016_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_016_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_016_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_016_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_016_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_017_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_017_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_017_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_017_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_017_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_017_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_018_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_018_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_018_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_018_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_018_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_018_6
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_019_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_019_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_019_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_019_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_019_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_019_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_020_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_020_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_020_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_020_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_020_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_020_5
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_021_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_021_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_021_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_021_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_021_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_022_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_022_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_022_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_022_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_022_4
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_023_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_023_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_023_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_023_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_024_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_024_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_024_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_024_3
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_025_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_025_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_025_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_026_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_026_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_026_2
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_027_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_027_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_028_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_028_1
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_029_0
::legacy::set_attribute -quiet preserve size_delete_ok inst:USFFT64_2B/U_MPU_mul_110_17/cdnfadd_030_0
::legacy::set_attribute -quiet rtlop_info {{} 0 0 0 3 0 48 1 2 1 1 2 0 1} hinst:USFFT64_2B/U_MPU_mul_110_17
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
check_dft_rules design:USFFT64_2B
