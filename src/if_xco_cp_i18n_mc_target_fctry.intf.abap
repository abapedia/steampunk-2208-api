INTERFACE if_xco_cp_i18n_mc_target_fctry PUBLIC.
  METHODS:
    message
      IMPORTING
        iv_message_class_name TYPE sxco_mc_object_name
        iv_message_number     TYPE if_xco_mc_message=>tv_number
      RETURNING
        VALUE(ro_message)     TYPE REF TO if_xco_i18n_mc_target_message.
ENDINTERFACE.