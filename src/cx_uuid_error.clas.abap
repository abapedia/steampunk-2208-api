CLASS cx_uuid_error DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_uuid_error TYPE c LENGTH 32 VALUE 'A7570F4452337543E10000000A15523C'. "#EC NOTEXT
    CONSTANTS error TYPE i VALUE 1. "#EC NOTEXT
    CONSTANTS mem_alloc_error TYPE i VALUE 2. "#EC NOTEXT
    CONSTANTS typsize_error TYPE i VALUE 3. "#EC NOTEXT
    DATA err_type TYPE i.
    DATA err_text TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !err_type TYPE i OPTIONAL
      !err_text TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_uuid_error IMPLEMENTATION.
ENDCLASS.