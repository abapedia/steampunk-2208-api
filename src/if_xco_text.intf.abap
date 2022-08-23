INTERFACE if_xco_text PUBLIC.
  METHODS:
    get_lines
      RETURNING
        VALUE(ro_lines) TYPE REF TO if_xco_strings.
ENDINTERFACE.