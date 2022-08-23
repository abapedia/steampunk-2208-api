CLASS xco_cp_ddl DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      expression  TYPE REF TO if_xco_ddl_expr_factory READ-ONLY,
      literal     TYPE REF TO if_xco_ddl_literal_factory READ-ONLY,
      data_source TYPE REF TO if_xco_ddl_expr_data_source_f READ-ONLY.

    CLASS-METHODS:

      field
        IMPORTING
          iv_field_name   TYPE sxco_cds_field_name
        RETURNING
          VALUE(ro_field) TYPE REF TO if_xco_ddl_expr_field.
ENDCLASS.

CLASS xco_cp_ddl IMPLEMENTATION.
ENDCLASS.