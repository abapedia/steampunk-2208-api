CLASS cl_xco_ao_origin DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      list TYPE STANDARD TABLE OF REF TO cl_xco_ao_origin WITH DEFAULT KEY.

  PROTECTED SECTION.
    METHODS:
      get_interface_read_access ABSTRACT
        IMPORTING
          io_object             TYPE REF TO if_xco_ao_object
          io_version            TYPE REF TO cl_xco_ao_version
          io_tool_set           TYPE REF TO not_released
        RETURNING
          VALUE(ro_read_access) TYPE REF TO not_released,

      get_class_read_access ABSTRACT
        IMPORTING
          io_object             TYPE REF TO if_xco_ao_object
          io_version            TYPE REF TO cl_xco_ao_version
          io_tool_set           TYPE REF TO not_released
        RETURNING
          VALUE(ro_read_access) TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_ao_origin IMPLEMENTATION.
ENDCLASS.