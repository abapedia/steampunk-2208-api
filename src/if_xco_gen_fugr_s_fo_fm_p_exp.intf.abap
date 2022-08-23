INTERFACE if_xco_gen_fugr_s_fo_fm_p_exp PUBLIC.
  TYPES:
    tv_short_text TYPE c LENGTH 79.

  DATA:
    name TYPE sxco_fm_parameter_name READ-ONLY.

  METHODS:
    set_short_text
      IMPORTING
        iv_short_text TYPE tv_short_text
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_exp,

    set_pass_by_value
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_exp,

    set_pass_by_reference
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_exp,

    set_type
      IMPORTING
        io_type      TYPE REF TO if_xco_gen_fugr_fm_pt_exprtng
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_fugr_s_fo_fm_p_exp.
ENDINTERFACE.