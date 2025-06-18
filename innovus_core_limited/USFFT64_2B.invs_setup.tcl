#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 06/17/2025 17:14:20
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# User Specified CPU usage for Innovus
######################################
set_multi_cpu_usage -local_cpu 8


# Design Import
###########################################################
## Reading FlowKit settings file
source ../innovus_core_limited/USFFT64_2B.flowkit_settings.tcl

source ../innovus_core_limited/USFFT64_2B.invs_init.tcl

# Reading metrics file
######################
read_metric -id current ../innovus_core_limited/USFFT64_2B.metrics.json 

#read_def ../innovus_core_limited/USFFT64_2B.scan.def


# Mode Setup
###########################################################
source ../innovus_core_limited/USFFT64_2B.mode

# Import list of size_only instances
######################################
set_db opt_size_only_file ../innovus_core_limited/USFFT64_2B.size_ok.tcl 

