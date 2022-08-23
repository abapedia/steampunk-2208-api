INTERFACE if_xco_gen_clas_s_fo_d_section PUBLIC.
  TYPES:
    tv_method_name TYPE c LENGTH 61.

  METHODS:
    add_type
      IMPORTING
        iv_name        TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_gen_ao_s_fo_c_type,

    remove_type
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    get_type
      IMPORTING
        iv_name        TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_gen_ao_s_fo_c_type,

    add_constant
      IMPORTING
        iv_name            TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_constant) TYPE REF TO if_xco_gen_ao_s_fo_c_constant,

    remove_constant
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    get_constant
      IMPORTING
        iv_name            TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_constant) TYPE REF TO if_xco_gen_ao_s_fo_c_constant,

    add_alias
      IMPORTING
        iv_name         TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_alias) TYPE REF TO if_xco_gen_ao_s_fo_c_alias,

    remove_alias
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    get_alias
      IMPORTING
        iv_name         TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_alias) TYPE REF TO if_xco_gen_ao_s_fo_c_alias,

    add_class_data
      IMPORTING
        iv_name              TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_class_data) TYPE REF TO if_xco_gen_ao_s_fo_c_data,

    remove_class_data
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    get_class_data
      IMPORTING
        iv_name              TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_class_data) TYPE REF TO if_xco_gen_ao_s_fo_c_data,

    add_data
      IMPORTING
        iv_name        TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_data) TYPE REF TO if_xco_gen_ao_s_fo_c_data,

    remove_data
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    get_data
      IMPORTING
        iv_name        TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_data) TYPE REF TO if_xco_gen_ao_s_fo_c_data,

    add_class_method
      IMPORTING
        iv_name                TYPE tv_method_name
      RETURNING
        VALUE(ro_class_method) TYPE REF TO if_xco_gen_clas_s_fo_d_c_mthd,

    remove_class_method
      IMPORTING
        iv_name TYPE tv_method_name,

    get_class_method
      IMPORTING
        iv_name                TYPE tv_method_name
      RETURNING
        VALUE(ro_class_method) TYPE REF TO if_xco_gen_clas_s_fo_d_c_mthd,

    add_method
      IMPORTING
        iv_name          TYPE tv_method_name
      RETURNING
        VALUE(ro_method) TYPE REF TO if_xco_gen_clas_s_fo_d_c_mthd,

    remove_method
      IMPORTING
        iv_name TYPE tv_method_name,

    get_method
      IMPORTING
        iv_name          TYPE tv_method_name
      RETURNING
        VALUE(ro_method) TYPE REF TO if_xco_gen_clas_s_fo_d_c_mthd.
ENDINTERFACE.