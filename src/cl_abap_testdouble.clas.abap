CLASS cl_abap_testdouble DEFINITION  PUBLIC  FINAL CREATE PRIVATE FOR TESTING.

  PUBLIC SECTION.
    TYPES ty_object_name TYPE c LENGTH 30.

    CLASS-METHODS:
      create
        IMPORTING object_name   TYPE ty_object_name
                  double_name   TYPE string OPTIONAL
        RETURNING VALUE(double) TYPE REF TO object,
      configure_call
        IMPORTING double               TYPE REF TO object
        RETURNING VALUE(configuration) TYPE REF TO if_abap_testdouble_config,
      verify_expectations
        IMPORTING double TYPE REF TO object.

ENDCLASS.

CLASS cl_abap_testdouble IMPLEMENTATION.
ENDCLASS.