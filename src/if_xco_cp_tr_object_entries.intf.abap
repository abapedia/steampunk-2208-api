INTERFACE if_xco_cp_tr_object_entries PUBLIC.
  INTERFACES:
    if_xco_cp_tr_entries.

  METHODS:
    get
      RETURNING
        VALUE(rt_object_entries) TYPE sxco_t_cp_tr_object_entries.
ENDINTERFACE.