CLASS cl_osql_test_environment DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE FOR TESTING.

  PUBLIC SECTION.
    INTERFACES: if_osql_test_environment.

    CLASS-METHODS:
      create
        IMPORTING
          i_dependency_list TYPE if_osql_test_environment~ty_t_sobjnames
        RETURNING
          VALUE(r_result)   TYPE REF TO if_osql_test_environment,
      garbage_collection.

ENDCLASS.

CLASS cl_osql_test_environment IMPLEMENTATION.
ENDCLASS.