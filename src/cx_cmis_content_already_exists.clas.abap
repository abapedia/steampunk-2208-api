CLASS cx_cmis_content_already_exists DEFINITION
  PUBLIC
  INHERITING FROM cx_cmis_root
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_cmis_content_already_exists TYPE c LENGTH 32 VALUE '005056AB5B8D1EE487D972E2D3A61A36' ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !message_text TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_cmis_content_already_exists IMPLEMENTATION.
ENDCLASS.