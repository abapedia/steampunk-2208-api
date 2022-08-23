CLASS cl_xco_cp_ars_api_state_fctry DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      released
        IMPORTING
          it_visibilities    TYPE sxco_t_ars_visibilities
        RETURNING
          VALUE(ro_released) TYPE REF TO cl_xco_ars_api_state,

      not_released
        RETURNING
          VALUE(ro_not_released) TYPE REF TO cl_xco_ars_api_state.
ENDCLASS.

CLASS cl_xco_cp_ars_api_state_fctry IMPLEMENTATION.
ENDCLASS.