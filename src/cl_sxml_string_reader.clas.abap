CLASS cl_sxml_string_reader DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_sxml.
    INTERFACES if_sxml_nsuri_helper.
    INTERFACES if_sxml_reader.

    METHODS constructor
      IMPORTING
        !input           TYPE xstring
        !normalizing     TYPE abap_bool DEFAULT abap_false
        !keep_whitespace TYPE abap_bool DEFAULT abap_false.
    CLASS-METHODS create
      IMPORTING
        !input           TYPE xstring
        !normalizing     TYPE abap_bool DEFAULT abap_false
        !keep_whitespace TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(reader)    TYPE REF TO if_sxml_reader.

ENDCLASS.

CLASS cl_sxml_string_reader IMPLEMENTATION.
ENDCLASS.