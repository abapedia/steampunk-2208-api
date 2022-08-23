INTERFACE if_xco_ao_typing_definition PUBLIC.
  INTERFACES:
    if_xco_printable.

  METHODS:
    has_value
      RETURNING
        VALUE(rv_has_value) TYPE abap_bool,

    get_value
      RETURNING
        VALUE(rv_value) TYPE string,

    has_source
      RETURNING
        VALUE(rv_has_source) TYPE abap_bool,

    get_source
      RETURNING
        VALUE(rv_source) TYPE string.
ENDINTERFACE.