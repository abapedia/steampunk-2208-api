CLASS cl_xco_abap_t_g_object DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_abap_token FINAL METHODS get_source.

    METHODS:
      reference
        RETURNING
          VALUE(ro_reference) TYPE REF TO cl_xco_abap_t_r_generic.

ENDCLASS.

CLASS cl_xco_abap_t_g_object IMPLEMENTATION.
ENDCLASS.