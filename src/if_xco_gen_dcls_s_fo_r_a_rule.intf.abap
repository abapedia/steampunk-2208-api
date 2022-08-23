INTERFACE if_xco_gen_dcls_s_fo_r_a_rule PUBLIC.
  METHODS:
    set_combination_mode_or
      IMPORTING
        iv_combination_mode_or TYPE abap_bool
      RETURNING
        VALUE(ro_me)           TYPE REF TO if_xco_gen_dcls_s_fo_r_a_rule,

    set_combination_mode_and
      IMPORTING
        iv_combination_mode_and TYPE abap_bool
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_gen_dcls_s_fo_r_a_rule,

    set_redefinition
      IMPORTING
        iv_redefinition TYPE abap_bool
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_gen_dcls_s_fo_r_a_rule,

    set_where
      IMPORTING
        io_where     TYPE REF TO if_xco_dcl_expr_condition
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_dcls_s_fo_r_a_rule.
ENDINTERFACE.