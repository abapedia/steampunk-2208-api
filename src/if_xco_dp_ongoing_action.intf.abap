INTERFACE if_xco_dp_ongoing_action PUBLIC.
  INTERFACES:
    if_xco_news.

  DATA:
    succeeded TYPE REF TO cl_xco_boolean READ-ONLY.

  METHODS:
    descend
      IMPORTING
        io_action TYPE REF TO if_xco_dp_action,
    set_succeeded
      IMPORTING
        iv_succeeded TYPE abap_bool,
    add_news
      IMPORTING
        io_news TYPE REF TO if_xco_news.
ENDINTERFACE.