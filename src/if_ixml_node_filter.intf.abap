
INTERFACE if_ixml_node_filter
  PUBLIC.

  INTERFACES if_ixml_unknown.

  ALIASES query_interface
    FOR if_ixml_unknown~query_interface.

  CONSTANTS co_filter_ancestor TYPE i VALUE 10. "#EC NOTEXT
  CONSTANTS co_filter_and TYPE i VALUE 1. "#EC NOTEXT
  CONSTANTS co_filter_attribute TYPE i VALUE 7. "#EC NOTEXT
  CONSTANTS co_filter_attribute_ns TYPE i VALUE 8. "#EC NOTEXT
  CONSTANTS co_filter_name TYPE i VALUE 5. "#EC NOTEXT
  CONSTANTS co_filter_name_ns TYPE i VALUE 6. "#EC NOTEXT
  CONSTANTS co_filter_node_type TYPE i VALUE 4. "#EC NOTEXT
  CONSTANTS co_filter_not TYPE i VALUE 3. "#EC NOTEXT
  CONSTANTS co_filter_or TYPE i VALUE 2. "#EC NOTEXT
  CONSTANTS co_filter_other TYPE i VALUE 0. "#EC NOTEXT
  CONSTANTS co_filter_parent TYPE i VALUE 9. "#EC NOTEXT

  METHODS accept_node
    IMPORTING
      !node TYPE REF TO if_ixml_node
    RETURNING
      VALUE(rval) TYPE abap_bool.
  METHODS clone
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
  METHODS get_type
    RETURNING
      VALUE(rval) TYPE i.
ENDINTERFACE.