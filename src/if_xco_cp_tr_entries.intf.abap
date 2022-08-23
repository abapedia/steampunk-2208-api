INTERFACE if_xco_cp_tr_entries PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(rt_entries) TYPE sxco_t_cp_tr_entries.
ENDINTERFACE.