CLASS cl_xco_cp_boolean_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      true  TYPE REF TO cl_xco_boolean READ-ONLY,
      false TYPE REF TO cl_xco_boolean READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value          TYPE abap_bool
        RETURNING
          VALUE(ro_boolean) TYPE REF TO cl_xco_boolean.

ENDCLASS.

CLASS cl_xco_cp_boolean_f IMPLEMENTATION.
ENDCLASS.