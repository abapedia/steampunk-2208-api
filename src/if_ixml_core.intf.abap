INTERFACE if_ixml_core
  PUBLIC.

  METHODS create_document
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_document.

  METHODS create_encoding
    IMPORTING
      byte_order    TYPE i OPTIONAL
      character_set TYPE string
    RETURNING
      VALUE(rval)    TYPE REF TO if_ixml_encoding.

  METHODS create_parser
    IMPORTING
      document       TYPE REF TO if_ixml_document
      istream        TYPE REF TO if_ixml_istream_core
      stream_factory TYPE REF TO if_ixml_stream_factory_core
    RETURNING
      VALUE(rval)     TYPE REF TO if_ixml_parser_core.

  METHODS create_renderer
    IMPORTING
      document   TYPE REF TO if_ixml_document
      ostream    TYPE REF TO if_ixml_ostream_core
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_renderer_core.

  METHODS create_stream_factory
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_stream_factory_core.

ENDINTERFACE.