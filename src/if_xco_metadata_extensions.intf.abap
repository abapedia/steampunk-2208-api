INTERFACE if_xco_metadata_extensions PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_metadata_extensions) TYPE sxco_t_metadata_extensions.
ENDINTERFACE.