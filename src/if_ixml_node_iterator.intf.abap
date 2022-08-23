
INTERFACE if_ixml_node_iterator
  PUBLIC.

  INTERFACES if_ixml_unknown.

  ALIASES query_interface
    FOR if_ixml_unknown~query_interface.

  METHODS get_filter
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS get_next
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node.
  METHODS reset.
  METHODS set_filter
    IMPORTING
      !filter TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval) TYPE i.
ENDINTERFACE.