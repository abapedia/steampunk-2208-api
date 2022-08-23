CLASS cx_sy_offset_not_allowed DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_data_access_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_offset_not_allowed TYPE c LENGTH 32
 VALUE '960AB8396F051547E10000000A11447B'.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_offset_not_allowed IMPLEMENTATION.
ENDCLASS.