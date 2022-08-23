CLASS cx_sy_invalid_submatch DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_matcher
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_invalid_submatch TYPE c LENGTH 32 VALUE '4249B52E5DC02E85E10000000A1146EE'. "#EC NOTEXT
    DATA group TYPE int4.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !pattern TYPE string OPTIONAL
      !group TYPE int4 OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_invalid_submatch IMPLEMENTATION.
ENDCLASS.