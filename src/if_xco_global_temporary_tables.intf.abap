INTERFACE if_xco_global_temporary_tables PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_global_temporary_tables) TYPE sxco_t_global_temporary_tables.
ENDINTERFACE.