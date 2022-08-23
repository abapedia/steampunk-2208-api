CLASS cx_parameter_invalid_range DEFINITION
  PUBLIC
  INHERITING FROM cx_parameter_invalid
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_parameter_invalid_range TYPE c LENGTH 32
 VALUE '9FB7E23B75B7157FE10000000A11447B'.
    DATA value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(parameter) TYPE string OPTIONAL
      VALUE(value) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_parameter_invalid_range IMPLEMENTATION.
ENDCLASS.