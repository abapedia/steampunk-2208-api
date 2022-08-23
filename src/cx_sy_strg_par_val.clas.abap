CLASS cx_sy_strg_par_val DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_strg_par_val TYPE c LENGTH 32 VALUE '0B0E045C1F15D548908D22AC33179A2D'. "#EC NOTEXT
    CONSTANTS no_result TYPE c LENGTH 32 VALUE '001560AA0E081DEB9CFB9C4EC43004FE'. "#EC NOTEXT
    DATA value TYPE string.
    DATA parameter TYPE string.
    DATA function TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL
      !parameter TYPE string OPTIONAL
      !function TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_strg_par_val IMPLEMENTATION.
ENDCLASS.