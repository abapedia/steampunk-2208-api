CLASS xco_cp_bal DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      level_of_detail    TYPE REF TO cl_xco_cp_bal_lvl_of_dtl_f READ-ONLY,

      log_filter         TYPE REF TO if_xco_cp_bal_log_filter_fctry READ-ONLY,

      exception_addition TYPE REF TO if_xco_cp_bal_exc_addition_fct READ-ONLY,
      exception_descent  TYPE REF TO if_xco_cp_bal_exc_descent_fct READ-ONLY,

      persistence        TYPE REF TO if_xco_cp_bal_persistence_fct READ-ONLY,
      profile            TYPE REF TO if_xco_cp_bal_profile_factory READ-ONLY,

      for                TYPE REF TO if_xco_cp_bal_source_factory READ-ONLY.

ENDCLASS.

CLASS xco_cp_bal IMPLEMENTATION.
ENDCLASS.