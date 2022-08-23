INTERFACE if_xco_cp_ar_filter_factory PUBLIC.
  METHODS:
    union
      IMPORTING
        it_filters      TYPE sxco_t_ar_filters
      RETURNING
        VALUE(ro_union) TYPE REF TO if_xco_ar_filter.
ENDINTERFACE.