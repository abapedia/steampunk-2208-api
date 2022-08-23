INTERFACE if_xco_cp_bal_logs PUBLIC.
  METHODS:
    get_handles
      RETURNING
        VALUE(rt_log_handles) TYPE sxco_t_bal_log_handles,

    get
      IMPORTING
        io_profile     TYPE REF TO if_xco_cp_bal_profile DEFAULT xco_cp_bal=>profile->standard
      RETURNING
        VALUE(rt_logs) TYPE sxco_t_cp_bal_logs.
ENDINTERFACE.