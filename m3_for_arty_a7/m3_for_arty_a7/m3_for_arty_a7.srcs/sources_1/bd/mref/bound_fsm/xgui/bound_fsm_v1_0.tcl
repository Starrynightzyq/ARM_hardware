# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "HWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VWIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.HWIDTH { PARAM_VALUE.HWIDTH } {
	# Procedure called to update HWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HWIDTH { PARAM_VALUE.HWIDTH } {
	# Procedure called to validate HWIDTH
	return true
}

proc update_PARAM_VALUE.VWIDTH { PARAM_VALUE.VWIDTH } {
	# Procedure called to update VWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VWIDTH { PARAM_VALUE.VWIDTH } {
	# Procedure called to validate VWIDTH
	return true
}


proc update_MODELPARAM_VALUE.HWIDTH { MODELPARAM_VALUE.HWIDTH PARAM_VALUE.HWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HWIDTH}] ${MODELPARAM_VALUE.HWIDTH}
}

proc update_MODELPARAM_VALUE.VWIDTH { MODELPARAM_VALUE.VWIDTH PARAM_VALUE.VWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VWIDTH}] ${MODELPARAM_VALUE.VWIDTH}
}

