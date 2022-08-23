CLASS cl_abap_gzip_binary_stream DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS first TYPE i VALUE 0. "#EC NOTEXT
    CONSTANTS next TYPE i VALUE 1. "#EC NOTEXT
    CONSTANTS last TYPE i VALUE 2. "#EC NOTEXT

    METHODS constructor
      IMPORTING
      !compress_level TYPE i DEFAULT 6
      !output_handler TYPE REF TO if_abap_gzip_binary_handler
      RAISING
      cx_parameter_invalid_range.
    METHODS set_out_buf
      EXPORTING
      !out_buf TYPE xsequence
      !out_buf_len TYPE i
      RAISING
      cx_parameter_invalid_range.
    METHODS compress_binary_stream
      IMPORTING
      !raw_in TYPE xsequence
      !raw_in_len TYPE i DEFAULT -1
      RAISING
      cx_parameter_invalid_range
      cx_sy_conversion_codepage.
    METHODS compress_binary_stream_end
      IMPORTING
      !raw_in TYPE xsequence
      !raw_in_len TYPE i DEFAULT -1
      RAISING
      cx_sy_compression_error.
ENDCLASS.

CLASS cl_abap_gzip_binary_stream IMPLEMENTATION.
ENDCLASS.