INTERFACE if_bcfg_cd_cust_object_service
  PUBLIC.
  METHODS is_editable
    RETURNING
      VALUE(rv_is_editable) TYPE abap_bool.
  METHODS get_reason_for_ui_not_editable
    RETURNING
      VALUE(ro_reason_for_ui_not_editable) TYPE REF TO if_t100_message.
ENDINTERFACE.