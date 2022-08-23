INTERFACE if_xco_dcl_cb_inherit_super PUBLIC.
  INTERFACES:
    if_xco_dcl_condition_builder,
    if_xco_dcl_cb_inherit.

  ALIASES:
    get_condition FOR if_xco_dcl_condition_builder~get_condition,

    default   FOR if_xco_dcl_cb_inherit~default,
    replacing FOR if_xco_dcl_cb_inherit~replacing.
ENDINTERFACE.