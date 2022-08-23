CLASS cx_sy_conversion_codepage_ex DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_codepage_ex TYPE c LENGTH 32 VALUE '001560AA0E081DDBAE8950436F7593A8'. "#EC NOTEXT
    DATA offset TYPE i.
    DATA value TYPE string.
    DATA character TYPE c LENGTH 6.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !offset TYPE i OPTIONAL
      !value TYPE string OPTIONAL
      !character TYPE i OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_codepage_ex IMPLEMENTATION.
ENDCLASS.