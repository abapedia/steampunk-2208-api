INTERFACE if_xco_service_bindings PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_service_bindings) TYPE sxco_t_service_bindings.
ENDINTERFACE.