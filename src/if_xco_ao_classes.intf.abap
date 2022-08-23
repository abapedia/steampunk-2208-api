INTERFACE if_xco_ao_classes PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_classes) TYPE sxco_t_ao_classes.
ENDINTERFACE.