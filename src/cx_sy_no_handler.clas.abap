CLASS cx_sy_no_handler DEFINITION
  PUBLIC
  INHERITING FROM cx_no_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_no_handler TYPE c LENGTH 32
 VALUE '1F09B73915F6B645E10000000A11447B'.
    DATA classname TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(classname) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_no_handler IMPLEMENTATION.
ENDCLASS.