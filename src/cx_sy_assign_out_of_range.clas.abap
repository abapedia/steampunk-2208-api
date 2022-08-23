CLASS cx_sy_assign_out_of_range DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_assign_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_assign_out_of_range TYPE c LENGTH 32
 VALUE 'FD0AB8396F051547E10000000A11447B'.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_assign_out_of_range IMPLEMENTATION.
ENDCLASS.