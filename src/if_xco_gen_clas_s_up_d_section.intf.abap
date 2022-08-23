INTERFACE if_xco_gen_clas_s_up_d_section PUBLIC.
  METHODS:
    add_constant
      IMPORTING
        iv_name            TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_constant) TYPE REF TO if_xco_gen_ao_s_up_c_constant,

    get_constant
      IMPORTING
        iv_name            TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_constant) TYPE REF TO if_xco_gen_ao_s_up_c_constant,

    remove_constant
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    add_alias
      IMPORTING
        iv_name         TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_alias) TYPE REF TO if_xco_gen_ao_s_up_c_alias,

    get_alias
      IMPORTING
        iv_name         TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_alias) TYPE REF TO if_xco_gen_ao_s_up_c_alias,

    remove_alias
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    add_class_data
      IMPORTING
        iv_name              TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_class_data) TYPE REF TO if_xco_gen_ao_s_up_c_data,

    get_class_data
      IMPORTING
        iv_name              TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_class_data) TYPE REF TO if_xco_gen_ao_s_up_c_data,

    remove_class_data
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    add_data
      IMPORTING
        iv_name        TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_data) TYPE REF TO if_xco_gen_ao_s_up_c_data,

    get_data
      IMPORTING
        iv_name        TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_data) TYPE REF TO if_xco_gen_ao_s_up_c_data,

    remove_data
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    add_class_method
      IMPORTING
        iv_name                TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_class_method) TYPE REF TO if_xco_gen_clas_s_up_d_sc_c_md,

    get_class_method
      IMPORTING
        iv_name                TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_class_method) TYPE REF TO if_xco_gen_clas_s_up_d_sc_c_md,

    remove_class_method
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    add_method
      IMPORTING
        iv_name          TYPE sxco_ao_full_component_name
      RETURNING
        VALUE(ro_method) TYPE REF TO if_xco_gen_clas_s_up_d_sc_c_md,

    get_method
      IMPORTING
        iv_name          TYPE sxco_ao_full_component_name
      RETURNING
        VALUE(ro_method) TYPE REF TO if_xco_gen_clas_s_up_d_sc_c_md,

    remove_method
      IMPORTING
        iv_name TYPE sxco_ao_full_component_name.
ENDINTERFACE.