CLASS cl_abap_message_digest DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
      !if_algorithm TYPE string
      RAISING
      cx_abap_message_digest.

    CLASS-METHODS get_instance
      IMPORTING
      !if_algorithm TYPE string DEFAULT 'SHA1'
      RETURNING
      VALUE(ro_object) TYPE REF TO cl_abap_message_digest
      RAISING
      cx_abap_message_digest.
    METHODS get_algorithm
      RETURNING
      VALUE(rf_algorithm) TYPE string.
    METHODS get_digest_length
      RETURNING
      VALUE(ri_length) TYPE i
      RAISING
      cx_abap_message_digest.
    METHODS get_digest
      RETURNING
      VALUE(er_hash) TYPE xstring
      RAISING
      cx_abap_message_digest.
    METHODS update
      IMPORTING
      !if_data TYPE xstring
      !if_offset TYPE i DEFAULT 0
      !if_length TYPE i DEFAULT 0
      RAISING
      cx_abap_message_digest.
    METHODS digest
      IMPORTING
      !if_data TYPE xstring OPTIONAL
      !if_offset TYPE i DEFAULT 0
      !if_length TYPE i DEFAULT 0
      EXPORTING
      !ef_hashstring TYPE string
      !ef_hashxstring TYPE xstring
      !ef_hashb64string TYPE string
      !ef_hashx TYPE xsequence
      RAISING
      cx_abap_message_digest.
    METHODS reset
      RAISING
      cx_abap_message_digest.
    METHODS to_string
      RETURNING
      VALUE(er_hashstring) TYPE string
      RAISING
      cx_abap_message_digest.
    METHODS to_base64
      RETURNING
      VALUE(er_hashb64string) TYPE string
      RAISING
      cx_abap_message_digest.

    CLASS-METHODS is_equal
      IMPORTING
      !if_digesta TYPE xstring
      !if_digestb TYPE xstring
      RETURNING
      VALUE(er_equal) TYPE abap_bool.
    CLASS-METHODS calculate_hash_for_char
      IMPORTING
      !if_algorithm TYPE string DEFAULT 'SHA1'
      !if_data TYPE string
      !if_length TYPE i DEFAULT 0
      EXPORTING
      !ef_hashstring TYPE string
      !ef_hashxstring TYPE xstring
      !ef_hashb64string TYPE string
      !ef_hashx TYPE xsequence
      RAISING
      cx_abap_message_digest.
    CLASS-METHODS calculate_hash_for_raw
      IMPORTING
      !if_algorithm TYPE string DEFAULT 'SHA1'
      !if_data TYPE xstring
      !if_length TYPE i DEFAULT 0
      EXPORTING
      !ef_hashstring TYPE string
      !ef_hashxstring TYPE xstring
      !ef_hashb64string TYPE string
      !ef_hashx TYPE xsequence
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

CLASS cl_abap_message_digest IMPLEMENTATION.
ENDCLASS.