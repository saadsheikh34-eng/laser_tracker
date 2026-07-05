# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Saad\Desktop\echo_Clone\new_echo-main\pchdmi_hw\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Saad\Desktop\echo_Clone\new_echo-main\pchdmi_hw\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {pchdmi_hw}\
-hw {C:\Users\Saad\Desktop\echo_Clone\new_echo-main\arm_fpga_04_hdmi_output\hdmipipeline.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/Saad/Desktop/echo_Clone/new_echo-main}

platform write
platform generate -domains 
platform active {pchdmi_hw}
bsp reload
bsp setlib -name lwip211 -ver 1.6
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
bsp setlib -name lwip211 -ver 1.6
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
platform active {pchdmi_hw}
platform generate
domain active {standalone_domain}
bsp reload
bsp write
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/100mhz_ethernet.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/original.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/ethhdmi_pipeline.xsa}
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/ethhdmi(1).xsa}
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/arm_fpga_04_hdmi_output/ETHHDMI(MODIFIED).xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/arm_fpga_04_hdmi_output/ETHHDMI(MODIFIED1).xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/arm_fpga_04_hdmi_output/ETHHDMI(MODIFIED1).xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/arm_fpga_04_hdmi_output/ETHHDMI(MODIFIED11).xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/ethhdmi(1).xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/ethhdmi2.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/ethhdmi2.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth_grayscale.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate
platform clean
platform generate
platform generate
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform generate
platform clean
platform generate
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/sobel.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth_grayscale.xsa}
platform generate -domains 
platform generate
platform clean
platform generate
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/sobel.xsa}
platform clean
platform generate
platform generate -domains standalone_domain,zynq_fsbl 
platform clean
platform generate
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/sobel.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/sobel.xsa}
platform clean
platform generate
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/frame_difference.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/frame_difference.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform clean
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/frame_difference.xsa}
platform generate
platform clean
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/arm_fpga_04_hdmi_output/frame_diff2.xsa}
platform generate -domains standalone_domain,zynq_fsbl 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/arm_fpga_04_hdmi_output/frame_diiff2grayscale.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/arm_fpga_04_hdmi_output/onetry.xsa}
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/echo_Clone/new_echo-main/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/CONV.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/yolo.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/CONV.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/CONV.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/CONV.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/CONV.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/RELU.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/threshold.xsa}
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/threshold.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/grayscale_threshold.xsa}
platform generate -domains 
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/threshold_implementation.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/threshold_implementation.xsa}
platform generate -domains 
platform clean
platform generate
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains standalone_domain,zynq_fsbl 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform generate -domains 
platform generate
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/threshold.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/threshold_implementation.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/GUASSIAN.xsa}
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/GUASSIAN.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/threshold_implementation.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform generate
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/OSD.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/frame_differenced.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/frame_differenced.xsa}
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/frame_differenced.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/bitstreamsss/AI/arm_fpga_04_hdmi_output/framediffreal.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/FRAMEDIFFS.xsa}
platform generate -domains 
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/FRAMEDIFFS.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/FRAMEDIFFS2.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/FD3.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/FD4.xsa}
platform generate -domains 
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/sobel.xsa}
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/sobel.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/FD4.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FD5.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/stingray/arm_fpga_04_hdmi_output/FD6.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/stingray/arm_fpga_04_hdmi_output/FD6.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/FD4.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/stingray/arm_fpga_04_hdmi_output/FD6.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/zynq-video-processing/main/arm_fpga_04_hdmi_output/FD4.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/BOX1.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FD5.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FD4.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDRED.xsa}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDRED.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDCLAUDE.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDWITHBOUNDINGBOX.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDWITHGREENBOUNDINGBOX.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDWITHBOUNDINGBOX2.xsa}
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDWITHBOUNDINGBOX3.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDWITHBOUNDINBOX(DILATION).xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDCLAUDE.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDWITHBOUNDINBOX(DILATION).xsa}
platform generate -domains 
platform clean
platform generate
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDWITHBOUNDINGBOX4.0.xsa}
platform generate
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDWITHCOUNTER.xsa}
platform generate
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDWITHCOUNTER2.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform generate
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDWITHCOUNTER2.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/TEST.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/FDWITHCOUNTER2.xsa}
platform generate -domains 
platform active {pchdmi_hw}
bsp reload
bsp reload
bsp write
bsp reload
bsp reload
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/laser_tracker.xsa}
platform generate -domains 
platform active {pchdmi_hw}
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/laser_tracker.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Saad/Desktop/counter/arm_fpga_04_hdmi_output/hdmieth3.xsa}
platform generate -domains 
