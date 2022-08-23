CLASS cl_xco_abap_t_g_data DEFINITION PUBLIC
    INHERITING FROM cl_xco_abap_t_generic_data CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      reference
        RETURNING
          VALUE(ro_reference) TYPE REF TO cl_xco_abap_t_r_generic.

ENDCLASS.

CLASS cl_xco_abap_t_g_data IMPLEMENTATION.
ENDCLASS.