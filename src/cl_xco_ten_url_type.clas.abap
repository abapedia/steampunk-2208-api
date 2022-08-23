CLASS cl_xco_ten_url_type DEFINITION PUBLIC ABSTRACT
     CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      tv_value TYPE c LENGTH 8.

    DATA:
      value TYPE tv_value READ-ONLY.

  PROTECTED SECTION.
    METHODS:
      get_name REDEFINITION,

      get_url ABSTRACT
        IMPORTING
          is_tenant     TYPE not_released
        RETURNING
          VALUE(rv_url) TYPE not_released.

ENDCLASS.

CLASS cl_xco_ten_url_type IMPLEMENTATION.
ENDCLASS.