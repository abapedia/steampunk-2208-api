CLASS cl_xco_cs_line_number_flavor DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_cs_line_number_flavor FINAL METHODS get_implementation.

  PROTECTED SECTION.
    METHODS:
      get_line_number_string ABSTRACT
        IMPORTING
          iv_line_number               TYPE string
        RETURNING
          VALUE(rv_line_number_string) TYPE string,

      get_line_number ABSTRACT
        IMPORTING
          io_call_stack_line    TYPE REF TO not_released
        RETURNING
          VALUE(rv_line_number) TYPE i.

ENDCLASS.

CLASS cl_xco_cs_line_number_flavor IMPLEMENTATION.
ENDCLASS.