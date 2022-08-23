INTERFACE if_xco_gen_ao_s_up_s_p_chngng PUBLIC.
  INTERFACES:
    if_xco_gen_ao_s_up_subcompnt.

  ALIASES:
    name FOR if_xco_gen_ao_s_up_subcompnt~name.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_ao_s_up_s_p_chngng,

    set_pass_by_reference
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_up_s_p_chngng,

    set_pass_by_value
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_up_s_p_chngng,

    set_type
      IMPORTING
        io_type      TYPE REF TO if_xco_gen_ao_type_p_changing
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_up_s_p_chngng,

    set_optional
      IMPORTING
        iv_optional  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_up_s_p_chngng,

    set_default_value
      IMPORTING
        iv_default_value TYPE string
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_ao_s_up_s_p_chngng.
ENDINTERFACE.