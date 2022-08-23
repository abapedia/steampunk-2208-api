INTERFACE if_ixml_xpath
  PUBLIC.

  METHODS evaluate_expression
    IMPORTING
      !node TYPE REF TO if_ixml_node
      !parameters TYPE sxsltepars OPTIONAL
      !ids_are_ordered TYPE abap_bool DEFAULT abap_false
    RETURNING
      VALUE(nodes) TYPE REF TO if_ixml_node_collection.
ENDINTERFACE.