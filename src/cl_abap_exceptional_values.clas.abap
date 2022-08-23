CLASS cl_abap_exceptional_values DEFINITION
  PUBLIC
  ABSTRACT
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CLASS-METHODS get_max_value
      IMPORTING
      !in TYPE any
      RETURNING
      VALUE(out) TYPE REF TO data.
    CLASS-METHODS get_min_value
      IMPORTING
      !in TYPE any
      RETURNING
      VALUE(out) TYPE REF TO data.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_exceptional_values IMPLEMENTATION.
ENDCLASS.