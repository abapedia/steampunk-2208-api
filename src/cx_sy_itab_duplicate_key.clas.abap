CLASS cx_sy_itab_duplicate_key DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_itab_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_itab_duplicate_key TYPE c LENGTH 32 VALUE '001560AA0E081DEB93F6F034EFE504E2'. "#EC NOTEXT
    DATA key_name TYPE string.
    DATA key_comp_values TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !key_name TYPE string OPTIONAL
      !key_comp_values TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_itab_duplicate_key IMPLEMENTATION.
ENDCLASS.