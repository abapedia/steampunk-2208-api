INTERFACE if_xco_gen_ao_type_d_str_cpnt PUBLIC.
  METHODS:
    get_source
      IMPORTING
        iv_component_name TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_source)  TYPE REF TO cl_xco_gen_ao_bp_type_source.
ENDINTERFACE.