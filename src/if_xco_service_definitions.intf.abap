INTERFACE if_xco_service_definitions PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_service_definitions) TYPE sxco_t_service_definitions.
ENDINTERFACE.