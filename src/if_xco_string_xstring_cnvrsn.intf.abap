INTERFACE if_xco_string_xstring_cnvrsn PUBLIC.
  METHODS:
    apply
      IMPORTING
        iv_string         TYPE string
      RETURNING
        VALUE(rv_xstring) TYPE xstring.
ENDINTERFACE.