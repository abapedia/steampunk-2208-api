INTERFACE if_xco_gen_doma_s_fo_fxd_value PUBLIC.
  TYPES:
    tv_lower_limit TYPE c LENGTH 10,
    tv_upper_limit TYPE c LENGTH 10,
    tv_description TYPE c LENGTH 60.

  DATA:
    lower_limit TYPE tv_lower_limit READ-ONLY.

  METHODS:
    set_upper_limit
      IMPORTING
        iv_upper_limit TYPE tv_upper_limit
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_doma_s_fo_fxd_value,
    set_description
      IMPORTING
        iv_description TYPE tv_description
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_doma_s_fo_fxd_value.
ENDINTERFACE.