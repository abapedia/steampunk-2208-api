INTERFACE if_xco_cp_bal_logs_factory PUBLIC.
  METHODS:
    where
      IMPORTING
        it_filters     TYPE sxco_t_bal_log_filters
      RETURNING
        VALUE(ro_logs) TYPE REF TO if_xco_cp_bal_logs.
ENDINTERFACE.