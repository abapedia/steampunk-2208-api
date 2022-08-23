CLASS cl_xco_iam_bc_content_origin DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PROTECTED SECTION.
    METHODS:
      get_content_source ABSTRACT
        IMPORTING
          io_iam_business_catalog  TYPE REF TO if_xco_iam_business_catalog
          io_tool_set              TYPE REF TO not_released
        RETURNING
          VALUE(ro_content_source) TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_iam_bc_content_origin IMPLEMENTATION.
ENDCLASS.