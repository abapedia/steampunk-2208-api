INTERFACE if_xco_gen_fugr_s_fo_fm_excptn PUBLIC.
  TYPES:
    tv_short_text TYPE c LENGTH 79.

  DATA:
    name TYPE sxco_fm_exception_name READ-ONLY.

  METHODS:
    set_short_text
      IMPORTING
        iv_short_text TYPE tv_short_text
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_fugr_s_fo_fm_excptn,

    set_resumable
      IMPORTING
        iv_resumable TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_fugr_s_fo_fm_excptn.
ENDINTERFACE.