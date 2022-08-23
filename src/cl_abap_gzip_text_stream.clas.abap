CLASS cl_abap_gzip_text_stream DEFINITION
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
      !conversion TYPE abap_encod DEFAULT 'DEFAULT'
      !output_handler TYPE REF TO if_abap_gzip_text_handler
      RAISING
      cx_parameter_invalid_range.
    METHODS set_out_buf
      EXPORTING
      !out_buf TYPE xsequence
      !out_buf_len TYPE i
      RAISING
      cx_parameter_invalid_range.
    METHODS compress_text_stream
      IMPORTING
      !text_in TYPE csequence
      !text_in_len TYPE i DEFAULT -1
      RAISING
      cx_parameter_invalid_range
      cx_sy_conversion_codepage
      cx_sy_compression_error.
    METHODS compress_text_stream_end
      IMPORTING
      !text_in TYPE csequence
      !text_in_len TYPE i DEFAULT -1
      RAISING
      cx_sy_compression_error.
ENDCLASS.

CLASS cl_abap_gzip_text_stream IMPLEMENTATION.
ENDCLASS.