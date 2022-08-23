CLASS cx_sy_type_not_exact DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_arithmetic_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_type_not_exact TYPE c LENGTH 32 VALUE '001560AA0E081DEB8DE86B83D7284ED7'. "#EC NOTEXT
    DATA type TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !operation TYPE string OPTIONAL
      !type TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_type_not_exact IMPLEMENTATION.
ENDCLASS.