INTERFACE if_xco_dcl_cb_pfcg PUBLIC.
  INTERFACES:
    if_xco_dcl_condition_builder.

  ALIASES:
    get_condition FOR if_xco_dcl_condition_builder~get_condition.

  DATA:
    left_side  TYPE REF TO if_xco_dcl_cb_pfcg_left_side READ-ONLY,
    operator   TYPE REF TO if_xco_dcl_cb_pfcg_operator READ-ONLY,
    right_side TYPE REF TO if_xco_dcl_cb_pfcg_right_side READ-ONLY.
ENDINTERFACE.