CLASS cx_sy_conversion_overflow DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_overflow TYPE c LENGTH 32
 VALUE '5E429A39EE412B43E10000000A11447B'.
    DATA value TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(value) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_overflow IMPLEMENTATION.
ENDCLASS.