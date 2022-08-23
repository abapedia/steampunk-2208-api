CLASS cx_sy_conversion_no_date DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_no_date TYPE c LENGTH 32 VALUE '001560AA0E0802DBA49B6043BBC2C7C1'. "#EC NOTEXT
    DATA value TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_no_date IMPLEMENTATION.
ENDCLASS.