INTERFACE if_xco_gen_ao_type_declaration PUBLIC.
  METHODS:
    get_type_source
      IMPORTING
        iv_component_name     TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_type_source) TYPE REF TO cl_xco_gen_ao_bp_type_source.
ENDINTERFACE.