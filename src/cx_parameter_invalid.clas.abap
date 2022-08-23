CLASS cx_parameter_invalid DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_parameter_invalid TYPE c LENGTH 32
 VALUE '06690F3C8163FF17E10000000A11447B'.
    DATA parameter TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(parameter) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_parameter_invalid IMPLEMENTATION.
ENDCLASS.