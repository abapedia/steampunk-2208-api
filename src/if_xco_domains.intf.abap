INTERFACE if_xco_domains PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_domains) TYPE sxco_t_domains.
ENDINTERFACE.