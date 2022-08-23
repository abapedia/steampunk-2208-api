INTERFACE if_cds_entity_inspector
  PUBLIC.

  TYPES:
    ty_field_name  TYPE string,
    ty_field_names TYPE SORTED TABLE OF ty_field_name WITH NON-UNIQUE KEY table_line.
  TYPES:
         ty_expression TYPE string.

  TYPES:
    BEGIN OF ty_join_clause,
      in                TYPE string,
      joins             TYPE ty_expression,
      outer_joins_count TYPE i,
    END OF ty_join_clause,
    ty_join_clauses TYPE STANDARD TABLE OF ty_join_clause WITH EMPTY KEY.

  METHODS:
    get_fields_in_group_by_clause
      RETURNING
        VALUE(r_result) TYPE ty_field_names,
    get_executed_joins
      RETURNING
        VALUE(r_result) TYPE ty_join_clauses,
    get_nullable_fields
      IMPORTING
        i_sap_schema    TYPE string OPTIONAL
      RETURNING
        VALUE(r_result) TYPE ty_field_names.

ENDINTERFACE.