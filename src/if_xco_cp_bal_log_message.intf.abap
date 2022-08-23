INTERFACE if_xco_cp_bal_log_message PUBLIC.
  INTERFACES:
    if_xco_news,
    if_xco_text.

  DATA:
    value TYPE if_xco_cp_bal_persistence=>ts_message_entry READ-ONLY.
ENDINTERFACE.