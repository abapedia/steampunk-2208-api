INTERFACE if_xco_cp_gen_msag_s_form PUBLIC.
  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ar_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_msag_s_form,

    add_message
      IMPORTING
        iv_number         TYPE if_xco_cp_gen_msag_s_fo_msg=>tv_number
      RETURNING
        VALUE(ro_message) TYPE REF TO if_xco_cp_gen_msag_s_fo_msg,

    get_message
      IMPORTING
        iv_number         TYPE if_xco_cp_gen_msag_s_fo_msg=>tv_number
      RETURNING
        VALUE(ro_message) TYPE REF TO if_xco_cp_gen_msag_s_fo_msg,

    remove_message
      IMPORTING
        iv_number TYPE if_xco_cp_gen_msag_s_fo_msg=>tv_number.
ENDINTERFACE.