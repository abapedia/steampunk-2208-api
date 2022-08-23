INTERFACE if_ixml_parser_core
  PUBLIC.

  CONSTANTS co_mark_element TYPE i VALUE 1.
  CONSTANTS co_mark_entity_ref TYPE i VALUE 1.
  CONSTANTS co_mark_lexical TYPE i VALUE 1.
  CONSTANTS co_namespace_aware TYPE i VALUE 1.
  CONSTANTS co_namespace_checking TYPE i VALUE 1.
  CONSTANTS co_namespace_unaware TYPE i VALUE 1.
  CONSTANTS co_no_mark TYPE i VALUE 1.
  CONSTANTS co_no_resolve TYPE i VALUE 1.
  CONSTANTS co_no_strict TYPE i VALUE 1.
  CONSTANTS co_no_validation TYPE i VALUE 1.
  CONSTANTS co_prefix_aware TYPE i VALUE 1.
  CONSTANTS co_resolve TYPE i VALUE 1.
  CONSTANTS co_strict TYPE i VALUE 1.
  CONSTANTS co_validate TYPE i VALUE 1.
  CONSTANTS co_validate_if_dtd TYPE i VALUE 1.
  CONSTANTS co_warn_all TYPE i VALUE 1.
  CONSTANTS co_warn_dup_attrib_decl TYPE i VALUE 1.
  CONSTANTS co_warn_dup_att_list TYPE i VALUE 1.
  CONSTANTS co_warn_dup_entity_decl TYPE i VALUE 1.
  CONSTANTS co_warn_forward_decl TYPE i VALUE 1.

  METHODS add_preserve_space_element
    IMPORTING
      name        TYPE string DEFAULT '*'
      uri         TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS add_strip_space_element
    IMPORTING
      name        TYPE string DEFAULT '*'
      uri         TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS get_error
    IMPORTING
      index        TYPE i
      min_severity TYPE i DEFAULT 3
    RETURNING
      VALUE(rval)  TYPE REF TO if_ixml_parse_error_core.

  METHODS get_event_subscription
    RETURNING
      VALUE(rval) TYPE i.

  METHODS get_namespace_mode
    RETURNING
      VALUE(rval) TYPE i.

  METHODS has_event_subscription
    IMPORTING
      event       TYPE i
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS is_dom_generating
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS is_normalizing
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS is_supply_attr_defaults
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS is_validating
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS is_xml_space_aware
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS num_errors
    IMPORTING
      min_severity TYPE i DEFAULT 3
    RETURNING
      VALUE(rval)  TYPE i.

  METHODS parse
    RETURNING
      VALUE(rval) TYPE i.

  METHODS parse_event
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_event.

  METHODS set_dom_generating
    IMPORTING
      is_generating TYPE abap_bool DEFAULT abap_true
    RETURNING
      VALUE(rval)   TYPE abap_bool.

  METHODS set_event_subscription
    IMPORTING
      events TYPE i.

  METHODS set_namespace_mode
    IMPORTING
      mode TYPE i.

  METHODS set_normalizing
    IMPORTING
      is_normalizing TYPE abap_bool DEFAULT abap_true
    RETURNING
      VALUE(rval)    TYPE abap_bool.

  METHODS set_resolve_mode
    IMPORTING
      flags       TYPE i
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS set_supply_attr_defaults
    IMPORTING
      supply TYPE abap_bool DEFAULT abap_true.

  METHODS set_validating
    IMPORTING
      mode        TYPE i DEFAULT '1'
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS set_xml_space_aware
    IMPORTING
      is_xml_space_aware TYPE abap_bool DEFAULT abap_true.

  METHODS is_attribute_normalizing
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS set_attribute_normalizing
    IMPORTING
      is_normalizing TYPE abap_bool DEFAULT abap_true
    RETURNING
      VALUE(rval)    TYPE abap_bool.

ENDINTERFACE.