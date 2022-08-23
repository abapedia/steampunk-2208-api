CLASS cx_cmis_root DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_cmis_root TYPE c LENGTH 32 VALUE '005056AB5B8D1EE487D97F7D9BFC9A3C' ##NO_TEXT.
    DATA message_text TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !message_text TYPE string OPTIONAL.

    METHODS get_source_position
    REDEFINITION.
    METHODS if_message~get_longtext
    REDEFINITION.
    METHODS if_message~get_text
    REDEFINITION.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_cmis_root IMPLEMENTATION.
ENDCLASS.