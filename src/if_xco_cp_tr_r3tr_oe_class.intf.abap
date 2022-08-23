INTERFACE if_xco_cp_tr_r3tr_oe_class PUBLIC.
  INTERFACES:
    if_xco_cp_tr_oe_class.

  METHODS:
    on
      IMPORTING
        io_source                TYPE REF TO if_xco_tr_entry_source
      RETURNING
        VALUE(ro_object_entries) TYPE REF TO if_xco_cp_tr_r3tr_object_entrs.
ENDINTERFACE.