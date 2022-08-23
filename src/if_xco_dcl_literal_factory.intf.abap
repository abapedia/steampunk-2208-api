INTERFACE if_xco_dcl_literal_factory PUBLIC.
  METHODS:
    numeric
      IMPORTING
        iv_value          TYPE numeric
      RETURNING
        VALUE(ro_numeric) TYPE REF TO if_xco_dcl_literal,

    character
      IMPORTING
        iv_value            TYPE clike
      RETURNING
        VALUE(ro_character) TYPE REF TO if_xco_dcl_literal.
ENDINTERFACE.