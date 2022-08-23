CLASS cx_parameter_invalid_type DEFINITION
  PUBLIC
  INHERITING FROM cx_parameter_invalid
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_parameter_invalid_type TYPE c LENGTH 32
 VALUE '22B7E23BEAB6167FE10000000A11447B'.
    DATA type TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(parameter) TYPE string OPTIONAL
      VALUE(type) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_parameter_invalid_type IMPLEMENTATION.
ENDCLASS.