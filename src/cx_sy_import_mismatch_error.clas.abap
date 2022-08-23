CLASS cx_sy_import_mismatch_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_import_mismatch_error TYPE c LENGTH 32 VALUE '690BB8396F051547E10000000A11447B'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_import_mismatch_error IMPLEMENTATION.
ENDCLASS.