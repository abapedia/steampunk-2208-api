CLASS cx_sy_conversion_no_number DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_no_number TYPE c LENGTH 32
 VALUE '995DB739AB5CE919E10000000A11447B'.
    DATA value TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(value) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_no_number IMPLEMENTATION.
ENDCLASS.