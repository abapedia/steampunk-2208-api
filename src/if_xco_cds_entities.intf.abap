INTERFACE if_xco_cds_entities PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_entities) TYPE sxco_t_cds_entities.
ENDINTERFACE.