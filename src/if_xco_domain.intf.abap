INTERFACE if_xco_domain
  PUBLIC.

  INTERFACES if_xco_ad_object.
  INTERFACES if_xco_ar_object.
  INTERFACES if_xco_cts_changeable.
  INTERFACES if_xco_dtel_data_type.
  INTERFACES if_xco_gen_dtel_data_type.
  INTERFACES if_xco_printable.

  ALIASES name
    FOR if_xco_ad_object~name.
  ALIASES check_syntax
    FOR if_xco_ad_object~check_syntax.
  ALIASES get_state
    FOR if_xco_ad_object~get_state.

  DATA fixed_values TYPE REF TO if_xco_domain_fixed_values_fct READ-ONLY.

  METHODS exists
    IMPORTING
      !io_read_state TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      !io_origin TYPE REF TO cl_xco_domain_origin OPTIONAL
    RETURNING
      VALUE(rv_exists) TYPE abap_bool.
  METHODS set_api_state
    IMPORTING
      !io_change_scenario TYPE REF TO if_xco_cts_change_scenario
      !io_api_state TYPE REF TO cl_xco_ars_api_state.
  METHODS get_api_state
    RETURNING
      VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state.
  METHODS content
    IMPORTING
      !io_read_state TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
    RETURNING
      VALUE(ro_content) TYPE REF TO if_xco_domain_content.
  METHODS fixed_value
    IMPORTING
      !iv_lower_limit TYPE if_xco_domain_fixed_value=>tv_lower_limit
    RETURNING
      VALUE(ro_fixed_value) TYPE REF TO if_xco_domain_fixed_value.
ENDINTERFACE.