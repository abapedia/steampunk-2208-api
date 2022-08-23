INTERFACE if_xco_cp_tr_r3tr_tabu_obj_ent PUBLIC.
  INTERFACES:
    if_xco_cp_tr_r3tr_object_entry.

  METHODS:
    get_key_entry
      RETURNING
        VALUE(ro_key_entry) TYPE REF TO if_xco_cp_tr_key_entry.
ENDINTERFACE.