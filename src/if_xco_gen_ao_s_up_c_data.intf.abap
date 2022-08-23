INTERFACE if_xco_gen_ao_s_up_c_data PUBLIC.
  INTERFACES:
    if_xco_gen_ao_s_up_component.

  ALIASES:
    name FOR if_xco_gen_ao_s_up_component~name.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_ao_s_up_c_data,

    set_type
      IMPORTING
        io_type      TYPE REF TO if_xco_gen_ao_type_attribute
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_up_c_data,

    set_read_only
      IMPORTING
        iv_read_only TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_up_c_data.
ENDINTERFACE.