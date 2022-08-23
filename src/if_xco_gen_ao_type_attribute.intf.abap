INTERFACE if_xco_gen_ao_type_attribute PUBLIC.
  METHODS:
    get_type_source
      IMPORTING
        iv_component_name     TYPE sxco_ao_component_name
        iv_value              TYPE string OPTIONAL
        iv_read_only          TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(ro_type_source) TYPE REF TO cl_xco_gen_ao_bp_type_source.
ENDINTERFACE.