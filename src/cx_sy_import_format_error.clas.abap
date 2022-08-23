CLASS cx_sy_import_format_error DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_import_mismatch_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_import_format_error TYPE c LENGTH 32 VALUE '690BB8396F051547E10000000A11447B'. "#EC NOTEXT
    DATA source_extract TYPE xstring.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !source_extract TYPE xstring OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_import_format_error IMPLEMENTATION.
ENDCLASS.