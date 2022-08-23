INTERFACE if_xco_dp_check_result PUBLIC.
  INTERFACES:
    if_xco_news.

  DATA:
    passed   TYPE abap_bool READ-ONLY,
    messages TYPE sxco_t_messages READ-ONLY.
ENDINTERFACE.