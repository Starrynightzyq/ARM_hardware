# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_M0_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M1_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M2_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M3_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S0_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S1_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S2_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S3_AXIS_TDATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_M0_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M0_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M0_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M0_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M0_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M1_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M1_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M1_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M1_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M1_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M1_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M2_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M2_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M2_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M2_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M2_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M2_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M3_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M3_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M3_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M3_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M3_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M3_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S0_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S0_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S0_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S0_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S0_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S0_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S1_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S1_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S1_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S1_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S1_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S1_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S2_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S2_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S2_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S2_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S2_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S2_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S3_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S3_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S3_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S3_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S3_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S3_AXIS_TDATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S0_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S0_AXIS_TDATA_WIDTH PARAM_VALUE.C_S0_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S0_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S0_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S1_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S1_AXIS_TDATA_WIDTH PARAM_VALUE.C_S1_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S1_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S1_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S2_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S2_AXIS_TDATA_WIDTH PARAM_VALUE.C_S2_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S2_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S2_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S3_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S3_AXIS_TDATA_WIDTH PARAM_VALUE.C_S3_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S3_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S3_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M0_AXIS_TDATA_WIDTH PARAM_VALUE.C_M0_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M1_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M1_AXIS_TDATA_WIDTH PARAM_VALUE.C_M1_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M1_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M1_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M2_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M2_AXIS_TDATA_WIDTH PARAM_VALUE.C_M2_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M2_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M2_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M3_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M3_AXIS_TDATA_WIDTH PARAM_VALUE.C_M3_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M3_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M3_AXIS_TDATA_WIDTH}
}

