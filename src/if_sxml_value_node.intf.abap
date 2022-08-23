INTERFACE if_sxml_value_node
  PUBLIC.

  INTERFACES if_sxml_node.
  INTERFACES if_sxml_value.

  ALIASES type
    FOR if_sxml_node~type.
  ALIASES value_type
    FOR if_sxml_value~type.
  ALIASES get_value
    FOR if_sxml_value~get_value.
  ALIASES get_value_raw
    FOR if_sxml_value~get_value_raw.
  ALIASES set_value
    FOR if_sxml_value~set_value.
  ALIASES set_value_raw
    FOR if_sxml_value~set_value_raw.

ENDINTERFACE.