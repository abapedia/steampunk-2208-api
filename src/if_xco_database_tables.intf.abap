INTERFACE if_xco_database_tables PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_database_tables) TYPE sxco_t_database_tables.
ENDINTERFACE.