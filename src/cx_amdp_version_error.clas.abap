CLASS cx_amdp_version_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PRIVATE.

  PUBLIC SECTION.

    CONSTANTS cx_amdp_version_error TYPE c LENGTH 32 VALUE '005056A207C81EE3AD9B300C300A5003' ##NO_TEXT.
    DATA top_class_version TYPE string READ-ONLY.
    DATA top_dbproc_version TYPE string READ-ONLY.
    DATA dbproc_class_incl_name TYPE string READ-ONLY.
    DATA dbproc_meth_incl_name TYPE string READ-ONLY.
    DATA dbproc_abap_line TYPE i READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !connection_name TYPE string OPTIONAL
      !top_dbproc_name TYPE string OPTIONAL
      !top_class_version TYPE string OPTIONAL
      !top_dbproc_version TYPE string OPTIONAL
      !dbproc_class_incl_name TYPE string OPTIONAL
      !dbproc_meth_incl_name TYPE string OPTIONAL
      !dbproc_abap_line TYPE i OPTIONAL.

    METHODS get_source_position
    REDEFINITION.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_amdp_version_error IMPLEMENTATION.
ENDCLASS.