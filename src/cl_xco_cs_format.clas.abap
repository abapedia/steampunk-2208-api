CLASS cl_xco_cs_format DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_cs_format FINAL METHODS get_implementation.

  PROTECTED SECTION.
    METHODS:
      get_visitor ABSTRACT
        IMPORTING
          io_text_builder   TYPE REF TO not_released
        RETURNING
          VALUE(ro_visitor) TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_cs_format IMPLEMENTATION.
ENDCLASS.