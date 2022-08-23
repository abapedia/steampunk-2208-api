CLASS cl_xco_dtel_origin DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      list TYPE STANDARD TABLE OF REF TO cl_xco_dtel_origin WITH DEFAULT KEY.

  PROTECTED SECTION.
    METHODS:
      get_read_access ABSTRACT
        IMPORTING
          io_data_element       TYPE REF TO if_xco_ad_data_element
          io_read_state         TYPE REF TO cl_xco_ad_object_read_state
          io_tool_set           TYPE REF TO not_released
        RETURNING
          VALUE(ro_read_access) TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_dtel_origin IMPLEMENTATION.
ENDCLASS.