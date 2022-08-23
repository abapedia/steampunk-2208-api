INTERFACE if_xco_behavior_definitions PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_behavior_definitions) TYPE sxco_t_behavior_definitions.
ENDINTERFACE.