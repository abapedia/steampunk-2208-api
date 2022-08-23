CLASS cx_cmis_invalid_argument DEFINITION
  PUBLIC
  INHERITING FROM cx_cmis_root
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_cmis_invalid_argument TYPE c LENGTH 32 VALUE '005056AB5B8D1EE487D978BAA4961A3A' ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !message_text TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_cmis_invalid_argument IMPLEMENTATION.
ENDCLASS.