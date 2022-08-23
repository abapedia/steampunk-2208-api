INTERFACE if_xco_string_decomposition PUBLIC.
  METHODS:
    apply
      IMPORTING
        io_string         TYPE REF TO if_xco_string
      RETURNING
        VALUE(ro_strings) TYPE REF TO if_xco_strings.
ENDINTERFACE.