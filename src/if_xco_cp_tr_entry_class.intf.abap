INTERFACE if_xco_cp_tr_entry_class PUBLIC.
  METHODS:
    on
      IMPORTING
        io_source         TYPE REF TO if_xco_tr_entry_source
      RETURNING
        VALUE(ro_entries) TYPE REF TO if_xco_cp_tr_entries.
ENDINTERFACE.