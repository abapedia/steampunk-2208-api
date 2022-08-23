CLASS cx_cmis_unauthorized DEFINITION
  PUBLIC
  INHERITING FROM cx_cmis_root
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_cmis_unauthorized TYPE c LENGTH 32 VALUE '00505695007C1EE791BCF2B9BB31D2D6' ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !message_text TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_cmis_unauthorized IMPLEMENTATION.
ENDCLASS.