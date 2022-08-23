INTERFACE if_sxml_writer
  PUBLIC.

  INTERFACES if_sxml.
  INTERFACES if_sxml_nsuri_helper.

  ALIASES xml_type
    FOR if_sxml~type.
  ALIASES get_nsbindings
    FOR if_sxml_nsuri_helper~get_nsbindings.
  ALIASES get_nsuri_by_prefix
    FOR if_sxml_nsuri_helper~get_nsuri_by_prefix.
  ALIASES get_path
    FOR if_sxml_nsuri_helper~get_path.
  ALIASES get_prefix_by_nsuri
    FOR if_sxml_nsuri_helper~get_prefix_by_nsuri.

  CONSTANTS co_opt_normalizing TYPE i VALUE 1 ##NO_TEXT.
  CONSTANTS co_opt_no_empty TYPE i VALUE 2 ##NO_TEXT.
  CONSTANTS co_opt_ignore_conv_errros TYPE i VALUE 3 ##NO_TEXT.
  CONSTANTS co_opt_linebreaks TYPE i VALUE 4 ##NO_TEXT.
  CONSTANTS co_opt_indent TYPE i VALUE 5 ##NO_TEXT.
  CONSTANTS co_opt_illegal_char_reject TYPE i VALUE 6 ##NO_TEXT.
  CONSTANTS co_opt_illegal_char_replace TYPE i VALUE 7 ##NO_TEXT.
  CONSTANTS co_opt_illegal_char_replace_by TYPE i VALUE 8 ##NO_TEXT.
  CONSTANTS co_opt_base64_no_lf TYPE i VALUE 9 ##NO_TEXT.

  CLASS-METHODS new_open_element
    IMPORTING
      !name TYPE string
      !nsuri TYPE string OPTIONAL
      !prefix TYPE string OPTIONAL
    RETURNING
      VALUE(element) TYPE REF TO if_sxml_open_element
    RAISING
      cx_sxml_name_error.
  CLASS-METHODS new_value
    RETURNING
      VALUE(value) TYPE REF TO if_sxml_value_node.
  CLASS-METHODS new_close_element
    RETURNING
      VALUE(element) TYPE REF TO if_sxml_close_element.
  METHODS write_node
    IMPORTING
      !node TYPE REF TO if_sxml_node
    RAISING
      cx_sxml_state_error.
  METHODS open_element
    IMPORTING
      !name TYPE string
      !nsuri TYPE string OPTIONAL
      !prefix TYPE string OPTIONAL
    RAISING
      cx_sxml_state_error
      cx_sxml_name_error.
  METHODS close_element
    RAISING
      cx_sxml_state_error.
  METHODS write_attribute
    IMPORTING
      !name TYPE string
      !nsuri TYPE string OPTIONAL
      !prefix TYPE string OPTIONAL
      !value TYPE string OPTIONAL
    RAISING
      cx_sxml_state_error
      cx_sxml_name_error.
  METHODS write_attribute_raw
    IMPORTING
      !name TYPE string
      !nsuri TYPE string OPTIONAL
      !prefix TYPE string OPTIONAL
      !value TYPE xstring OPTIONAL
    RAISING
      cx_sxml_state_error
      cx_sxml_name_error.
  METHODS write_value
    IMPORTING
      !value TYPE string
    RAISING
      cx_sxml_state_error.
  METHODS write_value_raw
    IMPORTING
      !value TYPE xstring
    RAISING
      cx_sxml_state_error.
  METHODS write_namespace_declaration
    IMPORTING
      !nsuri TYPE string
      !prefix TYPE string OPTIONAL
    RAISING
      cx_sxml_name_error.
  METHODS set_option
    IMPORTING
      !option TYPE i
      !value TYPE abap_bool DEFAULT abap_true.
  METHODS get_option
    IMPORTING
      !option TYPE i
    RETURNING
      VALUE(value) TYPE abap_bool.
  METHODS set_vsi
    IMPORTING
      VALUE(vsi) TYPE REF TO not_released.
  METHODS get_vsi
    RETURNING
      VALUE(vsi) TYPE REF TO not_released.
ENDINTERFACE.