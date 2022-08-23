
INTERFACE if_ixml_namespace_context
  PUBLIC.

  INTERFACES if_ixml_unknown.

  METHODS bind
    IMPORTING
      !prefix TYPE string
      !uri TYPE string.
  METHODS clone
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_namespace_context.
  METHODS get_binding_prefix
    IMPORTING
      !index TYPE i
    RETURNING
      VALUE(rval) TYPE string.
  METHODS get_binding_uri
    IMPORTING
      !index TYPE i
    RETURNING
      VALUE(rval) TYPE string.
  METHODS map_to_prefix
    IMPORTING
      !uri TYPE string
    RETURNING
      VALUE(rval) TYPE string.
  METHODS map_to_uri
    IMPORTING
      !prefix TYPE string
    RETURNING
      VALUE(rval) TYPE string.
  METHODS num_bindings
    RETURNING
      VALUE(rval) TYPE i.
ENDINTERFACE.