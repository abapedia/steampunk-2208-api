INTERFACE if_xco_cp_tr_key_entry PUBLIC.
  INTERFACES:
    if_xco_cp_tr_entry.

  METHODS:
    get_object_entry
      RETURNING
        VALUE(ro_object_key) TYPE REF TO if_xco_cp_tr_object_entry,

    get_table_key
      RETURNING
        VALUE(ro_table_key) TYPE REF TO if_xco_cp_tr_ke_table_key.
ENDINTERFACE.