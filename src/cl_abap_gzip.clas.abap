CLASS cl_abap_gzip DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CLASS-METHODS compress_text
      IMPORTING
      !text_in TYPE csequence
      !text_in_len TYPE i DEFAULT -1
      !compress_level TYPE i DEFAULT 6
      !conversion TYPE abap_encod DEFAULT 'DEFAULT'
      EXPORTING
      !gzip_out TYPE xsequence
      !gzip_out_len TYPE i
      RAISING
      cx_parameter_invalid_range
      cx_sy_buffer_overflow
      cx_sy_conversion_codepage
      cx_sy_compression_error.
    CLASS-METHODS decompress_text
      IMPORTING
      !gzip_in TYPE xsequence
      !gzip_in_len TYPE i DEFAULT -1
      !conversion TYPE abap_encod DEFAULT 'DEFAULT'
      EXPORTING
      !text_out TYPE csequence
      !text_out_len TYPE i
      RAISING
      cx_parameter_invalid_range
      cx_sy_buffer_overflow
      cx_sy_conversion_codepage
      cx_sy_compression_error.
    CLASS-METHODS compress_binary
      IMPORTING
      !raw_in TYPE xsequence
      !raw_in_len TYPE i DEFAULT -1
      !compress_level TYPE i DEFAULT 6
      EXPORTING
      !gzip_out TYPE xsequence
      !gzip_out_len TYPE i
      RAISING
      cx_parameter_invalid_range
      cx_sy_buffer_overflow
      cx_sy_compression_error.
    CLASS-METHODS decompress_binary
      IMPORTING
      !gzip_in TYPE xsequence
      !gzip_in_len TYPE i DEFAULT -1
      EXPORTING
      !raw_out TYPE xsequence
      !raw_out_len TYPE i
      RAISING
      cx_parameter_invalid_range
      cx_sy_buffer_overflow
      cx_sy_compression_error.
    CLASS-METHODS compress_binary_with_header
      IMPORTING
      !raw_in TYPE xstring
      !compress_level TYPE i DEFAULT 6
      !mtime_in TYPE timestamp OPTIONAL
      !fname_in TYPE string OPTIONAL
      !fcomment_in TYPE string OPTIONAL
      !fextra_in TYPE xstring OPTIONAL
      !fhcrc TYPE abap_bool DEFAULT abap_false
      EXPORTING
      !gzip_out TYPE xstring
      RAISING
      cx_parameter_invalid_range
      cx_sy_buffer_overflow
      cx_sy_compression_error.
    CLASS-METHODS decompress_binary_with_header
      IMPORTING
      !gzip_in TYPE xstring
      EXPORTING
      !raw_out TYPE xstring
      !mtime_out TYPE timestamp
      !fname_out TYPE string
      !fcomment_out TYPE string
      !fextra_out TYPE xstring
      RAISING
      cx_parameter_invalid
      cx_sy_buffer_overflow
      cx_sy_compression_error.
ENDCLASS.

CLASS cl_abap_gzip IMPLEMENTATION.
ENDCLASS.