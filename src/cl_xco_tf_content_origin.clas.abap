CLASS cl_xco_tf_content_origin DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PROTECTED SECTION.
    METHODS:
      get_content_source ABSTRACT
        IMPORTING
          io_transformation        TYPE REF TO if_xco_transformation
          io_state                 TYPE REF TO cl_xco_tf_state
          io_tool_set              TYPE REF TO not_released
        RETURNING
          VALUE(ro_content_source) TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_tf_content_origin IMPLEMENTATION.
ENDCLASS.