CLASS cx_amdp_dbproc_create_failed DEFINITION
  PUBLIC
  FINAL
  INHERITING FROM cx_amdp_creation_error
  CREATE PROTECTED.

  PUBLIC SECTION.

    CONSTANTS cx_amdp_dbproc_create_failed TYPE c LENGTH 32 VALUE '005056A207C81EE4B0E9D52FDF052BD5' ##NO_TEXT.
    DATA dbproc_name TYPE string READ-ONLY.
    DATA dbproc_class_incl_name TYPE string READ-ONLY.
    DATA dbproc_meth_incl_name TYPE string READ-ONLY.
    DATA dbproc_abap_line TYPE i READ-ONLY.
    DATA sql_message TYPE string READ-ONLY.
    DATA sql_code TYPE i READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !connection_name TYPE string OPTIONAL
      !top_dbproc_name TYPE string OPTIONAL
      !dbproc_name TYPE string OPTIONAL
      !dbproc_class_incl_name TYPE string OPTIONAL
      !dbproc_meth_incl_name TYPE string OPTIONAL
      !dbproc_abap_line TYPE i OPTIONAL
      !sql_message TYPE string OPTIONAL
      !sql_code TYPE i OPTIONAL.

    METHODS get_source_position
    REDEFINITION.
ENDCLASS.

CLASS cx_amdp_dbproc_create_failed IMPLEMENTATION.
ENDCLASS.