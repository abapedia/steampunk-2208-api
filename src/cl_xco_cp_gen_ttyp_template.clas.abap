CLASS cl_xco_cp_gen_ttyp_template DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_cp_gen_ttyp_template FINAL METHODS get.

  PROTECTED SECTION.
    METHODS:
      constructor
        IMPORTING
          io_standard_template TYPE REF TO not_released,

      get_additional_check ABSTRACT
        RETURNING
          VALUE(ro_additional_check) TYPE REF TO if_xco_dp_check.

ENDCLASS.

CLASS cl_xco_cp_gen_ttyp_template IMPLEMENTATION.
ENDCLASS.