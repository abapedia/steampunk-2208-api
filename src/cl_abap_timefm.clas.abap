CLASS cl_abap_timefm DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES ty_format TYPE i.
    TYPES ty_timefm TYPE c.
    CONSTANTS user TYPE ty_format VALUE 2. "#EC NOTEXT
    CONSTANTS environment TYPE ty_format VALUE 3. "#EC NOTEXT
    CONSTANTS iso TYPE ty_format VALUE 1. "#EC NOTEXT
    CONSTANTS fm_24h TYPE ty_timefm VALUE '0'. "#EC NOTEXT
    CONSTANTS fm_12h_upper TYPE ty_timefm VALUE '1'. "#EC NOTEXT
    CONSTANTS fm_12h_lower TYPE ty_timefm VALUE '2'. "#EC NOTEXT
    CONSTANTS fm_0_11h_upper TYPE ty_timefm VALUE '3'. "#EC NOTEXT
    CONSTANTS fm_0_11h_lower TYPE ty_timefm VALUE '4'. "#EC NOTEXT
    CONSTANTS max_time_output_len TYPE i VALUE 11. "#EC NOTEXT
    CLASS-METHODS conv_time_ext_to_int
      IMPORTING
      VALUE(time_ext) TYPE csequence
      !is_24_allowed TYPE abap_bool DEFAULT abap_false
      EXPORTING
      !time_int TYPE t
      RAISING
      cx_abap_timefm_invalid.
    CLASS-METHODS conv_time_int_to_ext
      IMPORTING
      VALUE(time_int) TYPE t
      !without_seconds TYPE abap_bool DEFAULT abap_false
      !format_according_to TYPE ty_format DEFAULT environment
      EXPORTING
      !time_ext TYPE string
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS get_output_length
      IMPORTING
      !without_seconds TYPE abap_bool DEFAULT abap_false
      !format_according_to TYPE ty_format DEFAULT environment
      PREFERRED PARAMETER without_seconds
      RETURNING
      VALUE(length) TYPE i
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS get_country_timefm
      IMPORTING
      !country TYPE land1
      RETURNING
      VALUE(timefm) TYPE ty_timefm.
    CLASS-METHODS get_environment_timefm
      RETURNING
      VALUE(timefm) TYPE ty_timefm.
    CLASS-METHODS get_user_timefm
      RETURNING
      VALUE(timefm) TYPE ty_timefm.

ENDCLASS.

CLASS cl_abap_timefm IMPLEMENTATION.
ENDCLASS.