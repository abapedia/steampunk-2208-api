INTERFACE /iwbep/if_cp_runtime_types
  PUBLIC.

  TYPES:
    ty_delta_query_id      TYPE c LENGTH 32,
    ty_entity_set_name     TYPE char40,
    ty_internal_name       TYPE char30,
    ty_http_method         TYPE char10,
    ty_operation_name      TYPE char40,
    ty_property_path       TYPE string,
    ty_proxy_model_id      TYPE c LENGTH 36,
    ty_proxy_model_repo_id TYPE c LENGTH 10,
    ty_proxy_model_version TYPE n LENGTH 4,
    ty_t_internal_name     TYPE STANDARD TABLE OF ty_internal_name WITH KEY table_line,
    ty_t_property_path     TYPE STANDARD TABLE OF ty_property_path WITH DEFAULT KEY,
    ty_value_control_value TYPE c LENGTH 1.

  TYPES:
    BEGIN OF ty_s_custom_query_option,
      name  TYPE string,
      value TYPE string,
    END OF ty_s_custom_query_option,
    ty_t_custom_query_option TYPE STANDARD TABLE OF ty_s_custom_query_option WITH DEFAULT KEY.

  TYPES:
    BEGIN OF ty_s_data_mod_message,
      code      TYPE string,
      message   TYPE string,
      severity  TYPE string,
      target    TYPE string,
      target_vc TYPE ty_value_control_value,
    END OF ty_s_data_mod_message,
    ty_t_data_mod_message TYPE STANDARD TABLE OF ty_s_data_mod_message WITH DEFAULT KEY.

  TYPES:
    BEGIN OF ty_s_data_mod_info,
      code      TYPE string,
      message   TYPE string,
      severity  TYPE string,
      target    TYPE string,
      target_vc TYPE ty_value_control_value,
      details   TYPE ty_t_data_mod_message,
    END OF ty_s_data_mod_info.

  TYPES:
    BEGIN OF ty_s_data_mod_error,
      failed_operation TYPE string,
      response_code    TYPE numc3,
      info             TYPE ty_s_data_mod_info,
    END OF ty_s_data_mod_error.

  TYPES:
    BEGIN OF ty_s_proxy_model_key,
      repository_id       TYPE ty_proxy_model_repo_id,
      proxy_model_id      TYPE ty_proxy_model_id,
      proxy_model_version TYPE ty_proxy_model_version,
    END OF ty_s_proxy_model_key.

  TYPES:
    BEGIN OF ty_s_sort_order,
      property_path TYPE ty_property_path,
      descending    TYPE abap_bool,
    END OF ty_s_sort_order,
    ty_t_sort_order TYPE STANDARD TABLE OF ty_s_sort_order WITH DEFAULT KEY.

  CONSTANTS:
    BEGIN OF gcs_http_method,
      delete TYPE ty_http_method VALUE 'DELETE',
      get    TYPE ty_http_method VALUE 'GET',
      head   TYPE ty_http_method VALUE 'HEAD',
      patch  TYPE ty_http_method VALUE 'PATCH',
      post   TYPE ty_http_method VALUE 'POST',
      put    TYPE ty_http_method VALUE 'PUT',
    END OF gcs_http_method.

  CONSTANTS:
    BEGIN OF gcs_repository_id,
      default TYPE ty_proxy_model_repo_id VALUE 'DEFAULT',
      mdi     TYPE ty_proxy_model_repo_id VALUE 'MDI',
      srvd    TYPE ty_proxy_model_repo_id VALUE 'SRVD',
    END OF gcs_repository_id.

  CONSTANTS:
    BEGIN OF gcs_value_control,
      indicate_value TYPE ty_value_control_value VALUE '',
      indicate_null  TYPE ty_value_control_value VALUE 'X',
      indicate_omit  TYPE ty_value_control_value VALUE '-',
    END OF gcs_value_control.

ENDINTERFACE.