CLASS xco_cp DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      boolean     TYPE REF TO cl_xco_cp_boolean_f READ-ONLY,
      data_object TYPE REF TO if_xco_cp_data_object_factory READ-ONLY,
      sy          TYPE REF TO if_xco_cp_std_sy READ-ONLY,
      current     TYPE REF TO if_xco_cp_std_current READ-ONLY.

    CLASS-METHODS:

      language
        IMPORTING
          iv_language        TYPE spras
        RETURNING
          VALUE(ro_language) TYPE REF TO if_xco_language,

      message
        IMPORTING
          is_message        TYPE symsg
        RETURNING
          VALUE(ro_message) TYPE REF TO if_xco_message,

      messages
        IMPORTING
          it_messages        TYPE sxco_t_messages
        RETURNING
          VALUE(ro_messages) TYPE REF TO if_xco_messages,

      regular_expression
        IMPORTING
          iv_value                     TYPE clike
          io_engine                    TYPE REF TO if_xco_regex_engine DEFAULT xco_cp_regular_expression=>engine->default
        RETURNING
          VALUE(ro_regular_expression) TYPE REF TO if_xco_regular_expression,

      string
        IMPORTING
          iv_value         TYPE clike
        RETURNING
          VALUE(ro_string) TYPE REF TO if_xco_string,

      strings
        IMPORTING
          it_value          TYPE string_table
        RETURNING
          VALUE(ro_strings) TYPE REF TO if_xco_strings,

      uuid
        IMPORTING
          iv_value       TYPE sysuuid_x16 OPTIONAL
        RETURNING
          VALUE(ro_uuid) TYPE REF TO if_xco_uuid,

      xstring
        IMPORTING
          iv_value          TYPE xstring
        RETURNING
          VALUE(ro_xstring) TYPE REF TO if_xco_xstring.
ENDCLASS.

CLASS xco_cp IMPLEMENTATION.
ENDCLASS.