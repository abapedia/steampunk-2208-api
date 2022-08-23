INTERFACE if_xco_gen_ao_s_fo_s_p_retrng PUBLIC.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_ao_s_fo_s_p_retrng,

    set_type
      IMPORTING
        io_type      TYPE REF TO if_xco_gen_ao_type_p_returning
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_fo_s_p_retrng.
ENDINTERFACE.