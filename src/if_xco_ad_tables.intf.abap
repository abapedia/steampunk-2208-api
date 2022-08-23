INTERFACE if_xco_ad_tables PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_tables) TYPE sxco_t_ad_tables.
ENDINTERFACE.