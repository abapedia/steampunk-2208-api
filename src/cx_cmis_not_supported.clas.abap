CLASS cx_cmis_not_supported DEFINITION
  PUBLIC
  INHERITING FROM cx_cmis_root
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_cmis_not_supported TYPE c LENGTH 32 VALUE '005056AB5B8D1EE487D97BEE2CD41A3B' ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !message_text TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_cmis_not_supported IMPLEMENTATION.
ENDCLASS.