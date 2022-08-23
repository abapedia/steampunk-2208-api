CLASS cl_xco_abap_t_built_in DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_abap_token FINAL METHODS get_source,

      if_xco_gen_ao_type_declaration FINAL METHODS get_type_source,
      if_xco_gen_ao_type_d_str_cpnt FINAL METHODS get_source,
      if_xco_gen_ao_type_attribute FINAL METHODS get_type_source.

    METHODS:
      get_type_descriptor ABSTRACT
        RETURNING
          VALUE(ro_type_descriptor) TYPE REF TO cl_abap_elemdescr.

  PROTECTED SECTION.
    DATA:
      mv_type_kind TYPE abap_typekind.

    METHODS:
      get_token_value_supplement
        RETURNING
          VALUE(rv_token_value_supplement) TYPE string,

      get_ao_parameter_type_blprnt
        RETURNING
          VALUE(ro_parameter_type_blueprint) TYPE REF TO cl_xco_gen_ao_bp_prmtr_type,

      get_fm_parameter_type_blprnt
        RETURNING
          VALUE(ro_parameter_type_blueprint) TYPE REF TO not_released.

ENDCLASS.

CLASS cl_xco_abap_t_built_in IMPLEMENTATION.
ENDCLASS.