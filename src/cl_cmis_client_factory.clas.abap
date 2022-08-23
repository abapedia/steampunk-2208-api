CLASS cl_cmis_client_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS get_instance
      IMPORTING
        !iv_user_header  TYPE string OPTIONAL
      RETURNING
        VALUE(ro_client) TYPE REF TO if_cmis_client
      RAISING
        cx_cmis_permission_denied
        cx_cmis_runtime
        cx_cmis_invalid_argument
        cx_cmis_not_supported
        cx_cmis_object_not_found
        cx_cmis_unauthorized
        cx_cmis_oauth.
ENDCLASS.

CLASS cl_cmis_client_factory IMPLEMENTATION.
ENDCLASS.