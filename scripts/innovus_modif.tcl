# Criar diretório para outputs do trabalho
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir

puts "Project Initialization"
set_db init_power_nets {u_ring/VDD u_ring/VDDR u_ring/VDDO vdd!}
set_db init_ground_nets {u_ring/GNDO u_ring/GNDR gnd!}

##Example
##set_db init_power_nets {u_ring/VDD u_ring/VDDR u_ring/VDDO vdd!}
##set_db init_ground_nets {u_ring/GNDO u_ring/GNDR gnd!}

##Set library
eval_legacy { setDesignMode -process 180 } 

##Set the initial variable
source ../innovus_core_limited/USFFT64_2B.invs_setup.tcl
gui_fit
puts "done" 
##suspend

puts "Reading IO file"
##Read IO file
read_io_file ../io_core_limited/USFFT64_2B_MOD.save.io 
gui_fit
# Salvar tabela de IOs (tentando comandos alternativos)
puts "done" 
##suspend

##Set the possibility to implement DFT structure
set_db reorder_scan_comp_logic true


puts "Saving project"
#write_db Save_1
puts "done"
###suspend


puts "Implementing Floorplan"
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir

##Check PADs rules
check_bond_pad_spacing > $output_dir/check_bond_pad_spacing.rpt
space_bond_pads > $output_dir/space_bond_pads.rpt


##Generating square floorplan (1) with 70% of density (0.7) with 3um margins (3 3 3 3)
create_floorplan -site core \
-match_to_site \
-core_density_size 1 0.7 150 150 150 150

#create_floorplan -site core \
#-die_size 2000 2000 30 30 30 30

resize_floorplan -x_size 2 -y_size 2
gui_fit
# Salvar plot do floorplan
gui_fit
gui_set_draw_view place
write_to_gif $output_dir/floorplan.gif
puts "done - Floorplan" 
##suspend

puts "Saving project"
#write_db Save_2
puts "done - Save_2"
###suspend

puts "Chek Design"
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir

##check design rules
check_design -all
gui_fit
puts "done - Check Design"
###suspend

puts "Starting Power Planning"
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir

##Set Power nets. All wire of netlist and the main power supply vdd! and gnd!
delete_global_net_connections
connect_global_net u_ring/VDD  -type tiehi -all -verbose -netlist_override
connect_global_net u_ring/VDDR -type tiehi -all -verbose -netlist_override
connect_global_net u_ring/VDDO -type tiehi -all -verbose -netlist_override
connect_global_net u_ring/GNDR -type tielo -all -verbose -netlist_override
connect_global_net u_ring/GNDO -type tielo -all -verbose -netlist_override
connect_global_net gnd! -type tielo -all -verbose -netlist_override
connect_global_net vdd! -type tiehi -all -verbose -netlist_override

connect_global_net u_ring/VDD -type pgpin -pin_base_name VDD -all -verbose 
connect_global_net vdd! -type pgpin -pin_base_name vdd! -all -override -verbose -netlist_override
connect_global_net vdd! -type pgpin -pin_base_name VDDI -all -override -verbose -netlist_override

connect_global_net u_ring/VDDR -type pgpin -pin_base_name VDDR -all -verbose 
connect_global_net u_ring/VDDO -type pgpin -pin_base_name VDDO -all -verbose 
connect_global_net u_ring/GNDR -type pgpin -pin_base_name GNDR -all -verbose 
connect_global_net u_ring/GNDO -type pgpin -pin_base_name GNDO -all -verbose 

connect_global_net gnd! -type pgpin -pin_base_name gnd! -all -override -verbose -netlist_override
connect_global_net gnd! -type pgpin -pin_base_name GNDI -all -override -verbose -netlist_override

gui_fit
puts "done - Power Planning" 
###suspend

puts "Scan_chain"
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir

##Set the rules for via generation 
eval_legacy {setViaGenMode -ignore_viarule_enclosure false}

