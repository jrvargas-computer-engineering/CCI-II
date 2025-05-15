#################################################################################
# Scripts para Síntese Lógica com Multi-Mode Multi-Corner (MMMC)
# Por: R-N Wuerdig
# 17/07/2023
#################################################################################

set LIB_PATH "/pdk/xfab/XC018_61_3.1.3"

set slow_corner_extraction typical
set typ_corner_extraction  typical
set fast_corner_extraction typical

## library_sets
#create_library_set -name worst_libset \
#    -timing { /tools/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_slow_1_62V_125C.lib \
#		/tools/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS3ST/IO_CELLS_3V_MOS3ST_slow_1_62V_3_30V_125C.lib }

create_library_set -name worst_libset \
    -timing { /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_slow_1_62V_125C.lib \
		/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS3ST/IO_CELLS_3V_MOS3ST_slow_1_62V_3_30V_125C.lib }

#create_library_set -name nominal_libset \
#    -timing { /tools/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_typ_1_80V_25C.lib \
#		/tools/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS3ST/IO_CELLS_3V_MOS3ST_typ_1_80V_3_30V_25C.lib }
create_library_set -name nominal_libset \
    -timing { /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_typ_1_80V_25C.lib \
		/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS3ST/IO_CELLS_3V_MOS3ST_typ_1_80V_3_30V_25C.lib }


#create_library_set -name best_libset \
#    -timing { /tools/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_fast_1_98V_m40C.lib \
#		/tools/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS3ST/IO_CELLS_3V_MOS3ST_fast_1_98V_3_30V_m40C.lib }

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

## delay_corner
create_delay_corner -name worst_delay_corner \
    -timing_condition worst_timing_cond

create_delay_corner -name nominal_delay_corner \
    -timing_condition nominal_timing_cond 

create_delay_corner -name best_delay_corner \
    -timing_condition best_timing_cond 

## constraint_mode
create_constraint_mode -name default_constraints \
    -sdc_files { ../constraints/constraints.sdc }

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
set_analysis_view -setup { worst_view } \
                  -hold { best_view }

