# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CHAR0_ADDR_BASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHAR1_ADDR_BASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHAR2_ADDR_BASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHAR3_ADDR_BASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHAR4_ADDR_BASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHAR5_ADDR_BASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHAR6_ADDR_BASE" -parent ${Page_0}


}

proc update_PARAM_VALUE.CHAR0_ADDR_BASE { PARAM_VALUE.CHAR0_ADDR_BASE } {
	# Procedure called to update CHAR0_ADDR_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHAR0_ADDR_BASE { PARAM_VALUE.CHAR0_ADDR_BASE } {
	# Procedure called to validate CHAR0_ADDR_BASE
	return true
}

proc update_PARAM_VALUE.CHAR1_ADDR_BASE { PARAM_VALUE.CHAR1_ADDR_BASE } {
	# Procedure called to update CHAR1_ADDR_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHAR1_ADDR_BASE { PARAM_VALUE.CHAR1_ADDR_BASE } {
	# Procedure called to validate CHAR1_ADDR_BASE
	return true
}

proc update_PARAM_VALUE.CHAR2_ADDR_BASE { PARAM_VALUE.CHAR2_ADDR_BASE } {
	# Procedure called to update CHAR2_ADDR_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHAR2_ADDR_BASE { PARAM_VALUE.CHAR2_ADDR_BASE } {
	# Procedure called to validate CHAR2_ADDR_BASE
	return true
}

proc update_PARAM_VALUE.CHAR3_ADDR_BASE { PARAM_VALUE.CHAR3_ADDR_BASE } {
	# Procedure called to update CHAR3_ADDR_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHAR3_ADDR_BASE { PARAM_VALUE.CHAR3_ADDR_BASE } {
	# Procedure called to validate CHAR3_ADDR_BASE
	return true
}

proc update_PARAM_VALUE.CHAR4_ADDR_BASE { PARAM_VALUE.CHAR4_ADDR_BASE } {
	# Procedure called to update CHAR4_ADDR_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHAR4_ADDR_BASE { PARAM_VALUE.CHAR4_ADDR_BASE } {
	# Procedure called to validate CHAR4_ADDR_BASE
	return true
}

proc update_PARAM_VALUE.CHAR5_ADDR_BASE { PARAM_VALUE.CHAR5_ADDR_BASE } {
	# Procedure called to update CHAR5_ADDR_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHAR5_ADDR_BASE { PARAM_VALUE.CHAR5_ADDR_BASE } {
	# Procedure called to validate CHAR5_ADDR_BASE
	return true
}

proc update_PARAM_VALUE.CHAR6_ADDR_BASE { PARAM_VALUE.CHAR6_ADDR_BASE } {
	# Procedure called to update CHAR6_ADDR_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHAR6_ADDR_BASE { PARAM_VALUE.CHAR6_ADDR_BASE } {
	# Procedure called to validate CHAR6_ADDR_BASE
	return true
}


proc update_MODELPARAM_VALUE.CHAR0_ADDR_BASE { MODELPARAM_VALUE.CHAR0_ADDR_BASE PARAM_VALUE.CHAR0_ADDR_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHAR0_ADDR_BASE}] ${MODELPARAM_VALUE.CHAR0_ADDR_BASE}
}

proc update_MODELPARAM_VALUE.CHAR1_ADDR_BASE { MODELPARAM_VALUE.CHAR1_ADDR_BASE PARAM_VALUE.CHAR1_ADDR_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHAR1_ADDR_BASE}] ${MODELPARAM_VALUE.CHAR1_ADDR_BASE}
}

proc update_MODELPARAM_VALUE.CHAR2_ADDR_BASE { MODELPARAM_VALUE.CHAR2_ADDR_BASE PARAM_VALUE.CHAR2_ADDR_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHAR2_ADDR_BASE}] ${MODELPARAM_VALUE.CHAR2_ADDR_BASE}
}

proc update_MODELPARAM_VALUE.CHAR3_ADDR_BASE { MODELPARAM_VALUE.CHAR3_ADDR_BASE PARAM_VALUE.CHAR3_ADDR_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHAR3_ADDR_BASE}] ${MODELPARAM_VALUE.CHAR3_ADDR_BASE}
}

proc update_MODELPARAM_VALUE.CHAR4_ADDR_BASE { MODELPARAM_VALUE.CHAR4_ADDR_BASE PARAM_VALUE.CHAR4_ADDR_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHAR4_ADDR_BASE}] ${MODELPARAM_VALUE.CHAR4_ADDR_BASE}
}

proc update_MODELPARAM_VALUE.CHAR5_ADDR_BASE { MODELPARAM_VALUE.CHAR5_ADDR_BASE PARAM_VALUE.CHAR5_ADDR_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHAR5_ADDR_BASE}] ${MODELPARAM_VALUE.CHAR5_ADDR_BASE}
}

proc update_MODELPARAM_VALUE.CHAR6_ADDR_BASE { MODELPARAM_VALUE.CHAR6_ADDR_BASE PARAM_VALUE.CHAR6_ADDR_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHAR6_ADDR_BASE}] ${MODELPARAM_VALUE.CHAR6_ADDR_BASE}
}