##set scan chain
create_scan_chain -name chain1 -start dft_scan_input_1 -stop dft_scan_output_2
create_scan_chain -name chain2 -start dft_scan_input_2 -stop dft_scan_output_2
puts "done" 
###suspend


puts "Power Ring Definition"
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir

add_rings -spacing 5 \
-width 10 \
-layer {top MET5 bottom MET5 left METTP right METTP} \
-jog_distance 1 \
-offset 1 \
-nets {gnd! vdd!} \
-threshold 3

gui_fit
gui_set_draw_view place
write_to_gif $output_dir/power_rings.gif
puts "done - Power Rings" 
##suspend

puts "Adding stripes"
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir

##Add stripes
add_stripes -block_ring_top_layer_limit METTP \
-max_same_layer_jog_length 6 \
-pad_core_ring_bottom_layer_limit MET5 \
-set_to_set_distance 200 \
-pad_core_ring_top_layer_limit METTP \
-spacing 15 \
-merge_stripes_value 2.5 \
-layer METTP \
-block_ring_bottom_layer_limit MET1 \
-width 3 -nets {gnd! vdd!} \
-start_offset 1

add_stripes -direction horizontal \
-block_ring_top_layer_limit MET5 \
-max_same_layer_jog_length 6 \
-pad_core_ring_bottom_layer_limit METTP \
-set_to_set_distance 200 \
-pad_core_ring_top_layer_limit METTP \
-spacing 15 \
-merge_stripes_value 2.5 \
-layer MET5 \
-block_ring_bottom_layer_limit MET1 \
-width 3 \
-nets {gnd! vdd!} \
-start_offset 2
gui_fit
gui_set_draw_view place
write_to_gif $output_dir/power_stripes.gif
puts "done - Power Stripes" 
##suspend

puts "Power routing"
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir

###route_special -connect {block_pin core_pin pad_pin pad_ring floating_stripe} -layer_change_range {MET1 METTP } -block_pin_target {nearest_target} -pad_pin_port_connect {all_port one_geom} -pad_ring_layer {MET1 MET5}   -pad_pin_target { nearest_target} -core_pin_target {first_after_row_end} -block_pin {all} -allow_jogging 1  -crossover_via_layer_range {MET1 METTP} -allow_layer_change 1 -target_via_layer_range {MET1 METTP} -nets {u_ring/VDD u_ring/VDDR u_ring/VDDO u_ring/GNDO u_ring/GNDR gnd! vdd!}
route_special -connect_aligned_block_and_pad_pin {pad_pin_as_target} \
-connect {block_pin core_pin pad_pin pad_ring floating_stripe} \
-layer_change_range {MET1 METTP } \
-block_pin_target {nearest_target} \
-pad_ring_layer {MET1 METTP} \
-pad_pin_port_connect {all_port one_geom} \
-pad_pin_target { nearest_target } \
-core_pin_target {first_after_row_end} \
-block_pin {all} \
-allow_jogging 1  \
-crossover_via_layer_range {MET1 METTP} \
-allow_layer_change 1 \
-target_via_layer_range {MET1 METTP} \
-nets {u_ring/VDD u_ring/VDDR u_ring/VDDO u_ring/GNDO u_ring/GNDR gnd! vdd!}

gui_fit
puts "done - Power Routing"
##suspend

##Placement
puts "Placement"
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir

place_design 
gui_fit
gui_set_draw_view place
write_to_gif $output_dir/placement.gif
puts "done - Placement" 
# Relatório pós-placement
report_timing > $output_dir/report_timing_post_placement.rpt
opt_design -pre_cts > $output_dir/opt_pre_cts.rpt
gui_fit
puts "done - Post-Placement Reports" 
##suspend

puts "Scan-Chain Reorder"
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir

#scan_chain reorder
reorder_scan
gui_fit
puts "done - Scan-Chain Reorder" 
##suspend

puts "Pre-CTS"
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir

