CLASS cl_abap_string_utilities DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS c2str_preserving_blanks
      IMPORTING
      !source TYPE c
      EXPORTING
      !dest TYPE string.
    CLASS-METHODS del_trailing_blanks
      CHANGING
      !str TYPE string.
    CLASS-METHODS edit_distance
      IMPORTING
      !val1 TYPE csequence
      !val2 TYPE csequence
      !cost_del TYPE i DEFAULT 1
      !cost_ins TYPE i DEFAULT 1
      !cost_sub TYPE i DEFAULT 1
      !max TYPE i DEFAULT 0
      RETURNING
      VALUE(result) TYPE i
      RAISING
      cx_parameter_invalid_range.
ENDCLASS.

CLASS cl_abap_string_utilities IMPLEMENTATION.
ENDCLASS.