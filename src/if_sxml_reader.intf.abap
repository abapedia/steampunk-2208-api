INTERFACE if_sxml_reader
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

  DATA node_type TYPE if_sxml_node=>node_type READ-ONLY.
  DATA name TYPE string READ-ONLY.
  DATA nsuri TYPE string READ-ONLY.
  DATA prefix TYPE string READ-ONLY.
  DATA value_type TYPE if_sxml_value=>value_type READ-ONLY.
  DATA value TYPE string READ-ONLY.
  DATA value_raw TYPE xstring READ-ONLY.
  CONSTANTS co_opt_normalizing TYPE i VALUE 1.              "#EC NOTEXT
  CONSTANTS co_opt_keep_whitespace TYPE i VALUE 2.          "#EC NOTEXT
  CONSTANTS co_opt_asxml TYPE i VALUE 3.                    "#EC NOTEXT
  CONSTANTS co_opt_sep_member TYPE i VALUE 4.               "#EC NOTEXT

  METHODS read_next_node
    RETURNING
      VALUE(node) TYPE REF TO if_sxml_node
    RAISING
      cx_sxml_parse_error.
  METHODS next_node
    IMPORTING
      !value_type TYPE if_sxml_value=>value_type DEFAULT if_sxml_value=>co_vt_text
    RAISING
      cx_sxml_parse_error.
  METHODS skip_node
    IMPORTING
      !writer TYPE REF TO if_sxml_writer OPTIONAL
    RAISING
      cx_sxml_parse_error.
  METHODS push_back
    RAISING
      cx_sxml_state_error.
  METHODS next_attribute
    IMPORTING
      !value_type TYPE if_sxml_value=>value_type DEFAULT if_sxml_value=>co_vt_text
    RAISING
      cx_sxml_parse_error
      cx_sxml_state_error.
  METHODS next_attribute_value
    IMPORTING
      !value_type TYPE if_sxml_value=>value_type DEFAULT if_sxml_value=>co_vt_text
    RAISING
      cx_sxml_parse_error
      cx_sxml_state_error.
  METHODS get_attribute_value
    IMPORTING
      !name       TYPE string
      !nsuri      TYPE string OPTIONAL
      !value_type TYPE if_sxml_value=>value_type DEFAULT if_sxml_value=>co_vt_text
    RAISING
      cx_sxml_parse_error
      cx_sxml_state_error.
  METHODS current_node.
  METHODS read_current_node
    RETURNING
      VALUE(node) TYPE REF TO if_sxml_node.
  METHODS get_byte_offset
    RETURNING
      VALUE(offset) TYPE i.
  METHODS set_option
    IMPORTING
      !option TYPE i
      !value  TYPE abap_bool DEFAULT abap_true.
  METHODS get_option
    IMPORTING
      !option      TYPE i
    RETURNING
      VALUE(value) TYPE abap_bool.
  METHODS set_vsi
    IMPORTING
      VALUE(vsi) TYPE REF TO not_released.
  METHODS get_vsi
    RETURNING
      VALUE(vsi) TYPE REF TO not_released.

ENDINTERFACE.