##Otmization pre CTS
opt_design -pre_cts
gui_fit
puts "done - Pre-CTS" 
##suspend

#Performs clock concurrent optimization (CCOpt) on the current loaded design in Innovus. CCOpt optimizes both the clock tree and the datapath to meet global timing constraints.
ccopt_design -report_dir $output_dir/clk_report
##suspend

##Extracts and translates clock-related timing constraint information from the Innovus timing constraints file and adds that data to the clock tree specification file.
##creates clock specifications in cases of no clock specifications has been loaded.

eval_legacy { setCTSMode -engine ck }

##create_ccpot_clock_spec clock.spec

eval_legacy { createClockTreeSpec -file clock.ctstch }
gui_fit
puts "done" 
##suspend

##Automates the CTS portion of the Innovus timing closure flow. The clockDesign command streamlines the settings of recommended command modes and parameters. It automatically runs clock tree synthesis based on the current settings of the  setCTSMode  command and SDC constraints, and generates the standard clock skew and timing reports. It also automatically sets the setCTSMode -routeClockNet parameter to true.
set output_dir ../innovus_core_limited/outputs
file mkdir $output_dir
eval_legacy "clockDesign -specFile clock.ctstch -outDir $output_dir/clk_report"
gui_fit
gui_set_draw_view place
write_to_gif $output_dir/cts.gif
puts "done - CTS" 
##suspend

opt_design -post_cts > $output_dir/opt_post_cts.rpt
gui_fit
puts "done - Post-CTS" 
##suspend

##Add well taps
##add_well_taps -cell HS65_GS_FILLERNPWPFP3 -cell_interval 20 -fixed_gap -prefix WELLTAP -in_row_offset 8.0

##Reroute the design
##set_db  route_with_timing_driven 0 

##route_design -global


##route_detail
set_db timing_analysis_type ocv

##eval_legacy { setNanoRouteMode -drouteFixAntenna true  }
##eval_legacy { setNanoRouteMode -routeFixTopLayerAntenna true }
##eval_legacy { setNanoRouteMode -routeInsertAntennaDiode true }
##eval_legacy { setNanoRouteMode -routeInsertDiodeForClockNets true }
##eval_legacy { setNanoRouteMode -drouteSearchAndRepair true }
##eval_legacy { setNanoRouteMode -routeWithEco true }

route_design -global
puts "done - Global Route"
# Salvar plot do roteamento global
gui_fit
gui_set_draw_view place
write_to_gif $output_dir/global_route.gif
puts "done - Global Route"
##suspend

route_design -detail 
puts "done - Detailed Route"
# Salvar plot do roteamento detalhado
gui_fit
gui_set_draw_view place
write_to_gif $output_dir/detailed_route.gif
puts "done - Detailed Route"
##suspend

opt_design -post_route > $output_dir/opt_post_route.rpt
puts "done - Post-Route Optimization"
##suspend

add_fillers -base_cells FEED7 FEED5 FEED3 FEED25 FEED2 FEED15 FEED10 FEED1 -prefix FILLER

puts "done - Fillers"
##suspend

# Relatórios finais
check_design -all > $output_dir/check_design_final.rpt
check_connectivity -type regfpur -error 1000 -warning 50 > $output_dir/check_connectivity.rpt
eval_legacy { verifyConnectivity -nets {vdd! gnd!} -type all -error 1000 -warning 50 } > $output_dir/verify_connectivity.rpt
eval_legacy { verifyGeometry -allowDiffCellViol  } > $output_dir/verify_geometry.rpt
check_drc > $output_dir/check_drc.rpt
report_timing > $output_dir/report_timing_final.rpt
check_drc > $output_dir/check_drc_final.rpt
write_parasitics -spf_file $output_dir/filter.spf -rc_corner default_emfpute_rc_corner

# Salvar netlist do topo (com PADs)
write_verilog -out $output_dir/top_with_pads.v

write_db $output_dir/Final
