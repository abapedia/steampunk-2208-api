
INTERFACE if_ixml_node_collection
  PUBLIC.

  INTERFACES if_ixml_unknown.

  ALIASES query_interface
    FOR if_ixml_unknown~query_interface.

  METHODS append_item
    IMPORTING
      !p_node TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE i.
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
  METHODS insert_item
    IMPORTING
      !index TYPE i
      !p_node TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE i.
  METHODS remove_item
    IMPORTING
      !index TYPE i
    RETURNING
      VALUE(rval) TYPE i.
  METHODS replace_item
    IMPORTING
      !index TYPE i
      !node TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE i.
ENDINTERFACE.