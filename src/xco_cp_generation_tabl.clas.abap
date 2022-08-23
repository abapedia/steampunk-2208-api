CLASS xco_cp_generation_tabl DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      BEGIN OF ts_for,
        database_table TYPE REF TO if_xco_cp_gen_tabl_dbt_api,
        structure      TYPE REF TO if_xco_cp_gen_tabl_str_api,
      END OF ts_for.

    CLASS-DATA:
      for TYPE ts_for READ-ONLY.

ENDCLASS.

CLASS xco_cp_generation_tabl IMPLEMENTATION.
ENDCLASS.