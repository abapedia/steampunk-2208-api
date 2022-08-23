INTERFACE if_xco_ad_table_types PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_table_types) TYPE sxco_t_ad_table_types.
ENDINTERFACE.