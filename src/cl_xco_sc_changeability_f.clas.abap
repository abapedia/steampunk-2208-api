CLASS cl_xco_sc_changeability_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      full_changeability    TYPE REF TO cl_xco_sc_changeability READ-ONLY,
      reduced_changeability TYPE REF TO cl_xco_sc_changeability READ-ONLY,
      only_extendable       TYPE REF TO cl_xco_sc_changeability READ-ONLY,
      no_changeability      TYPE REF TO cl_xco_sc_changeability READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                TYPE cl_xco_sc_changeability=>tv_value
        RETURNING
          VALUE(ro_changeability) TYPE REF TO cl_xco_sc_changeability.

ENDCLASS.

CLASS cl_xco_sc_changeability_f IMPLEMENTATION.
ENDCLASS.