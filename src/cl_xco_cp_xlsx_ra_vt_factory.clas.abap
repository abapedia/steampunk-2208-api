CLASS cl_xco_cp_xlsx_ra_vt_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    DATA identity TYPE REF TO if_xco_xlsx_ra_vt_identity READ-ONLY.
    DATA string_value TYPE REF TO if_xco_xlsx_ra_vt_string_value READ-ONLY.
    DATA best_effort TYPE REF TO if_xco_xlsx_ra_vt_best_effort READ-ONLY.
ENDCLASS.

CLASS cl_xco_cp_xlsx_ra_vt_factory IMPLEMENTATION.
ENDCLASS.