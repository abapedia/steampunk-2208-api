INTERFACE if_xco_cp_tr_api_key_entries PUBLIC.
  DATA:
    all TYPE REF TO if_xco_cp_tr_ke_class READ-ONLY.

  METHODS:
    where
      IMPORTING
        it_filters      TYPE sxco_t_tr_entry_filters
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_cp_tr_ke_class.
ENDINTERFACE.