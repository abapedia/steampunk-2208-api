INTERFACE if_xco_cp_gen_msag_s_modify PUBLIC.
  METHODS:
    add_message
      IMPORTING
        iv_number         TYPE if_xco_cp_gen_msag_s_fo_msg=>tv_number
      RETURNING
        VALUE(ro_message) TYPE REF TO if_xco_cp_gen_msag_s_mo_msg,

    get_message
      IMPORTING
        iv_number         TYPE if_xco_cp_gen_msag_s_fo_msg=>tv_number
      RETURNING
        VALUE(ro_message) TYPE REF TO if_xco_cp_gen_msag_s_mo_msg,

    remove_message
      IMPORTING
        iv_number TYPE if_xco_cp_gen_msag_s_fo_msg=>tv_number.
ENDINTERFACE.