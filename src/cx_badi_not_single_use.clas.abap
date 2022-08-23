CLASS cx_badi_not_single_use DEFINITION
  PUBLIC
  INHERITING FROM cx_badi
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_badi_not_single_use IMPLEMENTATION.
ENDCLASS.