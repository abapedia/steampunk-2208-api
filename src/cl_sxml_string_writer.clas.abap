CLASS cl_sxml_string_writer DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        !type                     TYPE if_sxml=>xml_stream_type OPTIONAL
        !ignore_conversion_errors TYPE abap_bool DEFAULT abap_false
        !normalizing              TYPE abap_bool DEFAULT abap_false
        !no_empty_elements        TYPE abap_bool DEFAULT abap_false
        !encoding                 TYPE string DEFAULT `UTF-8`
      RAISING
        cx_sxml_illegal_argument_error.

    METHODS get_output
      IMPORTING
        !retain_output TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(output)  TYPE xstring.
    CLASS-METHODS create
      IMPORTING
        !type                     TYPE if_sxml=>xml_stream_type DEFAULT if_sxml=>co_xt_xml10
        !ignore_conversion_errors TYPE abap_bool DEFAULT abap_false
        !normalizing              TYPE abap_bool DEFAULT abap_false
        !no_empty_elements        TYPE abap_bool DEFAULT abap_false
        !encoding                 TYPE string DEFAULT `UTF-8`
          PREFERRED PARAMETER type
      RETURNING
        VALUE(writer)             TYPE REF TO cl_sxml_string_writer
      RAISING
        cx_sxml_illegal_argument_error.

ENDCLASS.

CLASS cl_sxml_string_writer IMPLEMENTATION.
ENDCLASS.