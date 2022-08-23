INTERFACE if_ixml_ostream_core
  PUBLIC.

  INTERFACES if_ixml_stream_core.

  ALIASES get_encoding
    FOR if_ixml_stream_core~get_encoding.

  ALIASES set_encoding
    FOR if_ixml_stream_core~set_encoding.

  METHODS get_num_written
    RETURNING
      VALUE(rval) TYPE i.

  METHODS get_num_written_raw
    RETURNING
      VALUE(rval) TYPE i.

  METHODS get_pretty_print
    RETURNING
      VALUE(rval) TYPE abap_bool.

  METHODS set_pretty_print
    IMPORTING
      pretty_print TYPE abap_bool DEFAULT abap_true.

  METHODS get_indent
    RETURNING
      VALUE(rval) TYPE i.

  METHODS set_indent
    IMPORTING
      indent TYPE i.

  METHODS preserve_special_characters
    IMPORTING
      is_preserving TYPE abap_bool DEFAULT abap_true.

  METHODS skip_non_xml_characters
    IMPORTING
      is_skipping TYPE abap_bool DEFAULT abap_true.

ENDINTERFACE.