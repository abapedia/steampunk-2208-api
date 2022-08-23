CLASS cl_sxml_table_reader DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_sxml.
    INTERFACES if_sxml_nsuri_helper.
    INTERFACES if_sxml_reader.

    METHODS constructor
      IMPORTING
        !input TYPE STANDARD TABLE
      RAISING
        cx_sxml_illegal_argument_error.
    CLASS-METHODS create
      IMPORTING
        !input        TYPE STANDARD TABLE
      RETURNING
        VALUE(reader) TYPE REF TO if_sxml_reader
      RAISING
        cx_sxml_illegal_argument_error.

ENDCLASS.

CLASS cl_sxml_table_reader IMPLEMENTATION.
ENDCLASS.