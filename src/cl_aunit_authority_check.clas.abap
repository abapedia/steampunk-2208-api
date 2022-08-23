CLASS cl_aunit_authority_check DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE
  FOR TESTING.

  PUBLIC SECTION.
    CLASS-METHODS:
      get_controller
        RETURNING VALUE(controller) TYPE REF TO if_aunit_auth_check_controller,
      create_auth_object_set
        IMPORTING
          user_role_authorizations TYPE cl_aunit_auth_check_types_def=>user_role_authorizations OPTIONAL
        RETURNING
          VALUE(auth_objset)  TYPE REF TO if_aunit_authority_objset.

ENDCLASS.

CLASS cl_aunit_authority_check IMPLEMENTATION.
ENDCLASS.