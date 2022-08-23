INTERFACE if_xco_gtt_field_type PUBLIC.
  INTERFACES:
    if_xco_printable,

    if_xco_gen_tabl_field_type_gtt.

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
        VALUE(ro_data_element) TYPE REF TO if_xco_ad_data_element.
ENDINTERFACE.