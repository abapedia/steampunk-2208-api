CLASS cl_xco_ad_built_in_type DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_printable,

      if_xco_domain_format,
      if_xco_dtel_data_type,
      if_xco_str_component_type,
      if_xco_aps_component_type,
      if_xco_dbt_field_type,
      if_xco_gtt_field_type,
      if_xco_ttyp_row_type,
      if_xco_ddl_expr_cast_dtype,
      if_xco_gen_ddls_param_dtype,
      if_xco_gen_ddls_field_type.

    TYPES:
      tv_type     TYPE c LENGTH 4,
      tv_length   TYPE n LENGTH 6,
      tv_decimals TYPE n LENGTH 6.

    DATA:
      type      TYPE tv_type READ-ONLY,
      length    TYPE tv_length READ-ONLY,
      decimals  TYPE tv_decimals READ-ONLY,
      abap_type TYPE REF TO cl_xco_abap_t_built_in READ-ONLY.

ENDCLASS.

CLASS cl_xco_ad_built_in_type IMPLEMENTATION.
ENDCLASS.