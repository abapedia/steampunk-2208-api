CLASS cx_sy_buffer_overflow DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_buffer_overflow TYPE c LENGTH 32
 VALUE 'AEDDED8EA07FC642935C73E31C16702F'. "#EC NOTEXT
    DATA buflen TYPE i.
    DATA neededlen TYPE i.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(buflen) TYPE i OPTIONAL
      VALUE(neededlen) TYPE i OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_buffer_overflow IMPLEMENTATION.
ENDCLASS.