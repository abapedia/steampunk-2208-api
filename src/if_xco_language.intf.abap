INTERFACE if_xco_language PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    tv_name                  TYPE c LENGTH 16,
    tv_long_text_description TYPE c LENGTH 72.

  DATA:
    value TYPE spras READ-ONLY.

  METHODS:
    as
      IMPORTING
        io_format        TYPE REF TO if_xco_lang_format
      RETURNING
        VALUE(rv_string) TYPE string,

    get_name
      RETURNING
        VALUE(rv_name) TYPE tv_name,

    get_long_text_description
      RETURNING
        VALUE(rv_long_text_description) TYPE tv_long_text_description.
ENDINTERFACE.