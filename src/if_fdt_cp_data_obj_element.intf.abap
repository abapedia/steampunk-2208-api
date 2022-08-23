INTERFACE if_fdt_cp_data_obj_element
  PUBLIC.
  INTERFACES:
    if_fdt_cp_admin_data,
    if_fdt_cp_data_object.

  TYPES:
    BEGIN OF ty_element_attributes,
      business_data_type TYPE char1,
      length             TYPE i,
      decimals           TYPE i,
      only_positive      TYPE abap_bool,
      only_uppercase     TYPE abap_bool,
    END OF ty_element_attributes,

    BEGIN OF ty_value_list,
      value       TYPE string,
      description TYPE if_fdt_cp_external_types=>tt_description,
    END OF ty_value_list,
    tt_value_list TYPE TABLE OF ty_value_list WITH KEY value,

    BEGIN OF ty_value_service,
      url         TYPE string,
      key         TYPE string,
      text        TYPE string,
      language    TYPE string,
    END  OF ty_value_service.

  METHODS:
    set_attributes IMPORTING VALUE(is_attributes) TYPE ty_element_attributes,
    get_attributes RETURNING VALUE(rs_attributes) TYPE ty_element_attributes,

    "Value List
    set_value_help IMPORTING VALUE(it_value_list)    TYPE tt_value_list OPTIONAL
                             VALUE(is_value_service) TYPE ty_value_service OPTIONAL,

    get_value_help EXPORTING VALUE(et_value_list) TYPE tt_value_list
                             VALUE(es_value_service) TYPE ty_value_service.

ENDINTERFACE.