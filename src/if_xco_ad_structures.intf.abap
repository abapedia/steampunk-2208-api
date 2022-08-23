INTERFACE if_xco_ad_structures PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_structures) TYPE sxco_t_ad_structures.
ENDINTERFACE.