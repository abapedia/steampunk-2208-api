INTERFACE if_ixml_parse_error_core
  PUBLIC.

  CONSTANTS co_error TYPE i VALUE 3.
  CONSTANTS co_fatal_error TYPE i VALUE 4.
  CONSTANTS co_info TYPE i VALUE 1.
  CONSTANTS co_severity_xxx TYPE i VALUE 5.
  CONSTANTS co_warning TYPE i VALUE 2.

  METHODS get_column
    RETURNING
      VALUE(rval) TYPE i.

  METHODS get_entity
    RETURNING
      VALUE(rval) TYPE string.

  METHODS get_line
    RETURNING
      VALUE(rval) TYPE i.

  METHODS get_number
    RETURNING
      VALUE(rval) TYPE i.

  METHODS get_offset
    RETURNING
      VALUE(rval) TYPE i.

  METHODS get_reason
    RETURNING
      VALUE(rval) TYPE string.

  METHODS get_severity
    RETURNING
      VALUE(rval) TYPE i.

  METHODS get_severity_text
    RETURNING
      VALUE(rval) TYPE string.

ENDINTERFACE.