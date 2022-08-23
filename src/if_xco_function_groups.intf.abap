INTERFACE if_xco_function_groups PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_function_groups) TYPE sxco_t_function_groups.
ENDINTERFACE.