INTERFACE if_xco_xstring PUBLIC.
  DATA:
    value TYPE xstring READ-ONLY.

  METHODS:
    as_string
      IMPORTING
        io_conversion    TYPE REF TO if_xco_xstring_string_cnvrsn
      RETURNING
        VALUE(ro_string) TYPE REF TO if_xco_string.
ENDINTERFACE.