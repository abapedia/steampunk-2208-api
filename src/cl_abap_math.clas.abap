CLASS cl_abap_math DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CONSTANTS round_half_up TYPE i VALUE 2. "#EC NOTEXT
    CONSTANTS round_half_down TYPE i VALUE 4. "#EC NOTEXT
    CONSTANTS round_half_even TYPE i VALUE 3. "#EC NOTEXT
    CONSTANTS round_up TYPE i VALUE 1. "#EC NOTEXT
    CONSTANTS round_down TYPE i VALUE 5. "#EC NOTEXT
    CONSTANTS round_ceiling TYPE i VALUE 0. "#EC NOTEXT
    CONSTANTS round_floor TYPE i VALUE 6. "#EC NOTEXT
    CONSTANTS simple TYPE outputstyle VALUE 00. "#EC NOTEXT
    CONSTANTS sign_as_postfix TYPE outputstyle VALUE 01. "#EC NOTEXT
    CONSTANTS scale_preserving TYPE outputstyle VALUE 02. "#EC NOTEXT
    CONSTANTS scientific TYPE outputstyle VALUE 03. "#EC NOTEXT
    CONSTANTS scientific_with_leading_zero TYPE outputstyle VALUE 04. "#EC NOTEXT
    CONSTANTS scale_preserving_scientific TYPE outputstyle VALUE 05. "#EC NOTEXT
    CONSTANTS engineering TYPE outputstyle VALUE 06. "#EC NOTEXT
    CONSTANTS max_decfloat34 TYPE decfloat34 VALUE '9.999999999999999999999999999999999E+6144'. "#EC NOTEXT
    CONSTANTS max_decfloat16 TYPE decfloat16 VALUE '9.999999999999999E+384'. "#EC NOTEXT
    CONSTANTS min_decfloat34 TYPE decfloat34 VALUE '1E-6143'. "#EC NOTEXT
    CONSTANTS min_decfloat16 TYPE decfloat16 VALUE '1E-383'. "#EC NOTEXT
    CONSTANTS max_int4 TYPE i VALUE 2147483647. "#EC NOTEXT
    CONSTANTS min_int4 TYPE i VALUE -2147483648. "#EC NOTEXT
    CONSTANTS max_int8 TYPE int8 VALUE 9223372036854775807.
    CONSTANTS min_int8 TYPE int8 VALUE -9223372036854775808.

    CLASS-METHODS round_f_to_15_decs
      IMPORTING
      VALUE(f_in) TYPE f
      RETURNING
      VALUE(f_out) TYPE f.
    CLASS-METHODS normalize
      IMPORTING
      !val TYPE decfloat
      RETURNING
      VALUE(norm_val) TYPE decfloat34.
    CLASS-METHODS get_scale
      IMPORTING
      !val TYPE decfloat
      RETURNING
      VALUE(scale) TYPE i.
    CLASS-METHODS get_number_of_digits
      IMPORTING
      !val TYPE decfloat
      RETURNING
      VALUE(num_of_digits) TYPE i.
    CLASS-METHODS get_scale_normalized
      IMPORTING
      !val TYPE decfloat
      RETURNING
      VALUE(scale) TYPE i.
    CLASS-METHODS get_exponent
      IMPORTING
      !val TYPE decfloat
      RETURNING
      VALUE(exponent) TYPE i.
    CLASS-METHODS get_max_db_value
      IMPORTING
      !in TYPE decfloat
      RETURNING
      VALUE(max_value) TYPE decfloat34.
    CLASS-METHODS get_db_length_decs
      IMPORTING
      !in TYPE decfloat
      EXPORTING
      !length TYPE i
      !decimals TYPE i
      RAISING
      cx_parameter_invalid_type.
ENDCLASS.

CLASS cl_abap_math IMPLEMENTATION.
ENDCLASS.