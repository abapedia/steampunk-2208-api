INTERFACE if_xco_ad_data_type PUBLIC.
  INTERFACES:
    if_xco_printable,

    if_xco_ad_object,

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

  ALIASES:
    name FOR if_xco_ad_object~name.
ENDINTERFACE.