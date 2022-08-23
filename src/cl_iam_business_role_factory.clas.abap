CLASS cl_iam_business_role_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_iam_business_role_factory.

    CLASS-METHODS create_instance
      RETURNING
      VALUE(ro_instance) TYPE REF TO if_iam_business_role_factory.
ENDCLASS.

CLASS cl_iam_business_role_factory IMPLEMENTATION.
ENDCLASS.