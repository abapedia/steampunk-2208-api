CLASS cx_sy_assign_cast_illegal_cast DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_assign_cast_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_assign_cast_illegal_cast TYPE c LENGTH 32
 VALUE 'D20AB8396F051547E10000000A11447B'.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_assign_cast_illegal_cast IMPLEMENTATION.
ENDCLASS.