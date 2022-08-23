INTERFACE if_xco_dtel_data_type PUBLIC.
  INTERFACES:
    if_xco_printable,

    if_xco_gen_dtel_data_type.

  METHODS:
    is_built_in_type DEFAULT IGNORE
      RETURNING
        VALUE(rv_is_built_in_type) TYPE abap_bool,

    get_built_in_type DEFAULT IGNORE
      RETURNING
        VALUE(ro_built_in_type) TYPE REF TO cl_xco_ad_built_in_type,

    is_domain DEFAULT IGNORE
      RETURNING
        VALUE(rv_is_domain) TYPE abap_bool,

    get_domain DEFAULT IGNORE
      RETURNING
        VALUE(ro_domain) TYPE REF TO if_xco_domain,

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