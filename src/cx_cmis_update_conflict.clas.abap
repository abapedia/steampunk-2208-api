CLASS cx_cmis_update_conflict DEFINITION
  PUBLIC
  INHERITING FROM cx_cmis_root
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_cmis_update_conflict TYPE c LENGTH 32 VALUE '005056AB5B8D1EE487D9828119A59A3C' ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !message_text TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_cmis_update_conflict IMPLEMENTATION.
ENDCLASS.