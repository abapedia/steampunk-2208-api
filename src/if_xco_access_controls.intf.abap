INTERFACE if_xco_access_controls PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_access_controls) TYPE sxco_t_access_controls.
ENDINTERFACE.