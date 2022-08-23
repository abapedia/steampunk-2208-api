INTERFACE if_xco_cp_regex_engine_factory PUBLIC.
  DATA:
    default TYPE REF TO if_xco_regex_engine READ-ONLY.

  METHODS:
    posix
      IMPORTING
        iv_ignore_case   TYPE abap_bool DEFAULT abap_false
        iv_simple_regex  TYPE abap_bool DEFAULT abap_false
        iv_no_submatches TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(ro_posix)  TYPE REF TO if_xco_regex_engine,

    pcre
      IMPORTING
        iv_ignore_case      TYPE abap_bool DEFAULT abap_false
        iv_enable_jit       TYPE abap_bool DEFAULT abap_true
        iv_enable_multiline TYPE abap_bool DEFAULT abap_false
        iv_no_submatches    TYPE abap_bool DEFAULT abap_false
        iv_newline_mode     TYPE cl_abap_regex=>newline_mode DEFAULT cl_abap_regex=>c_newline_mode-crlfany
        iv_unicode_handling TYPE cl_abap_regex=>unicode_handling DEFAULT cl_abap_regex=>c_unicode_handling-strict
      RETURNING
        VALUE(ro_pcre)      TYPE REF TO if_xco_regex_engine,

    xpath2
      IMPORTING
        iv_ignore_case      TYPE abap_bool DEFAULT abap_false
        iv_enable_jit       TYPE abap_bool DEFAULT abap_true
        iv_enable_multiline TYPE abap_bool DEFAULT abap_false
        iv_no_submatches    TYPE abap_bool DEFAULT abap_false
        iv_newline_mode     TYPE cl_abap_regex=>newline_mode DEFAULT cl_abap_regex=>c_newline_mode-crlfany
        iv_unicode_handling TYPE cl_abap_regex=>unicode_handling DEFAULT cl_abap_regex=>c_unicode_handling-strict
        iv_relaxed_escapes  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_xpath2)    TYPE REF TO if_xco_regex_engine,

    xsd
      IMPORTING
        iv_ignore_case      TYPE abap_bool DEFAULT abap_false
        iv_enable_jit       TYPE abap_bool DEFAULT abap_true
        iv_enable_multiline TYPE abap_bool DEFAULT abap_false
        iv_no_submatches    TYPE abap_bool DEFAULT abap_false
        iv_newline_mode     TYPE cl_abap_regex=>newline_mode DEFAULT cl_abap_regex=>c_newline_mode-crlfany
        iv_unicode_handling TYPE cl_abap_regex=>unicode_handling DEFAULT cl_abap_regex=>c_unicode_handling-strict
        iv_relaxed_escapes  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_xsd)       TYPE REF TO if_xco_regex_engine.
ENDINTERFACE.