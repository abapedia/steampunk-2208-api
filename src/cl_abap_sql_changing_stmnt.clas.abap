CLASS cl_abap_sql_changing_stmnt DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_sql_statement_handle
  FINAL
  CREATE PROTECTED.

  PUBLIC SECTION.

    TYPES statement_state_type TYPE i.

    CONSTANTS db_count_unknown TYPE statement_state_type VALUE 1. "#EC NOTEXT
    CONSTANTS db_count_known TYPE statement_state_type VALUE 2. "#EC NOTEXT
    CONSTANTS db_count_known_and_closed TYPE statement_state_type VALUE 3. "#EC NOTEXT

    METHODS get_db_count
      RETURNING
      VALUE(db_count) TYPE i.
    METHODS get_state
      RETURNING
      VALUE(state) TYPE statement_state_type.

    METHODS is_closed
      REDEFINITION.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_sql_changing_stmnt IMPLEMENTATION.
ENDCLASS.