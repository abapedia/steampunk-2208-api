CLASS cx_sy_compression_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_compression_error TYPE c LENGTH 32 VALUE '877B4401C586C14C946B7A4F87CB71B8'. "#EC NOTEXT
    DATA fctname TYPE string.
    DATA errorcode TYPE i.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !fctname TYPE string OPTIONAL
      !errorcode TYPE i OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_compression_error IMPLEMENTATION.
ENDCLASS.