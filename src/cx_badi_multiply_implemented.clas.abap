CLASS cx_badi_multiply_implemented DEFINITION
  PUBLIC
  INHERITING FROM cx_badi_not_single_use
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_badi_multiply_implemented TYPE c LENGTH 32 VALUE '9F7828CF2928F24281238408F089B32B'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_badi_multiply_implemented IMPLEMENTATION.
ENDCLASS.