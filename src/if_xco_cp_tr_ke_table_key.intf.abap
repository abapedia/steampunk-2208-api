INTERFACE if_xco_cp_tr_ke_table_key PUBLIC.
  METHODS:
    get_components
      RETURNING
        VALUE(rt_components) TYPE sxco_t_cp_tr_ke_tk_components.
ENDINTERFACE.