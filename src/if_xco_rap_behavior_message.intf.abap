INTERFACE if_xco_rap_behavior_message PUBLIC.
  INTERFACES:
    if_xco_news.

  DATA:
    object TYPE REF TO if_abap_behv_message READ-ONLY.

  METHODS:
    get_message
      RETURNING
        VALUE(ro_message) TYPE REF TO if_xco_message.
ENDINTERFACE.