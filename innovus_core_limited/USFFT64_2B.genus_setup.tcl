#####################################################################
#
# Genus(TM) Synthesis Solution setup file
# Created by Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1
#   on 06/17/2025 17:14:20
#
# This file can only be run in Genus Common UI mode.
#
#####################################################################


# This script is intended for use with Genus(TM) Synthesis Solution version GENUS15.22 - 15.20-s024_1


# Remove Existing Design
###########################################################
if {[::legacy::find -design design:USFFT64_2B] ne ""} {
  puts "** A design with the same name is already loaded. It will be removed. **"
  delete_obj design:USFFT64_2B
}


# Source INIT Setup file
########################################################
source ../innovus_core_limited/USFFT64_2B.genus_init.tcl
read_metric -id current ../innovus_core_limited/USFFT64_2B.metrics.json

source ../innovus_core_limited/USFFT64_2B.g
puts "\n** Restoration Completed **\n"


# Data Integrity Check
###########################################################
# program version
if {"[string_representation [::legacy::get_attribute program_version /]]" != "{GENUS15.22 - 15.20-s024_1}"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden program_version: {GENUS15.22 - 15.20-s024_1}  current program_version: [string_representation [::legacy::get_attribute program_version /]]"
}
# license
if {"[string_representation [::legacy::get_attribute startup_license /]]" != "Genus_Synthesis"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden license: Genus_Synthesis  current license: [string_representation [::legacy::get_attribute startup_license /]]"
}
# slack
set _slk_ [::legacy::get_attribute slack design:USFFT64_2B]
if {[regexp {^-?[0-9.]+$} $_slk_]} {
  set _slk_ [format %.1f $_slk_]
}
if {$_slk_ != "3332.6"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden slack: 3332.6,  current slack: $_slk_"
}
unset _slk_
# multi-mode slack
if {"[string_representation [::legacy::get_attribute slack_by_mode design:USFFT64_2B]]" != "{{mode:USFFT64_2B/best_view 3332.6}}"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden slack_by_mode: {{mode:USFFT64_2B/best_view 3332.6}}  current slack_by_mode: [string_representation [::legacy::get_attribute slack_by_mode design:USFFT64_2B]]"
}
# tns
set _tns_ [::legacy::get_attribute tns design:USFFT64_2B]
if {[regexp {^-?[0-9.]+$} $_tns_]} {
  set _tns_ [format %.0f $_tns_]
}
if {$_tns_ != "0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden tns: 0,  current tns: $_tns_"
}
unset _tns_
# cell area
set _cell_area_ [::legacy::get_attribute cell_area design:USFFT64_2B]
if {[regexp {^-?[0-9.]+$} $_cell_area_]} {
  set _cell_area_ [format %.0f $_cell_area_]
}
if {$_cell_area_ != "1765649"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden cell area: 1765649,  current cell area: $_cell_area_"
}
unset _cell_area_
# net area
set _net_area_ [::legacy::get_attribute net_area design:USFFT64_2B]
if {[regexp {^-?[0-9.]+$} $_net_area_]} {
  set _net_area_ [format %.0f $_net_area_]
}
if {$_net_area_ != "804400"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden net area: 804400,  current net area: $_net_area_"
}
unset _net_area_
# scan chain count
if {[llength [::legacy::find design:USFFT64_2B -scan_chain *]] != "2"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden # scan chains: 2  current # scan chains: [llength [::legacy::find design:USFFT64_2B -scan_chain *]]"
}
# library domain count
if {[llength [::legacy::find /libraries -library_domain *]] != "3"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden # library domains: 3  current # library domains: [llength [::legacy::find /libraries -library_domain *]]"
}
