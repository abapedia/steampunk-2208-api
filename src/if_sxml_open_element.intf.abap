INTERFACE if_sxml_open_element
  PUBLIC.

  INTERFACES if_sxml_named.
  INTERFACES if_sxml_node.

  ALIASES prefix
    FOR if_sxml_named~prefix.
  ALIASES qname
    FOR if_sxml_named~qname.
  ALIASES type
    FOR if_sxml_node~type.
  ALIASES set_prefix
    FOR if_sxml_named~set_prefix.

  METHODS get_attributes
    RETURNING
      VALUE(attributes) TYPE if_sxml_attribute=>attributes.
  METHODS get_attribute_value
    IMPORTING
      !name TYPE string
      !nsuri TYPE string OPTIONAL
    RETURNING
      VALUE(value) TYPE REF TO if_sxml_value.
  METHODS set_attribute
    IMPORTING
      !name TYPE string
      !nsuri TYPE string OPTIONAL
      !prefix TYPE string OPTIONAL
      !value TYPE string OPTIONAL
    RETURNING
      VALUE(attribute) TYPE REF TO if_sxml_attribute
    RAISING
      cx_sxml_name_error.
  METHODS set_attributes
    IMPORTING
      !attributes TYPE if_sxml_attribute=>attributes
    RAISING
      cx_sxml_name_error.

ENDINTERFACE.