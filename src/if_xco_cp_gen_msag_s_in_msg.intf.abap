INTERFACE if_xco_cp_gen_msag_s_in_msg PUBLIC.
  DATA:
    number TYPE if_xco_cp_gen_msag_s_fo_msg=>tv_number READ-ONLY.

  METHODS:
    set_short_text
      IMPORTING
        iv_short_text TYPE if_xco_cp_gen_msag_s_fo_msg=>tv_short_text
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_cp_gen_msag_s_in_msg.
ENDINTERFACE.