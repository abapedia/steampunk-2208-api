CLASS cx_amdp_version_mismatch DEFINITION
  PUBLIC
  FINAL
  INHERITING FROM cx_amdp_version_error
  CREATE PROTECTED.

  PUBLIC SECTION.

    CONSTANTS cx_amdp_version_mismatch TYPE c LENGTH 32 VALUE '005056A207C81EE3AE9EAE97EA279E95' ##NO_TEXT.
    DATA top_class_name TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid             LIKE textid OPTIONAL
      !previous           LIKE previous OPTIONAL
      !connection_name    TYPE string OPTIONAL
      !top_dbproc_name    TYPE string OPTIONAL
      !top_class_version  TYPE string OPTIONAL
      !top_dbproc_version TYPE string OPTIONAL
      !top_class_name     TYPE string OPTIONAL.
ENDCLASS.

CLASS cx_amdp_version_mismatch IMPLEMENTATION.
ENDCLASS.