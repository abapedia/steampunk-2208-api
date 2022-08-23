INTERFACE if_xco_cp_i18n_dm_target_fctry PUBLIC.
  METHODS:
    fixed_value
      IMPORTING
        iv_domain_name        TYPE sxco_ad_object_name
        iv_lower_limit        TYPE if_xco_domain_fixed_value=>tv_lower_limit
      RETURNING
        VALUE(ro_fixed_value) TYPE REF TO if_xco_i18n_dm_target_fixed_va.
ENDINTERFACE.