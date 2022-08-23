INTERFACE if_xco_clas_component_factory PUBLIC.
  METHODS:
    type
      IMPORTING
        iv_name        TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_ao_c_type,

    constant
      IMPORTING
        iv_name            TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_constant) TYPE REF TO if_xco_ao_c_constant,

    alias
      IMPORTING
        iv_name         TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_alias) TYPE REF TO if_xco_ao_c_alias,

    class_data
      IMPORTING
        iv_name              TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_class_data) TYPE REF TO if_xco_ao_c_class_data,
    data
      IMPORTING
        iv_name        TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_data) TYPE REF TO if_xco_ao_c_data,

    class_method
      IMPORTING
        iv_name                TYPE sxco_clas_method_name
      RETURNING
        VALUE(ro_class_method) TYPE REF TO if_xco_clas_c_method,

    method
      IMPORTING
        iv_name          TYPE sxco_clas_method_name
      RETURNING
        VALUE(ro_method) TYPE REF TO if_xco_clas_c_method.
ENDINTERFACE.