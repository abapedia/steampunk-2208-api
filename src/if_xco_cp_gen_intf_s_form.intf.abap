INTERFACE if_xco_cp_gen_intf_s_form PUBLIC.
  TYPES:
    tv_short_description TYPE sxco_ao_short_description.

  DATA:
    own TYPE REF TO if_xco_gen_ao_s_fo_product READ-ONLY.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_intf_s_form,

    set_interfaces
      IMPORTING
        it_interfaces TYPE sxco_t_ao_object_names
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_cp_gen_intf_s_form,

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
        iv_name                TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_class_method) TYPE REF TO if_xco_gen_intf_s_fo_c_method,

    remove_class_method
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    get_class_method
      IMPORTING
        iv_name                TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_class_method) TYPE REF TO if_xco_gen_intf_s_fo_c_method,

    add_method
      IMPORTING
        iv_name          TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_method) TYPE REF TO if_xco_gen_intf_s_fo_c_method,

    remove_method
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    get_method
      IMPORTING
        iv_name          TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_method) TYPE REF TO if_xco_gen_intf_s_fo_c_method.
ENDINTERFACE.