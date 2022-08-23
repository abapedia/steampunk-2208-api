
INTERFACE if_ixml_encoding
  PUBLIC.

  INTERFACES if_ixml_unknown.

  ALIASES query_interface
    FOR if_ixml_unknown~query_interface.

  CONSTANTS co_big_endian TYPE i VALUE 1. "#EC NOTEXT
  CONSTANTS co_little_endian TYPE i VALUE 0. "#EC NOTEXT
  CONSTANTS co_none TYPE i VALUE 0. "#EC NOTEXT
  CONSTANTS co_platform_endian TYPE i VALUE 4. "#EC NOTEXT
  CONSTANTS co_unusual2143 TYPE i VALUE 2. "#EC NOTEXT
  CONSTANTS co_unusual3412 TYPE i VALUE 3. "#EC NOTEXT

  METHODS clone
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_encoding.
  METHODS get_byte_order
    RETURNING
      VALUE(rval) TYPE i.
  METHODS get_character_set
    RETURNING
      VALUE(rval) TYPE string.
  METHODS set_byte_order
    IMPORTING
      !byte_order TYPE i
    RETURNING
      VALUE(rval) TYPE abap_bool.
  METHODS set_character_set
    IMPORTING
      !charset TYPE string
    RETURNING
      VALUE(rval) TYPE abap_bool.
ENDINTERFACE.