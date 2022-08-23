INTERFACE if_xco_ttyp_row_type PUBLIC.
  INTERFACES:
    if_xco_printable,

    if_xco_gen_ttyp_row_type.

  METHODS:
    is_built_in_type DEFAULT IGNORE
      RETURNING
        VALUE(rv_is_built_in_type) TYPE abap_bool,

    get_built_in_type DEFAULT IGNORE
      RETURNING
        VALUE(ro_built_in_type) TYPE REF TO cl_xco_ad_built_in_type,

    is_data_element DEFAULT IGNORE
      RETURNING
        VALUE(rv_is_data_element) TYPE abap_bool,

    get_data_element DEFAULT IGNORE
      RETURNING
        VALUE(ro_data_element) TYPE REF TO if_xco_ad_data_element,

    is_structure DEFAULT IGNORE
      RETURNING
        VALUE(rv_is_structure) TYPE abap_bool,

    get_structure DEFAULT IGNORE
      RETURNING
        VALUE(ro_structure) TYPE REF TO if_xco_ad_structure,

    is_table_type DEFAULT IGNORE
      RETURNING
        VALUE(rv_is_table_type) TYPE abap_bool,

    get_table_type DEFAULT IGNORE
      RETURNING
        VALUE(ro_table_type) TYPE REF TO if_xco_ad_table_type,

    is_built_in_type_reference DEFAULT IGNORE
      RETURNING
        VALUE(rv_is_built_in_type_reference) TYPE abap_bool,

    get_built_in_type_reference DEFAULT IGNORE
      RETURNING
        VALUE(ro_built_in_type_reference) TYPE REF TO if_xco_ad_built_in_type_rfrnc,

    is_data_type_reference DEFAULT IGNORE
      RETURNING
        VALUE(rv_is_data_type_reference) TYPE abap_bool,

    get_data_type_reference DEFAULT IGNORE
      RETURNING
        VALUE(ro_data_type_reference) TYPE REF TO if_xco_ad_data_type_reference,

    is_interface DEFAULT IGNORE
      RETURNING
        VALUE(rv_is_interface) TYPE abap_bool,

    get_interface DEFAULT IGNORE
      RETURNING
        VALUE(ro_interface) TYPE REF TO if_xco_ao_interface,

    is_class DEFAULT IGNORE
      RETURNING
        VALUE(rv_is_class) TYPE abap_bool,

    get_class DEFAULT IGNORE
      RETURNING
        VALUE(ro_class) TYPE REF TO if_xco_ao_class.
ENDINTERFACE.