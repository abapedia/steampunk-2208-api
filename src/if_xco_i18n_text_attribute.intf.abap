INTERFACE if_xco_i18n_text_attribute PUBLIC.
  INTERFACES:
    if_xco_text,

    if_xco_printable.

  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_i18n_text_attribute WITH DEFAULT KEY.

  DATA:
    value TYPE sxco_i18n_text_attribute READ-ONLY.

  METHODS:
    get_text_for_string
      IMPORTING
        iv_string      TYPE string
      RETURNING
        VALUE(ro_text) TYPE REF TO if_xco_text,
    get_string_for_text
      IMPORTING
        io_text          TYPE REF TO if_xco_text
      RETURNING
        VALUE(rv_string) TYPE string,

    create_text
      IMPORTING
        io_value       TYPE REF TO if_xco_text
      RETURNING
        VALUE(ro_text) TYPE REF TO if_xco_i18n_text.
ENDINTERFACE.