CLASS cx_sy_itab_dyn_loop DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_itab_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_itab_dyn_loop TYPE c LENGTH 32 VALUE '001A4BD2B24A02DCABD33930D10E539F'. "#EC NOTEXT
    DATA token TYPE string.
    DATA row TYPE i.
    DATA column TYPE i.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !token TYPE string OPTIONAL
      !row TYPE i OPTIONAL
      !column TYPE i OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_itab_dyn_loop IMPLEMENTATION.
ENDCLASS.