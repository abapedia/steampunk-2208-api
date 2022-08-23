INTERFACE if_xco_string_builder PUBLIC.
  METHODS:
    append
      IMPORTING
        iv_string TYPE clike,

    get_string
      RETURNING
        VALUE(rv_string) TYPE string.
ENDINTERFACE.