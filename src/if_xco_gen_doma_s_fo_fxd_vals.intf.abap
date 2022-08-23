INTERFACE if_xco_gen_doma_s_fo_fxd_vals PUBLIC.
  TYPES:
    tv_value_table TYPE c LENGTH 30.

  METHODS:
    set_value_table
      IMPORTING
        iv_value_table TYPE tv_value_table
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_doma_s_fo_fxd_vals,
    add_fixed_value
      IMPORTING
        iv_lower_limit        TYPE if_xco_gen_doma_s_fo_fxd_value=>tv_lower_limit
      RETURNING
        VALUE(ro_fixed_value) TYPE REF TO if_xco_gen_doma_s_fo_fxd_value,
    get_fixed_value
      IMPORTING
        iv_lower_limit        TYPE if_xco_gen_doma_s_fo_fxd_value=>tv_lower_limit
      RETURNING
        VALUE(ro_fixed_value) TYPE REF TO if_xco_gen_doma_s_fo_fxd_value,
    remove_fixed_value
      IMPORTING
        iv_lower_limit TYPE if_xco_gen_doma_s_fo_fxd_value=>tv_lower_limit.
ENDINTERFACE.