CLASS cl_xco_dbt_origin DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PROTECTED SECTION.
    METHODS:
      create_read_access ABSTRACT
        IMPORTING
          is_target             TYPE not_released
          io_tool_set           TYPE REF TO not_released
        RETURNING
          VALUE(ro_read_access) TYPE REF TO not_released.

ENDCLASS.

CLASS cl_xco_dbt_origin IMPLEMENTATION.
ENDCLASS.