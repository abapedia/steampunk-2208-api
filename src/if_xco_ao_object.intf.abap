INTERFACE if_xco_ao_object PUBLIC.
  INTERFACES:
    if_xco_printable,

    if_xco_ar_object,

    if_xco_dtel_data_type,
    if_xco_str_component_type,
    if_xco_aps_component_type,
    if_xco_ttyp_row_type,

    if_xco_gen_ao_type_attribute,
    if_xco_gen_ao_type_d_str_cpnt,
    if_xco_gen_ao_type_d_tab_row,
    if_xco_gen_ao_type_declaration,
    if_xco_gen_ao_type_p_importing,
    if_xco_gen_ao_type_p_exporting,
    if_xco_gen_ao_type_p_changing,
    if_xco_gen_ao_type_p_returning,

    if_xco_gen_fugr_fm_pt_imprtng,
    if_xco_gen_fugr_fm_pt_exprtng,
    if_xco_gen_fugr_fm_pt_changng.

  DATA:
    name TYPE sxco_ao_object_name READ-ONLY.

  METHODS:
    check_syntax
      RETURNING
        VALUE(ro_check_result) TYPE REF TO if_xco_dp_check_result,

    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,

    type
      IMPORTING
        iv_name        TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_ao_type.
ENDINTERFACE.