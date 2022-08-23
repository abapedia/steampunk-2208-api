INTERFACE if_xco_cp_gen_msag_s_update PUBLIC.
  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ar_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_msag_s_update,

    message
      IMPORTING
        iv_number         TYPE if_xco_cp_gen_msag_s_fo_msg=>tv_number
      RETURNING
        VALUE(ro_message) TYPE REF TO if_xco_cp_gen_msag_s_up_msg.
ENDINTERFACE.