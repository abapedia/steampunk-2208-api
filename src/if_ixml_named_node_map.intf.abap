
INTERFACE if_ixml_named_node_map
  PUBLIC.

  INTERFACES if_ixml_unknown.

  ALIASES query_interface
    FOR if_ixml_unknown~query_interface.

  METHODS create_iterator
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_iterator.
  METHODS create_iterator_filtered
    IMPORTING
      !filter TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_iterator.
  METHODS create_rev_iterator
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_iterator.
  METHODS create_rev_iterator_filtered
    IMPORTING
      !filter TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_iterator.
  METHODS get_item
    IMPORTING
      !index TYPE i
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_length
    RETURNING
      VALUE(rval) TYPE i.
  METHODS get_named_item
    IMPORTING
      !name TYPE string
      !namespace TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS get_named_item_ns
    IMPORTING
      !name TYPE string
      !uri TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS remove_named_item
    IMPORTING
      !name TYPE string
      !namespace TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE i.
  METHODS remove_named_item_ns
    IMPORTING
      !name TYPE string
      !uri TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_named_item
    IMPORTING
      !node TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE i.
  METHODS set_named_item_ns
    IMPORTING
      !node TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE i.
ENDINTERFACE.