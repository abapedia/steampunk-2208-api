INTERFACE if_xco_cp_gen_msag_s_fo_msg PUBLIC.
  TYPES:
    tv_number     TYPE symsgno,

    tv_short_text TYPE c LENGTH 73.

  DATA:
    number TYPE tv_number READ-ONLY.

  METHODS:
    set_short_text
      IMPORTING
        iv_short_text TYPE tv_short_text
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_cp_gen_msag_s_fo_msg.
ENDINTERFACE.