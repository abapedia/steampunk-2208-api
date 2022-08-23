CLASS xco_cp_abap_repository DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      package     TYPE REF TO if_xco_cp_package_factory READ-ONLY,

      object_name TYPE REF TO if_xco_cp_ar_api_object_name READ-ONLY,
      object_type TYPE REF TO if_xco_cp_ar_api_object_type READ-ONLY,

      object      TYPE REF TO if_xco_cp_ar_api_object READ-ONLY,
      objects     TYPE REF TO if_xco_cp_ar_api_objects READ-ONLY,

      filter      TYPE REF TO if_xco_cp_ar_filter_factory READ-ONLY.

ENDCLASS.

CLASS xco_cp_abap_repository IMPLEMENTATION.
ENDCLASS.