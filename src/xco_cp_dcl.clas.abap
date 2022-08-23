CLASS xco_cp_dcl DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      literal    TYPE REF TO if_xco_dcl_literal_factory READ-ONLY,
      expression TYPE REF TO if_xco_dcl_expression_factory READ-ONLY,
      condition  TYPE REF TO if_xco_dcl_cond_factory READ-ONLY.

    CLASS-METHODS:

      field
        IMPORTING
          iv_field_name   TYPE sxco_cds_field_name
        RETURNING
          VALUE(ro_field) TYPE REF TO if_xco_dcl_expr_field.
ENDCLASS.

CLASS xco_cp_dcl IMPLEMENTATION.
ENDCLASS.