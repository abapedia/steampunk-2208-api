CLASS cl_abap_datfm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES ty_country TYPE land1.
    TYPES ty_datext TYPE char10.
    TYPES ty_datfm TYPE c.
    TYPES ty_delimiter TYPE char1.
    TYPES ty_isldate TYPE c LENGTH 8.
    TYPES ty_langu TYPE c.
    TYPES ty_gregdate TYPE c LENGTH 8.

    CLASS-METHODS check_date_format
      IMPORTING
      !im_datfm TYPE ty_datfm
      RETURNING
      VALUE(re_is_valid) TYPE abap_bool.

    CLASS-METHODS conv_date_ext_to_int
      IMPORTING
      !im_datext TYPE csequence
      !im_datfmdes TYPE ty_datfm OPTIONAL
      EXPORTING
      !ex_datint TYPE d
      !ex_datfmused TYPE ty_datfm
      RAISING
      cx_abap_datfm_no_date
      cx_abap_datfm_invalid_date
      cx_abap_datfm_format_unknown
      cx_abap_datfm_ambiguous.
    CLASS-METHODS conv_date_int_to_ext
      IMPORTING
      !im_datint TYPE d
      !im_datfmdes TYPE ty_datfm OPTIONAL
      EXPORTING
      !ex_datext TYPE csequence
      !ex_datfmused TYPE ty_datfm
      RAISING
      cx_abap_datfm_format_unknown.
    CLASS-METHODS conv_date_int_to_shortex
      IMPORTING
      !im_datint TYPE d
      !im_datfmdes TYPE ty_datfm OPTIONAL
      EXPORTING
      !ex_abbrdatext TYPE csequence
      !ex_datfmused TYPE ty_datfm
      RAISING
      cx_abap_datfm_format_unknown.
    CLASS-METHODS conv_isl_to_greg_formula
      IMPORTING
      !isldate TYPE ty_isldate
      EXPORTING
      !gregdate TYPE ty_gregdate.
    CLASS-METHODS conv_period_ext_to_int
      IMPORTING
      !im_periodext TYPE csequence
      !im_datfmdes TYPE ty_datfm OPTIONAL
      !im_inweeks TYPE abap_bool DEFAULT abap_false
      !im_inarbitrary TYPE abap_bool DEFAULT abap_false
      EXPORTING
      !ex_periodint TYPE csequence
      !ex_datfmused TYPE ty_datfm
      RAISING
      cx_abap_datfm_no_date
      cx_abap_datfm_invalid_date
      cx_abap_datfm_format_unknown
      cx_abap_datfm_ambiguous.
    CLASS-METHODS conv_period_int_to_ext
      IMPORTING
      !im_periodint TYPE csequence
      !im_datfmdes TYPE ty_datfm OPTIONAL
      EXPORTING
      !ex_periodext TYPE csequence
      !ex_datfmused TYPE ty_datfm
      RAISING
      cx_abap_datfm_format_unknown.
    CLASS-METHODS conv_year_ext_to_int
      IMPORTING
      !im_datfmdes TYPE ty_datfm OPTIONAL
      !im_yearext TYPE clike
      !im_by_parameter TYPE abap_bool DEFAULT space
      EXPORTING
      !ex_yearint TYPE clike
      RAISING
      cx_abap_datfm_invalid_date
      cx_abap_datfm_no_date.
    CLASS-METHODS conv_year_int_to_ext
      IMPORTING
      !im_datfmdes TYPE ty_datfm OPTIONAL
      !im_yearint TYPE clike
      !im_by_parameter TYPE abap_bool DEFAULT space
      EXPORTING
      !ex_yearext TYPE clike.
    CLASS-METHODS get_country_datfm
      IMPORTING
      !country TYPE ty_country
      RETURNING
      VALUE(datfm) TYPE ty_datfm.
    CLASS-METHODS get_date_format_des
      IMPORTING
      !im_datfm TYPE ty_datfm OPTIONAL
      !im_langu TYPE ty_langu DEFAULT sy-langu
      !im_plain TYPE abap_bool DEFAULT abap_false
      !im_long TYPE abap_bool DEFAULT abap_false
      EXPORTING
      !ex_dateformat TYPE csequence
      RAISING
      cx_abap_datfm_format_unknown.
    CLASS-METHODS get_date_format_des_j
      IMPORTING
      !im_datfm TYPE ty_datfm OPTIONAL
      EXPORTING
      !ex_dateformat TYPE csequence
      RAISING
      cx_abap_datfm_format_unknown.
    CLASS-METHODS get_datfm
      RETURNING
      VALUE(datfm) TYPE ty_datfm.
    CLASS-METHODS get_delimiter
      IMPORTING
      !im_datfm TYPE ty_datfm OPTIONAL
      EXPORTING
      !ex_delimiter TYPE ty_delimiter
      RAISING
      cx_abap_datfm_format_unknown.
    CLASS-METHODS get_num_of_dateformats
      RETURNING
      VALUE(re_num) TYPE int4.
    CLASS-METHODS get_period_format_des
      IMPORTING
      !im_datfm TYPE ty_datfm OPTIONAL
      !im_langu TYPE ty_langu DEFAULT sy-langu
      !im_plain TYPE abap_bool OPTIONAL
      !im_long TYPE abap_bool DEFAULT abap_false
      !im_isweeks TYPE abap_bool DEFAULT abap_false
      EXPORTING
      !ex_periodformat TYPE csequence
      RAISING
      cx_abap_datfm_format_unknown.
ENDCLASS.

CLASS cl_abap_datfm IMPLEMENTATION.
ENDCLASS.