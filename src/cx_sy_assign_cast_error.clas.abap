CLASS cx_sy_assign_cast_error DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_assign_error
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_assign_cast_error TYPE c LENGTH 32
 VALUE 'BE0AB8396F051547E10000000A11447B'.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_assign_cast_error IMPLEMENTATION.
ENDCLASS.