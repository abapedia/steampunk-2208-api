CLASS xco_cp_string DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      composition   TYPE REF TO if_xco_cp_string_cmp_factory READ-ONLY,
      decomposition TYPE REF TO if_xco_cp_string_dcmp_factory READ-ONLY.

    CLASS-METHODS:
      builder
        RETURNING
          VALUE(ro_builder) TYPE REF TO if_xco_string_builder.
ENDCLASS.

CLASS xco_cp_string IMPLEMENTATION.
ENDCLASS.