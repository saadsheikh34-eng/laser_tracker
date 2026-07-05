# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BORDER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CROSS_ARM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HOLD_FRAMES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IMG_HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IMG_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KEEP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MIN_BLOB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TH_B" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TH_G" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TH_R" -parent ${Page_0}
  ipgui::add_param $IPINST -name "USE_BOX_CENTER" -parent ${Page_0}


}

proc update_PARAM_VALUE.BORDER { PARAM_VALUE.BORDER } {
	# Procedure called to update BORDER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BORDER { PARAM_VALUE.BORDER } {
	# Procedure called to validate BORDER
	return true
}

proc update_PARAM_VALUE.CROSS_ARM { PARAM_VALUE.CROSS_ARM } {
	# Procedure called to update CROSS_ARM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CROSS_ARM { PARAM_VALUE.CROSS_ARM } {
	# Procedure called to validate CROSS_ARM
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.HOLD_FRAMES { PARAM_VALUE.HOLD_FRAMES } {
	# Procedure called to update HOLD_FRAMES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HOLD_FRAMES { PARAM_VALUE.HOLD_FRAMES } {
	# Procedure called to validate HOLD_FRAMES
	return true
}

proc update_PARAM_VALUE.IMG_HEIGHT { PARAM_VALUE.IMG_HEIGHT } {
	# Procedure called to update IMG_HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IMG_HEIGHT { PARAM_VALUE.IMG_HEIGHT } {
	# Procedure called to validate IMG_HEIGHT
	return true
}

proc update_PARAM_VALUE.IMG_WIDTH { PARAM_VALUE.IMG_WIDTH } {
	# Procedure called to update IMG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IMG_WIDTH { PARAM_VALUE.IMG_WIDTH } {
	# Procedure called to validate IMG_WIDTH
	return true
}

proc update_PARAM_VALUE.KEEP_WIDTH { PARAM_VALUE.KEEP_WIDTH } {
	# Procedure called to update KEEP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KEEP_WIDTH { PARAM_VALUE.KEEP_WIDTH } {
	# Procedure called to validate KEEP_WIDTH
	return true
}

proc update_PARAM_VALUE.MIN_BLOB { PARAM_VALUE.MIN_BLOB } {
	# Procedure called to update MIN_BLOB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MIN_BLOB { PARAM_VALUE.MIN_BLOB } {
	# Procedure called to validate MIN_BLOB
	return true
}

proc update_PARAM_VALUE.TH_B { PARAM_VALUE.TH_B } {
	# Procedure called to update TH_B when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TH_B { PARAM_VALUE.TH_B } {
	# Procedure called to validate TH_B
	return true
}

proc update_PARAM_VALUE.TH_G { PARAM_VALUE.TH_G } {
	# Procedure called to update TH_G when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TH_G { PARAM_VALUE.TH_G } {
	# Procedure called to validate TH_G
	return true
}

proc update_PARAM_VALUE.TH_R { PARAM_VALUE.TH_R } {
	# Procedure called to update TH_R when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TH_R { PARAM_VALUE.TH_R } {
	# Procedure called to validate TH_R
	return true
}

proc update_PARAM_VALUE.USE_BOX_CENTER { PARAM_VALUE.USE_BOX_CENTER } {
	# Procedure called to update USE_BOX_CENTER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_BOX_CENTER { PARAM_VALUE.USE_BOX_CENTER } {
	# Procedure called to validate USE_BOX_CENTER
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.KEEP_WIDTH { MODELPARAM_VALUE.KEEP_WIDTH PARAM_VALUE.KEEP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KEEP_WIDTH}] ${MODELPARAM_VALUE.KEEP_WIDTH}
}

proc update_MODELPARAM_VALUE.IMG_WIDTH { MODELPARAM_VALUE.IMG_WIDTH PARAM_VALUE.IMG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IMG_WIDTH}] ${MODELPARAM_VALUE.IMG_WIDTH}
}

proc update_MODELPARAM_VALUE.IMG_HEIGHT { MODELPARAM_VALUE.IMG_HEIGHT PARAM_VALUE.IMG_HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IMG_HEIGHT}] ${MODELPARAM_VALUE.IMG_HEIGHT}
}

proc update_MODELPARAM_VALUE.TH_R { MODELPARAM_VALUE.TH_R PARAM_VALUE.TH_R } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TH_R}] ${MODELPARAM_VALUE.TH_R}
}

proc update_MODELPARAM_VALUE.TH_G { MODELPARAM_VALUE.TH_G PARAM_VALUE.TH_G } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TH_G}] ${MODELPARAM_VALUE.TH_G}
}

proc update_MODELPARAM_VALUE.TH_B { MODELPARAM_VALUE.TH_B PARAM_VALUE.TH_B } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TH_B}] ${MODELPARAM_VALUE.TH_B}
}

proc update_MODELPARAM_VALUE.MIN_BLOB { MODELPARAM_VALUE.MIN_BLOB PARAM_VALUE.MIN_BLOB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MIN_BLOB}] ${MODELPARAM_VALUE.MIN_BLOB}
}

proc update_MODELPARAM_VALUE.HOLD_FRAMES { MODELPARAM_VALUE.HOLD_FRAMES PARAM_VALUE.HOLD_FRAMES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HOLD_FRAMES}] ${MODELPARAM_VALUE.HOLD_FRAMES}
}

proc update_MODELPARAM_VALUE.USE_BOX_CENTER { MODELPARAM_VALUE.USE_BOX_CENTER PARAM_VALUE.USE_BOX_CENTER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USE_BOX_CENTER}] ${MODELPARAM_VALUE.USE_BOX_CENTER}
}

proc update_MODELPARAM_VALUE.CROSS_ARM { MODELPARAM_VALUE.CROSS_ARM PARAM_VALUE.CROSS_ARM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CROSS_ARM}] ${MODELPARAM_VALUE.CROSS_ARM}
}

proc update_MODELPARAM_VALUE.BORDER { MODELPARAM_VALUE.BORDER PARAM_VALUE.BORDER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BORDER}] ${MODELPARAM_VALUE.BORDER}
}

