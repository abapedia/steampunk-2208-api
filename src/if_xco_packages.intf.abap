INTERFACE if_xco_packages PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_packages) TYPE sxco_t_packages.
ENDINTERFACE.