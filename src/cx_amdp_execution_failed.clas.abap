CLASS cx_amdp_execution_failed DEFINITION
  PUBLIC
  FINAL
  INHERITING FROM cx_amdp_execution_error
  CREATE PRIVATE.

  PUBLIC SECTION.

    CONSTANTS cx_amdp_execution_failed TYPE c LENGTH 32 VALUE '005056A207C81EE4B0EA10FEFA948CA4' ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !connection_name TYPE string OPTIONAL
      !top_dbproc_name TYPE string OPTIONAL
      !sql_code TYPE i OPTIONAL
      !sql_message TYPE string OPTIONAL
      !dbproc_class_incl_name TYPE string OPTIONAL
      !dbproc_meth_incl_name TYPE string OPTIONAL
      !dbproc_abap_line TYPE i OPTIONAL
      !dbproc_name TYPE string OPTIONAL.

    METHODS get_source_position
    REDEFINITION.
ENDCLASS.

CLASS cx_amdp_execution_failed IMPLEMENTATION.
ENDCLASS.