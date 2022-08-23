INTERFACE if_sxml_close_element
  PUBLIC.

  INTERFACES if_sxml_named.
  INTERFACES if_sxml_node.

  ALIASES prefix
    FOR if_sxml_named~prefix.
  ALIASES qname
    FOR if_sxml_named~qname.
  ALIASES type
    FOR if_sxml_node~type.

ENDINTERFACE.