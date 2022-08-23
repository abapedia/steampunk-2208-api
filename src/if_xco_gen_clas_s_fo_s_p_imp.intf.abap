INTERFACE if_xco_gen_clas_s_fo_s_p_imp PUBLIC.
  INTERFACES:
    if_xco_gen_ao_s_fo_s_p_imprtng.

  ALIASES:

    set_short_description FOR if_xco_gen_ao_s_fo_s_p_imprtng~set_short_description,
    set_pass_by_reference FOR if_xco_gen_ao_s_fo_s_p_imprtng~set_pass_by_reference,
    set_pass_by_value FOR if_xco_gen_ao_s_fo_s_p_imprtng~set_pass_by_value,
    set_type FOR if_xco_gen_ao_s_fo_s_p_imprtng~set_type,
    set_optional FOR if_xco_gen_ao_s_fo_s_p_imprtng~set_optional,
    set_preferred FOR if_xco_gen_ao_s_fo_s_p_imprtng~set_preferred,
    set_default_value FOR if_xco_gen_ao_s_fo_s_p_imprtng~set_default_value.

  DATA:
    behavior_implementation TYPE REF TO if_xco_gen_clas_s_fo_s_p_i_bi READ-ONLY.
ENDINTERFACE.