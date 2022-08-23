CLASS cl_xco_fg_origin DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      list TYPE STANDARD TABLE OF REF TO cl_xco_fg_origin WITH DEFAULT KEY.

  PROTECTED SECTION.
    METHODS:
      get_read_access ABSTRACT
        IMPORTING
          io_function_group     TYPE REF TO if_xco_function_group
          io_tool_set           TYPE REF TO not_released
        RETURNING
          VALUE(ro_read_access) TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_fg_origin IMPLEMENTATION.
ENDCLASS.