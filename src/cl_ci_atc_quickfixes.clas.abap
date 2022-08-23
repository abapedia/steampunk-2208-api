CLASS cl_ci_atc_quickfixes DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES ty_quickfix_code TYPE c LENGTH 10.
    METHODS create_quickfix
      IMPORTING quickfix_code TYPE ty_quickfix_code
      RETURNING VALUE(fix) TYPE REF TO if_ci_atc_quickfix.
ENDCLASS.

CLASS cl_ci_atc_quickfixes IMPLEMENTATION.
ENDCLASS.