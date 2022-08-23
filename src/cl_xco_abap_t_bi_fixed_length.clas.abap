CLASS cl_xco_abap_t_bi_fixed_length DEFINITION PUBLIC FINAL
    INHERITING FROM cl_xco_abap_t_built_in CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_gen_ao_type_d_tab_row,
      if_xco_gen_ao_type_p_importing,
      if_xco_gen_ao_type_p_exporting,
      if_xco_gen_ao_type_p_changing,
      if_xco_gen_ao_type_p_returning,

      if_xco_gen_fugr_fm_pt_imprtng,
      if_xco_gen_fugr_fm_pt_exprtng,
      if_xco_gen_fugr_fm_pt_changng.

    METHODS:
      get_type_descriptor REDEFINITION,

      reference
        RETURNING
          VALUE(ro_reference) TYPE REF TO cl_xco_abap_t_r_built_in.

ENDCLASS.

CLASS cl_xco_abap_t_bi_fixed_length IMPLEMENTATION.
ENDCLASS.