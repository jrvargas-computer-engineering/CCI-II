#################################################################################
#
# Created by Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1 on Thu Jul 10 19:42:29 -0300 2025
#
#################################################################################

## library_sets
create_library_set -name worst_libset \
    -timing { /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_slow_1_62V_125C.lib \
              /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS3ST/IO_CELLS_3V_MOS3ST_slow_1_62V_3_30V_125C.lib }
create_library_set -name nominal_libset \
    -timing { /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_typ_1_80V_25C.lib \
              /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS3ST/IO_CELLS_3V_MOS3ST_typ_1_80V_3_30V_25C.lib }
create_library_set -name best_libset \
    -timing { /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_fast_1_98V_m40C.lib \
              /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS3ST/IO_CELLS_3V_MOS3ST_fast_1_98V_3_30V_m40C.lib }

## opcond
create_opcond -name worst_opcond -voltage 1.62 -temperature 125.0
create_opcond -name nominal_opcond -voltage 1.8 -temperature 25.0
create_opcond -name best_opcond -voltage 1.98 -temperature -40.0

## timing_condition
create_timing_condition -name worst_timing_cond \
    -opcond worst_opcond \
    -library_sets { worst_libset }
create_timing_condition -name nominal_timing_cond \
    -opcond nominal_opcond \
    -library_sets { nominal_libset }
create_timing_condition -name best_timing_cond \
    -opcond best_opcond \
    -library_sets { best_libset }

## rc_corner
create_rc_corner -name default_emulate_rc_corner \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0}

## delay_corner
create_delay_corner -name worst_delay_corner \
    -early_timing_condition { worst_timing_cond } \
    -late_timing_condition { worst_timing_cond } \
    -early_rc_corner default_emulate_rc_corner \
    -late_rc_corner default_emulate_rc_corner
create_delay_corner -name nominal_delay_corner \
    -early_timing_condition { nominal_timing_cond } \
    -late_timing_condition { nominal_timing_cond } \
    -early_rc_corner default_emulate_rc_corner \
    -late_rc_corner default_emulate_rc_corner
create_delay_corner -name best_delay_corner \
    -early_timing_condition { best_timing_cond } \
    -late_timing_condition { best_timing_cond } \
    -early_rc_corner default_emulate_rc_corner \
    -late_rc_corner default_emulate_rc_corner

## constraint_mode
create_constraint_mode -name default_constraints \
    -sdc_files { ../innovus_core_limited//USFFT64_2B.default_constraints.sdc }

## analysis_view
create_analysis_view -name worst_view \
    -constraint_mode default_constraints \
    -delay_corner worst_delay_corner
create_analysis_view -name nominal_view \
    -constraint_mode default_constraints \
    -delay_corner nominal_delay_corner
create_analysis_view -name best_view \
    -constraint_mode default_constraints \
    -delay_corner best_delay_corner

## set_analysis_view
set_analysis_view -setup { best_view } \
                  -hold { best_view }
