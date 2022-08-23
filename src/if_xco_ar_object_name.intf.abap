INTERFACE if_xco_ar_object_name PUBLIC.
  DATA:
    value TYPE sxco_ar_object_name READ-ONLY.

  METHODS:
    get_filter
      RETURNING
        VALUE(ro_filter) TYPE REF TO if_xco_ar_filter.
ENDINTERFACE.