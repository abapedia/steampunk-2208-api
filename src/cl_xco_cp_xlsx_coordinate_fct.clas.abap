CLASS cl_xco_cp_xlsx_coordinate_fct DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      for_numeric_value
        IMPORTING
          iv_numeric_value     TYPE i
        RETURNING
          VALUE(ro_coordinate) TYPE REF TO cl_xco_xlsx_coordinate,
      for_alphabetic_value
        IMPORTING
          iv_alphabetic_value  TYPE clike
        RETURNING
          VALUE(ro_coordinate) TYPE REF TO cl_xco_xlsx_coordinate.

ENDCLASS.

CLASS cl_xco_cp_xlsx_coordinate_fct IMPLEMENTATION.
ENDCLASS.