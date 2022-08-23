CLASS cl_xco_asql_constraint DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      tv_sign   TYPE c,
      tv_option TYPE c LENGTH 2,
      tv_low    TYPE string,
      tv_high   TYPE string.

    DATA:
      sign   TYPE tv_sign READ-ONLY,
      option TYPE tv_option READ-ONLY,
      low    TYPE tv_low READ-ONLY,
      high   TYPE tv_high READ-ONLY.

  PROTECTED SECTION.
    METHODS:
      get_check ABSTRACT
        RETURNING
          VALUE(ro_check) TYPE REF TO if_xco_dp_check,

      get_syntax ABSTRACT
        RETURNING
          VALUE(rv_syntax) TYPE string.

ENDCLASS.

CLASS cl_xco_asql_constraint IMPLEMENTATION.
ENDCLASS.