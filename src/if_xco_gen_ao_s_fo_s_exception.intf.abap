INTERFACE if_xco_gen_ao_s_fo_s_exception PUBLIC.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_ao_s_fo_s_exception,

    set_resuamble
      IMPORTING
        iv_resumable TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_fo_s_exception.
ENDINTERFACE.