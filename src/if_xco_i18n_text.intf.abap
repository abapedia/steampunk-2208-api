INTERFACE if_xco_i18n_text PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    attribute TYPE REF TO if_xco_i18n_text_attribute READ-ONLY,
    value     TYPE REF TO if_xco_text READ-ONLY.

  METHODS:
    get_string_value
      RETURNING
        VALUE(rv_string_value) TYPE string.
ENDINTERFACE.