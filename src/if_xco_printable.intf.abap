INTERFACE if_xco_printable PUBLIC.
  METHODS:
    get_text
      RETURNING
        VALUE(ro_text) TYPE REF TO if_xco_text.
ENDINTERFACE.