INTERFACE if_xco_string_composition PUBLIC.
  METHODS:
    apply
      IMPORTING
        io_strings       TYPE REF TO if_xco_strings
      RETURNING
        VALUE(ro_string) TYPE REF TO if_xco_string.
ENDINTERFACE.