CLASS cx_sy_arithmetic_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_arithmetic_error TYPE c LENGTH 32 VALUE 'F05CB739AB5CE919E10000000A11447B'. "#EC NOTEXT
    DATA operation TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !operation TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_arithmetic_error IMPLEMENTATION.
ENDCLASS.