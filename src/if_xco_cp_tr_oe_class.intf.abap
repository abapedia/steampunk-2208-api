INTERFACE if_xco_cp_tr_oe_class PUBLIC.
  INTERFACES:
    if_xco_cp_tr_entry_class.

  METHODS:
    on
      IMPORTING
        io_source                TYPE REF TO if_xco_tr_entry_source
      RETURNING
        VALUE(ro_object_entries) TYPE REF TO if_xco_cp_tr_object_entries.
ENDINTERFACE.