INTERFACE if_xco_char_code_page PUBLIC.
  INTERFACES:
    if_xco_string_xstring_cnvrsn,
    if_xco_xstring_string_cnvrsn,

    if_xco_printable.

  METHODS:
    conversion
      IMPORTING
        iv_replacement_character TYPE if_xco_char_cp_conversion=>tv_replacement_character DEFAULT '#'
      RETURNING
        VALUE(ro_conversion)     TYPE REF TO if_xco_char_cp_conversion.
ENDINTERFACE.