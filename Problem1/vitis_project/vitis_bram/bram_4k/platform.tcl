# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\clc25\Vivado_project\vitis_bram\bram_4k\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\clc25\Vivado_project\vitis_bram\bram_4k\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {bram_4k}\
-hw {C:\Users\clc25\Vivado_project\BRAMC\bram_4k.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/Users/clc25/Vivado_project/vitis_bram}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {bram_4k}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
