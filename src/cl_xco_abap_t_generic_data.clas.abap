CLASS cl_xco_abap_t_generic_data DEFINITION PUBLIC CREATE PROTECTED.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_abap_token FINAL METHODS get_source.

    INTERFACES:
      if_xco_gen_ao_type_p_importing FINAL METHODS get_blueprint,
      if_xco_gen_ao_type_p_exporting FINAL METHODS get_blueprint,
      if_xco_gen_ao_type_p_changing FINAL METHODS get_blueprint,

      if_xco_gen_fugr_fm_pt_imprtng FINAL METHODS get_blueprint,
      if_xco_gen_fugr_fm_pt_exprtng FINAL METHODS get_blueprint,
      if_xco_gen_fugr_fm_pt_changng FINAL METHODS get_blueprint.

  PROTECTED SECTION.
    METHODS:
      constructor
        IMPORTING
          iv_token TYPE string.
ENDCLASS.

CLASS cl_xco_abap_t_generic_data IMPLEMENTATION.
ENDCLASS.