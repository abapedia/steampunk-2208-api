INTERFACE if_ixml_renderer_core
  PUBLIC.

  METHODS is_normalizing
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS render
    RETURNING
      VALUE(rval) TYPE i.

  METHODS set_normalizing
    IMPORTING
      is_normalizing TYPE abap_bool DEFAULT abap_true
    RETURNING
      VALUE(rval)     TYPE abap_bool.

  METHODS set_no_escaping
    IMPORTING
      no_escaping TYPE string.

ENDINTERFACE.