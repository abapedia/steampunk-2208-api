CLASS cl_cmis_object_factory DEFINITION
  PUBLIC
  ABSTRACT
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS create_boolean_prop_multi
      IMPORTING
        !iv_property_id    TYPE string
        !it_value          TYPE cmis_t_boolean
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_boolean_prop_notset
      IMPORTING
        !iv_property_id    TYPE string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_boolean_prop_single
      IMPORTING
        !iv_property_id    TYPE string
        !iv_value          TYPE abap_bool
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_datetime_prop_multi
      IMPORTING
        !iv_property_id    TYPE string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
        !it_value          TYPE cmis_t_date_time
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_datetime_prop_notset
      IMPORTING
        !iv_property_id    TYPE string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_datetime_prop_single
      IMPORTING
        !iv_property_id    TYPE string
        !iv_timestamp      TYPE timestampl
        !iv_timezone       TYPE timezone OPTIONAL
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_decimal_prop_multi
      IMPORTING
        !iv_property_id    TYPE string
        !it_value          TYPE cmis_t_decimal
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_decimal_prop_notset
      IMPORTING
        !iv_property_id    TYPE string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_decimal_prop_single
      IMPORTING
        !iv_property_id    TYPE string
        !iv_value          TYPE cmis_decimal
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_document_type
      IMPORTING
        !it_custom_properties TYPE cmis_t_property_definition OPTIONAL
      RETURNING
        VALUE(rs_type)        TYPE cmis_s_type_definition.
    CLASS-METHODS create_folder_type
      IMPORTING
        !it_custom_properties TYPE cmis_t_property_definition OPTIONAL
      RETURNING
        VALUE(rs_type)        TYPE cmis_s_type_definition.
    CLASS-METHODS create_html_prop_multi
      IMPORTING
        !iv_property_id    TYPE string
        !it_value          TYPE cmis_t_string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_html_prop_notset
      IMPORTING
        !iv_property_id    TYPE string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_html_prop_single
      IMPORTING
        !iv_property_id    TYPE string
        !iv_value          TYPE cmis_string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_id_prop_multi
      IMPORTING
        !iv_property_id    TYPE string
        !it_value          TYPE cmis_t_id
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_id_prop_notset
      IMPORTING
        !iv_property_id    TYPE string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_id_prop_single
      IMPORTING
        !iv_property_id    TYPE string
        !iv_value          TYPE cmis_id
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_integer_prop_multi
      IMPORTING
        !iv_property_id    TYPE string
        !it_value          TYPE cmis_t_long
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_integer_prop_notset
      IMPORTING
        !iv_property_id    TYPE string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_integer_prop_single
      IMPORTING
        !iv_property_id    TYPE string
        !iv_value          TYPE cmis_long
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_string_prop_multi
      IMPORTING
        !iv_property_id    TYPE string
        !it_value          TYPE cmis_t_string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_string_prop_notset
      IMPORTING
        !iv_property_id    TYPE string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_string_prop_single
      IMPORTING
        !iv_property_id    TYPE string
        !iv_value          TYPE cmis_string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_uri_prop_multi
      IMPORTING
        !iv_property_id    TYPE string
        !it_value          TYPE cmis_t_string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_uri_prop_notset
      IMPORTING
        !iv_property_id    TYPE string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_uri_prop_single
      IMPORTING
        !iv_property_id    TYPE string
        !iv_value          TYPE cmis_string
        !iv_local_name     TYPE string OPTIONAL
        !iv_display_name   TYPE string OPTIONAL
        !iv_query_name     TYPE string OPTIONAL
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_empty_prop
      IMPORTING
        !iv_property_id    TYPE string
        !iv_property_type  TYPE cmis_enum
        !iv_local_name     TYPE string
        !iv_display_name   TYPE string
        !iv_query_name     TYPE string
      RETURNING
        VALUE(rs_property) TYPE cmis_s_property.
    CLASS-METHODS create_repository_info_read
      IMPORTING
        !iv_name                  TYPE string
        !iv_description           TYPE string OPTIONAL
        !iv_id                    TYPE string
        !iv_vendor                TYPE string DEFAULT 'SAP'
        !iv_product_name          TYPE string OPTIONAL
        !iv_product_version       TYPE string OPTIONAL
        !iv_root_folder_id        TYPE string
        !iv_acl_supported         TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(rs_repository_info) TYPE cmis_s_repository_info.
    CLASS-METHODS get_document_base_type
      RETURNING
        VALUE(rs_type) TYPE cmis_s_type_definition.
    CLASS-METHODS get_folder_base_type
      RETURNING
        VALUE(rs_type) TYPE cmis_s_type_definition.
    CLASS-METHODS get_common_prop_defs
      CHANGING
        !cs_property_defs TYPE cmis_t_property_definition.
    CLASS-METHODS create_date_time_value
      IMPORTING
        !iv_timezone        TYPE timezone
        !iv_timestamp       TYPE timestampl
      RETURNING
        VALUE(rs_date_time) TYPE cmis_s_date_time
      RAISING
        cx_cmis_invalid_argument.
    CLASS-METHODS get_secondary_base_type
      RETURNING
        VALUE(rs_type) TYPE cmis_s_type_definition.
    CLASS-METHODS get_relationship_base_type
      RETURNING
        VALUE(rs_type) TYPE cmis_s_type_definition.
    CLASS-METHODS get_item_base_type
      RETURNING
        VALUE(rs_type) TYPE cmis_s_type_definition.
    CLASS-METHODS get_mcm_value_help_base_type
      RETURNING
        VALUE(rs_type) TYPE cmis_s_type_definition.
    CLASS-METHODS get_mcm_link_base_type
      RETURNING
        VALUE(rs_type) TYPE cmis_s_type_definition.
    CLASS-METHODS get_secondary_template_type
      RETURNING
        VALUE(rs_type) TYPE cmis_s_type_definition.
    CLASS-METHODS get_sap_link_base_type
      RETURNING
        VALUE(rs_type) TYPE cmis_s_type_definition.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_cmis_object_factory IMPLEMENTATION.
ENDCLASS.