INTERFACE if_xco_ar_objects PUBLIC.
  INTERFACES:
    if_xco_ar_object_class,
    if_xco_ar_object_source.

  METHODS:
    get
      RETURNING
        VALUE(rt_objects) TYPE sxco_t_ar_objects,
    get_keys
      RETURNING
        VALUE(rt_object_keys) TYPE sxco_t_ar_object_key,
    get_filter
      RETURNING
        VALUE(ro_filter) TYPE REF TO if_xco_ar_filter.
ENDINTERFACE.