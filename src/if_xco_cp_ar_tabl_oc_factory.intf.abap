INTERFACE if_xco_cp_ar_tabl_oc_factory PUBLIC.
  DATA:
    all                     TYPE REF TO if_xco_ar_tabl_object_class READ-ONLY,

    append_structures       TYPE REF TO if_xco_cp_ar_tabl_aps_oc_fctry READ-ONLY,
    structures              TYPE REF TO if_xco_cp_ar_tabl_str_oc_fctry READ-ONLY,
    database_tables         TYPE REF TO if_xco_cp_ar_tabl_dbt_oc_fctry READ-ONLY,
    global_temporary_tables TYPE REF TO if_xco_cp_ar_tabl_gtt_oc_fctry READ-ONLY.

  METHODS:
    where
      IMPORTING
        it_filters      TYPE sxco_t_ar_filters
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_ar_tabl_object_class.
ENDINTERFACE.