INTERFACE if_sxml_value
  PUBLIC.

  TYPES value_type TYPE i.

  CONSTANTS co_vt_none TYPE value_type VALUE 1.             "#EC NOTEXT
  CONSTANTS co_vt_text TYPE value_type VALUE 2.             "#EC NOTEXT
  CONSTANTS co_vt_raw TYPE value_type VALUE 3.              "#EC NOTEXT
  CONSTANTS co_vt_any TYPE value_type VALUE 99.             "#EC NOTEXT
  DATA type TYPE value_type.

  METHODS get_value
    RETURNING
      VALUE(value) TYPE string.
  METHODS get_value_raw
    RETURNING
      VALUE(value) TYPE xstring.
  METHODS set_value
    IMPORTING
      !value TYPE string.
  METHODS set_value_raw
    IMPORTING
      !value TYPE xstring.

ENDINTERFACE.