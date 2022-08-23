CLASS cl_function_test_environment DEFINITION PUBLIC FINAL CREATE PRIVATE FOR TESTING.

  PUBLIC SECTION.
    INTERFACES: if_function_test_environment.

    CLASS-METHODS:
      create
        IMPORTING
          function_modules TYPE if_function_test_environment~tt_function_dependencies
        RETURNING
          VALUE(function_test_environment) TYPE REF TO if_function_test_environment.

ENDCLASS.

CLASS cl_function_test_environment IMPLEMENTATION.
ENDCLASS.