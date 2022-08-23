CLASS cx_badi_not_implemented DEFINITION
  PUBLIC
  INHERITING FROM cx_badi_not_single_use
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_badi_not_implemented TYPE c LENGTH 32 VALUE '001560AA0E0802DBBA92BE80CC82C062'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_badi_not_implemented IMPLEMENTATION.
ENDCLASS.