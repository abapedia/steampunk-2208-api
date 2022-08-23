INTERFACE if_xco_append_structures PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_append_structures) TYPE sxco_t_append_structures.
ENDINTERFACE.