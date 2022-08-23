INTERFACE if_xco_data_definitions PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_data_definitions) TYPE sxco_t_data_definitions.
ENDINTERFACE.