INTERFACE if_xco_cp_tr_api_entries PUBLIC.
  DATA:
    all    TYPE REF TO if_xco_cp_tr_entry_class READ-ONLY,

    object TYPE REF TO if_xco_cp_tr_api_obj_entries READ-ONLY,
    key    TYPE REF TO if_xco_cp_tr_api_key_entries READ-ONLY.

  METHODS:
    where
      IMPORTING
        it_filters      TYPE sxco_t_tr_entry_filters
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_cp_tr_entry_class.
ENDINTERFACE.