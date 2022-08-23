CLASS xco_cp_amdp DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      database_type     TYPE REF TO cl_xco_cp_amdp_db_type_f READ-ONLY,
      database_language TYPE REF TO cl_xco_cp_amdp_db_language_f READ-ONLY,
      database_option   TYPE REF TO cl_xco_cp_amdp_db_option_f READ-ONLY.

ENDCLASS.

CLASS xco_cp_amdp IMPLEMENTATION.
ENDCLASS.