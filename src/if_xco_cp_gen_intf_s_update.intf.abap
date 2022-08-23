INTERFACE if_xco_cp_gen_intf_s_update PUBLIC.
  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_intf_s_update,

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
        VALUE(ro_class_method) TYPE REF TO if_xco_gen_intf_s_up_c_method,

    get_class_method
      IMPORTING
        iv_name                TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_class_method) TYPE REF TO if_xco_gen_intf_s_up_c_method,

    remove_class_method
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    add_method
      IMPORTING
        iv_name          TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_method) TYPE REF TO if_xco_gen_intf_s_up_c_method,

    get_method
      IMPORTING
        iv_name          TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_method) TYPE REF TO if_xco_gen_intf_s_up_c_method,

    remove_method
      IMPORTING
        iv_name TYPE sxco_ao_component_name.
ENDINTERFACE.