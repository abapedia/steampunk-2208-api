INTERFACE if_xco_cp_bal_log_exceptions PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(rt_exceptions) TYPE sxco_t_cp_bal_log_exceptions.
ENDINTERFACE.