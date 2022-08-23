INTERFACE if_xco_cp_bal_log_messages PUBLIC.
  INTERFACES:
    if_xco_news,
    if_xco_text.

  METHODS:
    get
      RETURNING
        VALUE(rt_messages) TYPE sxco_t_cp_bal_log_messages.
ENDINTERFACE.