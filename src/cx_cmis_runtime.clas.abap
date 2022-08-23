CLASS cx_cmis_runtime DEFINITION
  PUBLIC
  INHERITING FROM cx_cmis_root
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_cmis_runtime TYPE c LENGTH 32 VALUE '005056AB5B8D1EE487D9803330411A3C' ##NO_TEXT.
    CONSTANTS item_expected TYPE c LENGTH 32 VALUE '005056A533E71ED9AE8500B2123C8E44' ##NO_TEXT.
    DATA item TYPE string.
    DATA source_string TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !message_text TYPE string OPTIONAL
      !item TYPE string OPTIONAL
      !source_string TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_cmis_runtime IMPLEMENTATION.
ENDCLASS.