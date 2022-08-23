INTERFACE if_xco_cp_ar_tabl_str_oc_fctry PUBLIC.
  DATA:
    all TYPE REF TO if_xco_ar_tabl_str_obj_class READ-ONLY.

  METHODS:
    where
      IMPORTING
        it_filters      TYPE sxco_t_ar_filters
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_ar_tabl_str_obj_class.
ENDINTERFACE.