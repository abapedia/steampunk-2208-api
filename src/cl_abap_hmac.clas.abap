CLASS cl_abap_hmac DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
      !if_algorithm TYPE string
      !if_key TYPE xstring
      RAISING
      cx_abap_message_digest.

    CLASS-METHODS get_instance
      IMPORTING
      !if_algorithm TYPE string DEFAULT 'SHA1'
      !if_key TYPE xstring
      RETURNING
      VALUE(ro_object) TYPE REF TO cl_abap_hmac
      RAISING
      cx_abap_message_digest.
    METHODS get_algorithm
      RETURNING
      VALUE(rf_algorithm) TYPE string.
    METHODS get_hmac_length
      RETURNING
      VALUE(ri_length) TYPE i
      RAISING
      cx_abap_message_digest.
    METHODS get_hmac
      RETURNING
      VALUE(er_hmac) TYPE xstring
      RAISING
      cx_abap_message_digest.
    METHODS init
      IMPORTING
      !if_key TYPE xstring
      RAISING
      cx_abap_message_digest.
    METHODS update
      IMPORTING
      !if_data TYPE xstring
      !if_offset TYPE i DEFAULT 0
      !if_length TYPE i DEFAULT 0
      RAISING
      cx_abap_message_digest.
    METHODS final
      IMPORTING
      !if_data TYPE xstring OPTIONAL
      !if_offset TYPE i DEFAULT 0
      !if_length TYPE i DEFAULT 0
      EXPORTING
      !ef_hmacstring TYPE string
      !ef_hmacxstring TYPE xstring
      !ef_hmacb64string TYPE string
      RAISING
      cx_abap_message_digest.
    METHODS reset
      RAISING
      cx_abap_message_digest.
    METHODS to_string
      RETURNING
      VALUE(er_hmacstring) TYPE string
      RAISING
      cx_abap_message_digest.
    METHODS to_base64
      RETURNING
      VALUE(er_hmacb64string) TYPE string
      RAISING
      cx_abap_message_digest.

    CLASS-METHODS is_equal
      IMPORTING
      !if_hmaca TYPE xstring
      !if_hmacb TYPE xstring
      RETURNING
      VALUE(er_equal) TYPE abap_bool.
    CLASS-METHODS calculate_hmac_for_char
      IMPORTING
      !if_algorithm TYPE string DEFAULT 'SHA1'
      !if_key TYPE xstring
      !if_data TYPE string
      !if_length TYPE i DEFAULT 0
      EXPORTING
      !ef_hmacstring TYPE string
      !ef_hmacxstring TYPE xstring
      !ef_hmacb64string TYPE string
      RAISING
      cx_abap_message_digest.
    CLASS-METHODS calculate_hmac_for_raw
      IMPORTING
      !if_algorithm TYPE string DEFAULT 'SHA1'
      !if_key TYPE xstring
      !if_data TYPE xstring
      !if_length TYPE i DEFAULT 0
      EXPORTING
      !ef_hmacstring TYPE string
      !ef_hmacxstring TYPE xstring
      !ef_hmacb64string TYPE string
      RAISING
      cx_abap_message_digest.
    CLASS-METHODS string_to_xstring
      IMPORTING
      !if_input TYPE string
      RETURNING
      VALUE(er_output) TYPE xstring
      RAISING
      cx_abap_message_digest.
ENDCLASS.

CLASS cl_abap_hmac IMPLEMENTATION.
ENDCLASS.