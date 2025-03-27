# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "RAM_ADDR_OFFSET_MB" -parent ${Page_0}


}

proc update_PARAM_VALUE.RAM_ADDR_OFFSET_MB { PARAM_VALUE.RAM_ADDR_OFFSET_MB } {
	# Procedure called to update RAM_ADDR_OFFSET_MB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAM_ADDR_OFFSET_MB { PARAM_VALUE.RAM_ADDR_OFFSET_MB } {
	# Procedure called to validate RAM_ADDR_OFFSET_MB
	return true
}


proc update_MODELPARAM_VALUE.RAM_ADDR_OFFSET_MB { MODELPARAM_VALUE.RAM_ADDR_OFFSET_MB PARAM_VALUE.RAM_ADDR_OFFSET_MB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RAM_ADDR_OFFSET_MB}] ${MODELPARAM_VALUE.RAM_ADDR_OFFSET_MB}
}

