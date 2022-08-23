CLASS xco_cp_abap_dictionary DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      built_in_type     TYPE REF TO cl_xco_ad_built_in_type_f READ-ONLY,
      reference_type    TYPE REF TO if_xco_ad_reference_type_fctry READ-ONLY,

      object_read_state TYPE REF TO cl_xco_cp_ad_obj_read_state_f READ-ONLY,
      object_state      TYPE REF TO cl_xco_ad_object_state_f READ-ONLY.

    CLASS-METHODS:

      database_table
        IMPORTING
          iv_name                  TYPE sxco_dbt_object_name
        RETURNING
          VALUE(ro_database_table) TYPE REF TO if_xco_database_table,

      global_temporary_table
        IMPORTING
          iv_name                          TYPE sxco_gtt_object_name
        RETURNING
          VALUE(ro_global_temporary_table) TYPE REF TO if_xco_global_temporary_table,

      data_element
        IMPORTING
          iv_name                TYPE sxco_ad_object_name
        RETURNING
          VALUE(ro_data_element) TYPE REF TO if_xco_ad_data_element,

      structure
        IMPORTING
          iv_name             TYPE sxco_ad_object_name
        RETURNING
          VALUE(ro_structure) TYPE REF TO if_xco_ad_structure,

      table_type
        IMPORTING
          iv_name              TYPE sxco_ad_object_name
        RETURNING
          VALUE(ro_table_type) TYPE REF TO if_xco_ad_table_type,

      domain
        IMPORTING
          iv_name          TYPE sxco_ad_object_name
        RETURNING
          VALUE(ro_domain) TYPE REF TO if_xco_domain.
ENDCLASS.

CLASS xco_cp_abap_dictionary IMPLEMENTATION.
ENDCLASS.