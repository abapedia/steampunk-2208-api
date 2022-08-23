INTERFACE if_xco_cp_tr_key_entries PUBLIC.
  INTERFACES:
    if_xco_cp_tr_entries.

  METHODS:
    get
      RETURNING
        VALUE(rt_key_entries) TYPE sxco_t_cp_tr_key_entries.
ENDINTERFACE.