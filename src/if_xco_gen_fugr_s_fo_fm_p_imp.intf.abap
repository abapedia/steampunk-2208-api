INTERFACE if_xco_gen_fugr_s_fo_fm_p_imp PUBLIC.
  TYPES:
    tv_short_text    TYPE c LENGTH 79,
    tv_default_value TYPE c LENGTH 21.

  DATA:
    name TYPE sxco_fm_parameter_name READ-ONLY.

  METHODS:
    set_short_text
      IMPORTING
        iv_short_text TYPE tv_short_text
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_imp,

    set_pass_by_value
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_imp,

    set_pass_by_reference
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_imp,

    set_type
      IMPORTING
        io_type      TYPE REF TO if_xco_gen_fugr_fm_pt_imprtng
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_imp,

    set_optional
      IMPORTING
        iv_optional  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_imp,

    set_default_value
      IMPORTING
        iv_default_value TYPE tv_default_value
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_imp.
ENDINTERFACE.