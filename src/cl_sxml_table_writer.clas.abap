CLASS cl_sxml_table_writer DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        !type       TYPE if_sxml=>xml_stream_type
        !tabledescr TYPE REF TO cl_abap_tabledescr
        !linesize   TYPE i
        !encoding   TYPE string
      RAISING
        cx_sxml_illegal_argument_error.

    METHODS get_output
      IMPORTING
        !retain_output TYPE abap_bool DEFAULT abap_true
      EXPORTING
        !output        TYPE STANDARD TABLE.
    CLASS-METHODS create
      IMPORTING
        !type         TYPE if_sxml=>xml_stream_type DEFAULT if_sxml=>co_xt_xml10
        !tabledescr   TYPE REF TO cl_abap_tabledescr OPTIONAL
        !linesize     TYPE i DEFAULT 1024
        !encoding     TYPE string DEFAULT `UTF-8`
      RETURNING
        VALUE(writer) TYPE REF TO cl_sxml_table_writer
      RAISING
        cx_sxml_illegal_argument_error.

ENDCLASS.

CLASS cl_sxml_table_writer IMPLEMENTATION.
ENDCLASS.