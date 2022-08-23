INTERFACE if_xco_xstring_string_cnvrsn PUBLIC.
  METHODS:
    apply
      IMPORTING
        iv_xstring       TYPE xstring
      RETURNING
        VALUE(rv_string) TYPE string.
ENDINTERFACE.