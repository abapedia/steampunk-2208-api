CLASS cl_xco_pkg_type_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      development TYPE REF TO cl_xco_pkg_type READ-ONLY,
      structure   TYPE REF TO cl_xco_pkg_type READ-ONLY,
      main        TYPE REF TO cl_xco_pkg_type READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value       TYPE cl_xco_pkg_type=>tv_pkg_type
        RETURNING
          VALUE(ro_type) TYPE REF TO cl_xco_pkg_type.

ENDCLASS.

CLASS cl_xco_pkg_type_f IMPLEMENTATION.
ENDCLASS.