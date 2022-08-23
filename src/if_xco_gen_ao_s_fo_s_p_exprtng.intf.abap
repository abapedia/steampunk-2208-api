INTERFACE if_xco_gen_ao_s_fo_s_p_exprtng PUBLIC.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_ao_s_fo_s_p_exprtng,
    set_pass_by_reference
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_fo_s_p_exprtng,
    set_pass_by_value
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_fo_s_p_exprtng,
    set_type
      IMPORTING
        io_type      TYPE REF TO if_xco_gen_ao_type_p_exporting
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_fo_s_p_exprtng.
ENDINTERFACE.