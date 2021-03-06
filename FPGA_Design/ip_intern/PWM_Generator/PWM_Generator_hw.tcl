# TCL File Generated by Component Editor 16.1
# Tue Dec 06 16:59:30 CET 2016
# DO NOT MODIFY


# 
# PWM_Generator "PWM Generator" v1.0
# florian 2016.12.06.16:59:30
# a simple ip core which generates a pwm signal with a 8 bit dutycycle
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module PWM_Generator
# 
set_module_property DESCRIPTION "a simple ip core which generates a pwm signal with a 8 bit dutycycle"
set_module_property NAME PWM_Generator
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR florian
set_module_property ICON_PATH https:/github.com/Alabamajack/Garfield/wiki
set_module_property DISPLAY_NAME "PWM Generator"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL pwm_generator_avalon
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file pwm_generator.vhdl VHDL PATH pwm_generator.vhdl
add_fileset_file pwm_generator_avalon.vhd VHDL PATH pwm_generator_avalon.vhd TOP_LEVEL_FILE

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL pwm_generator_avalon
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VHDL ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file pwm_generator_tb.vhdl VHDL PATH tb/pwm_generator_tb.vhdl


# 
# parameters
# 
add_parameter datawidth NATURAL 32 ""
set_parameter_property datawidth DEFAULT_VALUE 32
set_parameter_property datawidth DISPLAY_NAME datawidth
set_parameter_property datawidth TYPE NATURAL
set_parameter_property datawidth ENABLED false
set_parameter_property datawidth UNITS None
set_parameter_property datawidth ALLOWED_RANGES 0:2147483647
set_parameter_property datawidth DESCRIPTION ""
set_parameter_property datawidth HDL_PARAMETER true
add_parameter freq_core NATURAL 100000000
set_parameter_property freq_core DEFAULT_VALUE 100000000
set_parameter_property freq_core DISPLAY_NAME freq_core
set_parameter_property freq_core TYPE NATURAL
set_parameter_property freq_core UNITS None
set_parameter_property freq_core ALLOWED_RANGES 0:2147483647
set_parameter_property freq_core HDL_PARAMETER true
add_parameter freq_pwm NATURAL 10000
set_parameter_property freq_pwm DEFAULT_VALUE 10000
set_parameter_property freq_pwm DISPLAY_NAME freq_pwm
set_parameter_property freq_pwm TYPE NATURAL
set_parameter_property freq_pwm UNITS None
set_parameter_property freq_pwm ALLOWED_RANGES 0:2147483647
set_parameter_property freq_pwm HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock
set_interface_property avalon_slave_0 associatedReset reset
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 maximumPendingWriteTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 address address Input 1
add_interface_port avalon_slave_0 read read Input 1
add_interface_port avalon_slave_0 write write Input 1
add_interface_port avalon_slave_0 chipselect chipselect Input 1
add_interface_port avalon_slave_0 writedata writedata Input datawidth
add_interface_port avalon_slave_0 readdata readdata Output datawidth
add_interface_port avalon_slave_0 waitrequest waitrequest Output 1
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point PWM_Signal
# 
add_interface PWM_Signal conduit end
set_interface_property PWM_Signal associatedClock clock
set_interface_property PWM_Signal associatedReset reset
set_interface_property PWM_Signal ENABLED true
set_interface_property PWM_Signal EXPORT_OF ""
set_interface_property PWM_Signal PORT_NAME_MAP ""
set_interface_property PWM_Signal CMSIS_SVD_VARIABLES ""
set_interface_property PWM_Signal SVD_ADDRESS_GROUP ""

add_interface_port PWM_Signal pwm_output_signal export Output 1

