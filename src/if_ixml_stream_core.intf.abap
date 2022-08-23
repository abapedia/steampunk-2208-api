INTERFACE if_ixml_stream_core
  PUBLIC.

  METHODS get_encoding
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_encoding.

  METHODS set_encoding
    IMPORTING
      encoding   TYPE REF TO if_ixml_encoding
    RETURNING
      VALUE(rval) TYPE abap_bool.

ENDINTERFACE.