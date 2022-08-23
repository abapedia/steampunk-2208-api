INTERFACE if_xco_gen_doma_s_fo_outpt_chr PUBLIC.
  TYPES:
    tv_output_length      TYPE n LENGTH 6,
    tv_conversion_routine TYPE c LENGTH 5.

  METHODS:
    set_output_length
      IMPORTING
        iv_output_length TYPE tv_output_length
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_doma_s_fo_outpt_chr,
    set_conversion_routine
      IMPORTING
        iv_conversion_routine TYPE tv_conversion_routine
      RETURNING
        VALUE(ro_me)          TYPE REF TO if_xco_gen_doma_s_fo_outpt_chr,
    set_case_sensitive
      IMPORTING
        iv_case_sensitive TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_gen_doma_s_fo_outpt_chr,
    set_sign
      IMPORTING
        iv_sign      TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_doma_s_fo_outpt_chr,
    set_am_pm_format
      IMPORTING
        iv_am_pm_format TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_gen_doma_s_fo_outpt_chr,
    set_output_style
      IMPORTING
        io_output_style TYPE REF TO cl_xco_domain_output_style
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_gen_doma_s_fo_outpt_chr.
ENDINTERFACE.