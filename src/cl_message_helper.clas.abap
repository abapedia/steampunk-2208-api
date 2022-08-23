CLASS cl_message_helper DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES: BEGIN OF otr_parameter,
      param TYPE c LENGTH 30,
      value TYPE string,
      END OF otr_parameter.
    TYPES otr_parameters TYPE STANDARD TABLE OF otr_parameter WITH DEFAULT KEY.
    TYPES: BEGIN OF otr_char_parameter,
      param TYPE c LENGTH 30,
      value TYPE c LENGTH 255,
      END OF otr_char_parameter.
    TYPES otr_char_parameters TYPE STANDARD TABLE OF otr_char_parameter WITH DEFAULT KEY.
    TYPES otr_id TYPE c LENGTH 32.
    CLASS-DATA message_object TYPE REF TO if_message.
    CLASS-METHODS get_latest_t100_exception
      IMPORTING
        !exception    TYPE REF TO cx_root
      RETURNING
        VALUE(result) TYPE REF TO if_t100_message.
    CLASS-METHODS get_longtext_for_message
      IMPORTING
        VALUE(text)               TYPE REF TO if_message
        VALUE(preserve_newlines)  TYPE abap_bool OPTIONAL
        VALUE(t100_prepend_short) TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(result)             TYPE string.
    CLASS-METHODS get_text_for_message
      IMPORTING
        VALUE(text)   TYPE REF TO if_message
      RETURNING
        VALUE(result) TYPE string.
    CLASS-METHODS set_msg_vars_for_clike
      IMPORTING
        VALUE(text) TYPE clike.
    CLASS-METHODS set_msg_vars_for_if_t100_msg
      IMPORTING
        VALUE(text) TYPE REF TO if_t100_message
      RAISING
        cx_sy_message_illegal_text.
    CLASS-METHODS set_msg_vars_for_any
      IMPORTING
        !text         TYPE any
      EXPORTING
        VALUE(string) TYPE string
      RAISING
        cx_sy_message_illegal_text.
    CLASS-METHODS set_msg_vars_for_if_msg
      IMPORTING
        VALUE(text)   TYPE REF TO if_message
      EXPORTING
        VALUE(string) TYPE string
      RAISING
        cx_sy_message_illegal_text.
    CLASS-METHODS check_msg_kind
      IMPORTING
        VALUE(msg)     TYPE REF TO if_message
      EXPORTING
        VALUE(t100key) TYPE scx_t100key
        VALUE(textid)  TYPE otr_id.
    CLASS-METHODS get_text_params
      IMPORTING
        VALUE(obj) TYPE REF TO object
      EXPORTING
        !params    TYPE otr_char_parameters.
    CLASS-METHODS get_otr_text_raw
      IMPORTING
        !textid TYPE otr_id
      EXPORTING
        !result TYPE string.
    CLASS-METHODS get_t100_text_for
      IMPORTING
        VALUE(obj) TYPE REF TO object
        !t100key   TYPE scx_t100key
      EXPORTING
        !result    TYPE string.
    CLASS-METHODS get_t100_for_object
      IMPORTING
        !obj          TYPE REF TO if_t100_message
      RETURNING
        VALUE(result) TYPE symsg.
    CLASS-METHODS replace_text_params
      IMPORTING
        VALUE(obj) TYPE REF TO object
      CHANGING
        !result    TYPE string.
    CLASS-METHODS strip_newlines_from
      CHANGING
        !message TYPE string.
    CLASS-METHODS get_text_sparams
      IMPORTING
        VALUE(obj) TYPE REF TO object
      EXPORTING
        !params    TYPE otr_parameters.

ENDCLASS.

CLASS cl_message_helper IMPLEMENTATION.
ENDCLASS.