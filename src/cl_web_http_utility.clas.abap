CLASS cl_web_http_utility DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS urlcheck_default TYPE x VALUE 6 ##NO_TEXT.
    CONSTANTS co_disabled TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS co_enabled TYPE i VALUE 1 ##NO_TEXT.

    CLASS-METHODS decode_utf8
      IMPORTING
      !encoded TYPE xstring
      RETURNING
      VALUE(unencoded) TYPE string
      RAISING
      cx_web_http_conversion_failed.
    CLASS-METHODS encode_utf8
      IMPORTING
      !unencoded TYPE string
      RETURNING
      VALUE(encoded) TYPE xstring
      RAISING
      cx_web_http_conversion_failed.
    CLASS-METHODS encode_x_base64
      IMPORTING
      !unencoded TYPE xstring
      RETURNING
      VALUE(encoded) TYPE string.
    CLASS-METHODS decode_x_base64
      IMPORTING
      !encoded TYPE string
      RETURNING
      VALUE(decoded) TYPE xstring.
    CLASS-METHODS decode_base64
      IMPORTING
      !encoded TYPE string
      RETURNING
      VALUE(decoded) TYPE string.
    CLASS-METHODS encode_base64
      IMPORTING
      !unencoded TYPE string
      RETURNING
      VALUE(encoded) TYPE string.
    CLASS-METHODS escape_url
      IMPORTING
      !unescaped TYPE string
      !options TYPE i OPTIONAL
      RETURNING
      VALUE(escaped) TYPE string.
    CLASS-METHODS get_location
      IMPORTING
      VALUE(protocol) TYPE csequence OPTIONAL
      VALUE(application) TYPE csequence OPTIONAL
      VALUE(for_domain) TYPE csequence OPTIONAL
      VALUE(use_ticket_protocol) TYPE abap_bool DEFAULT abap_true
      EXPORTING
      !host TYPE string
      !port TYPE string
      !out_protocol TYPE string
      !vh_switch TYPE abap_bool
      RETURNING
      VALUE(url_part) TYPE string.
    CLASS-METHODS server_cache_upload
      IMPORTING
      !url TYPE string
      !response TYPE REF TO if_web_http_response
      !scope TYPE i OPTIONAL
      VALUE(virtual_host) TYPE i OPTIONAL.
    CLASS-METHODS unescape_url
      IMPORTING
      !escaped TYPE string
      !options TYPE i OPTIONAL
      RETURNING
      VALUE(unescaped) TYPE string.
    CLASS-METHODS is_valid_url
      IMPORTING
      !url TYPE string
      !black_pattern TYPE REF TO cl_abap_regex OPTIONAL
      !white_pattern TYPE REF TO cl_abap_regex OPTIONAL
      !restrictive TYPE abap_bool DEFAULT abap_true
      !options TYPE x DEFAULT urlcheck_default
      RETURNING
      VALUE(is_ok) TYPE abap_bool.
    CLASS-METHODS normalize_url
      IMPORTING
      !unnormalized TYPE string
      RETURNING
      VALUE(normalized) TYPE string.
    CLASS-METHODS get_last_error
      RETURNING
      VALUE(rc) TYPE i.
ENDCLASS.

CLASS cl_web_http_utility IMPLEMENTATION.
ENDCLASS.