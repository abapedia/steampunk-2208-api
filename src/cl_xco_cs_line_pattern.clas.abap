CLASS cl_xco_cs_line_pattern DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_cs_line_pattern FINAL METHODS get_implementation.

  PROTECTED SECTION.
    METHODS:
      get_visitor ABSTRACT
        IMPORTING
          it_matching_positions TYPE REF TO not_released_ttyp
        RETURNING
          VALUE(ro_visitor)     TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_cs_line_pattern IMPLEMENTATION.
ENDCLASS.