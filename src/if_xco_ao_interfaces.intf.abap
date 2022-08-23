INTERFACE if_xco_ao_interfaces PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_interfaces) TYPE sxco_t_ao_interfaces.
ENDINTERFACE.