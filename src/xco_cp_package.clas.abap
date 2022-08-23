CLASS xco_cp_package DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      type   TYPE REF TO cl_xco_pkg_type_f READ-ONLY,

      filter TYPE REF TO if_xco_cp_pkg_filter_factory READ-ONLY.

ENDCLASS.

CLASS xco_cp_package IMPLEMENTATION.
ENDCLASS.