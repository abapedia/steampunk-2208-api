CLASS cx_amdp_creation_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PRIVATE.

  PUBLIC SECTION.

    CONSTANTS cx_amdp_creation_error TYPE c LENGTH 32 VALUE '005056A207C81EE3AD9B33095B77D003' ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid          LIKE textid     OPTIONAL
      !previous        LIKE previous   OPTIONAL
      !connection_name TYPE string     OPTIONAL
      !top_dbproc_name TYPE string     OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_amdp_creation_error IMPLEMENTATION.
ENDCLASS.