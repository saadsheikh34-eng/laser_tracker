# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\Saad\Desktop\echo_Clone\new_echo-main\pchdmi_system\_ide\scripts\systemdebugger_pchdmi_system_67_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\Saad\Desktop\echo_Clone\new_echo-main\pchdmi_system\_ide\scripts\systemdebugger_pchdmi_system_67_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A08870-13722093-0"}
fpga -file C:/Users/Saad/Desktop/echo_Clone/new_echo-main/pchdmi/_ide/bitstream/FDRED.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/Saad/Desktop/echo_Clone/new_echo-main/pchdmi_hw/export/pchdmi_hw/hw/FDRED.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/Saad/Desktop/echo_Clone/new_echo-main/pchdmi/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/Saad/Desktop/echo_Clone/new_echo-main/pchdmi/Debug/pchdmi.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
