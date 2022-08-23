CLASS cl_xco_xlsx_coordinate DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      get_numeric_value ABSTRACT
        RETURNING
          VALUE(rv_numeric_value) TYPE i,
      get_alphabetic_value FINAL
        RETURNING
          VALUE(rv_alphabetic_value) TYPE string,
      shift FINAL
        IMPORTING
          iv_offset            TYPE i
        RETURNING
          VALUE(ro_coordinate) TYPE REF TO cl_xco_xlsx_coordinate.

  PROTECTED SECTION.
ENDCLASS.

CLASS cl_xco_xlsx_coordinate IMPLEMENTATION.
ENDCLASS.