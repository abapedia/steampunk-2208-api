CLASS cl_abap_utclong DEFINITION
  PUBLIC
  ABSTRACT
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS min TYPE utclong VALUE '0001-01-01 00:00:00.0000000' ##NO_TEXT.
    CONSTANTS max TYPE utclong VALUE '9999-12-31 23:59:59.9999999' ##NO_TEXT.
    CONSTANTS timezone_utc TYPE timezone VALUE 'UTC   ' ##NO_TEXT.
    CLASS-METHODS diff
      IMPORTING
      !low TYPE utclong
      !high TYPE utclong
      EXPORTING
      !days TYPE i
      !hours TYPE i
      !minutes TYPE int8
      !seconds TYPE decfloat34
      RAISING
      cx_sy_conversion_no_date_time.
    CLASS-METHODS read
      IMPORTING
      !string TYPE csequence
      !timezone TYPE timezone DEFAULT timezone_utc
      !daylight_saving_time TYPE abap_bool OPTIONAL
      !is_24_allowed TYPE abap_bool DEFAULT abap_true
      !is_leap_sec_allowed TYPE abap_bool OPTIONAL
      EXPORTING
      !value TYPE utclong
      RAISING
      cx_abap_utclong_invalid
      cx_sy_conversion_no_date_time
      cx_parameter_invalid_range.
    CLASS-METHODS read_iso_format
      IMPORTING
      !string TYPE csequence
      !timezone TYPE timezone OPTIONAL
      !daylight_saving_time TYPE abap_bool OPTIONAL
      EXPORTING
      !value TYPE utclong
      RAISING
      cx_abap_utclong_invalid
      cx_sy_conversion_no_date_time
      cx_parameter_invalid_range.
    CLASS-METHODS write_iso_format_with_offset
      IMPORTING
      VALUE(utclong) TYPE utclong
      !timezone TYPE timezone DEFAULT sy-zonlo
      !decimals TYPE i DEFAULT 0
      RETURNING
      VALUE(string) TYPE string
      RAISING
      cx_sy_conversion_no_date_time.
    CLASS-METHODS to_system_timestamp
      IMPORTING
      !utc_tstmp TYPE utclong
      EXPORTING
      !system_date TYPE d
      !system_time TYPE t
      RAISING
      cx_sy_conversion_no_date_time.
    CLASS-METHODS from_system_timestamp
      IMPORTING
      !system_date TYPE d
      !system_time TYPE t
      EXPORTING
      !utc_tstmp TYPE utclong
      RAISING
      cx_sy_conversion_no_date_time.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_utclong IMPLEMENTATION.
ENDCLASS.