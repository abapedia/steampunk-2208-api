INTERFACE if_sxml_attribute
  PUBLIC.

  INTERFACES if_sxml_named.
  INTERFACES if_sxml_value.

  ALIASES prefix
    FOR if_sxml_named~prefix.
  ALIASES qname
    FOR if_sxml_named~qname.
  ALIASES value_type
    FOR if_sxml_value~type.
  ALIASES get_value
    FOR if_sxml_value~get_value.
  ALIASES get_value_raw
    FOR if_sxml_value~get_value_raw.
  ALIASES set_prefix
    FOR if_sxml_named~set_prefix.
  ALIASES set_value
    FOR if_sxml_value~set_value.
  ALIASES set_value_raw
    FOR if_sxml_value~set_value_raw.

  TYPES:
    attributes TYPE STANDARD TABLE OF REF TO if_sxml_attribute WITH DEFAULT KEY.

ENDINTERFACE.