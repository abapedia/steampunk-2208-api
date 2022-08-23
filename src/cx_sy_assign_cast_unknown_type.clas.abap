CLASS cx_sy_assign_cast_unknown_type DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_assign_cast_error
  CREATE PROTECTED.

  PUBLIC SECTION.

    CONSTANTS cx_sy_assign_cast_unknown_type TYPE c LENGTH 32
 VALUE 'E60AB8396F051547E10000000A11447B'.
    DATA typename TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(typename) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_assign_cast_unknown_type IMPLEMENTATION.
ENDCLASS.