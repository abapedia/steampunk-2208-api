INTERFACE if_xco_cp_gen_msag_s_delete PUBLIC.
  METHODS:
    add_message
      IMPORTING
        iv_number TYPE if_xco_cp_gen_msag_s_fo_msg=>tv_number,

    remove_message
      IMPORTING
        iv_number TYPE if_xco_cp_gen_msag_s_fo_msg=>tv_number.
ENDINTERFACE.