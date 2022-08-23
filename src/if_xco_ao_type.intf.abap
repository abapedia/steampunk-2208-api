INTERFACE if_xco_ao_type PUBLIC.
  INTERFACES:
    if_xco_gen_ao_type_declaration,
    if_xco_gen_ao_type_d_str_cpnt,
    if_xco_gen_ao_type_d_tab_row,
    if_xco_gen_ao_type_attribute,
    if_xco_gen_ao_type_p_importing,
    if_xco_gen_ao_type_p_exporting,
    if_xco_gen_ao_type_p_changing,
    if_xco_gen_ao_type_p_returning.

  DATA:
    name TYPE sxco_ao_component_name READ-ONLY.

  METHODS:
    reference
      RETURNING
        VALUE(ro_reference) TYPE REF TO if_xco_ao_type_reference.
ENDINTERFACE.