CLASS cl_xco_ars_visibility DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      use_in_sap_cloud_platform
        RETURNING
          VALUE(rv_use_in_sap_cloudplatform) TYPE abap_bool,

      use_in_key_user_apps
        RETURNING
          VALUE(rv_use_in_key_user_apps) TYPE abap_bool.

ENDCLASS.

CLASS cl_xco_ars_visibility IMPLEMENTATION.
ENDCLASS.