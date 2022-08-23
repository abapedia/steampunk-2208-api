CLASS cl_com_user_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_com_user_factory.

    CLASS-METHODS create_instance
      RETURNING
        VALUE(ro_api_factory) TYPE REF TO if_com_user_factory.

ENDCLASS.

CLASS cl_com_user_factory IMPLEMENTATION.
ENDCLASS.