INTERFACE if_xco_gen_ao_s_fo_s_p_imprtng PUBLIC.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_ao_s_fo_s_p_imprtng,

    set_pass_by_reference
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_fo_s_p_imprtng,

    set_pass_by_value
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_fo_s_p_imprtng,

    set_type
      IMPORTING
        io_type      TYPE REF TO if_xco_gen_ao_type_p_importing
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_fo_s_p_imprtng,

    set_optional
      IMPORTING
        iv_optional  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_fo_s_p_imprtng,

    set_preferred
      IMPORTING
        iv_preferred TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_fo_s_p_imprtng,

    set_default_value
      IMPORTING
        iv_default_value TYPE string
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_ao_s_fo_s_p_imprtng.
ENDINTERFACE.