INTERFACE if_xco_transformations PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_transformations) TYPE sxco_t_transformations.
ENDINTERFACE.