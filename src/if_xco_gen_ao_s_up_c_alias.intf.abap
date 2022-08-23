INTERFACE if_xco_gen_ao_s_up_c_alias PUBLIC.
  INTERFACES:
    if_xco_gen_ao_s_up_component.

  ALIASES:
    name FOR if_xco_gen_ao_s_up_component~name.

  METHODS:
    set_component
      IMPORTING
        iv_component TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_up_c_alias,
    set_interface
      IMPORTING
        iv_interface TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ao_s_up_c_alias.
ENDINTERFACE.