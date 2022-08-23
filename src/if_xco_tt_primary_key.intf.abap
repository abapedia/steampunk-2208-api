INTERFACE if_xco_tt_primary_key PUBLIC.
  INTERFACES:
    if_xco_abap_token.

  DATA:
    key_definition TYPE REF TO cl_xco_tt_key_definition READ-ONLY,
    key_category   TYPE REF TO cl_xco_tt_key_category READ-ONLY,

    key_components TYPE sxco_t_tt_key_components READ-ONLY.
ENDINTERFACE.