CLASS cx_sy_sql_redirect_error DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_open_sql_error
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_sql_redirect_error TYPE c LENGTH 32 VALUE '005056AA0E031ED79CD88F2E21862107' ##NO_TEXT.
    CONSTANTS redirect_inconsistency TYPE c LENGTH 32 VALUE '005056AA0E031ED79CD97ABF4B160107' ##NO_TEXT.
    DATA entity TYPE string READ-ONLY.
    DATA redirect TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !sqlcode TYPE i OPTIONAL
      !sqlmsg TYPE string OPTIONAL
      !entity TYPE string OPTIONAL
      !redirect TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_sql_redirect_error IMPLEMENTATION.
ENDCLASS.