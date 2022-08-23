INTERFACE if_ixml_stream_factory_core
  PUBLIC.

  METHODS create_istream_itable
    IMPORTING
      size       TYPE i
      table      TYPE STANDARD TABLE
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_istream_core.

  METHODS create_istream_xstring
    IMPORTING
      string     TYPE xstring
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_istream_core.

  METHODS create_ostream_itable
    IMPORTING
      table      TYPE STANDARD TABLE
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_ostream_core.

  METHODS create_ostream_xstring
    IMPORTING
      string     TYPE xstring
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_ostream_core.

ENDINTERFACE.