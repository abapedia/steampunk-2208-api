INTERFACE if_ixml_istream_core
  PUBLIC.

  INTERFACES if_ixml_stream_core.

  ALIASES get_encoding
    FOR if_ixml_stream_core~get_encoding.

  ALIASES set_encoding
    FOR if_ixml_stream_core~set_encoding.

  CONSTANTS dtd_allowed TYPE i VALUE 0.
  CONSTANTS dtd_restricted TYPE i VALUE 1.
  CONSTANTS dtd_prohibited TYPE i VALUE 2.

  METHODS get_num_read
    RETURNING
      VALUE(rval) TYPE i.

  METHODS get_num_read_raw
    RETURNING
      VALUE(rval) TYPE i.

  METHODS set_dtd_restriction
    IMPORTING
      level TYPE i DEFAULT dtd_restricted.

  METHODS set_max_expansion
    IMPORTING
      multiplier TYPE i DEFAULT 10.

  METHODS get_dtd_restriction
    RETURNING
      VALUE(rval) TYPE i.

  METHODS get_max_expansion
    RETURNING
      VALUE(rval) TYPE i.

ENDINTERFACE.