INTERFACE if_abap_api_state
  PUBLIC.
  TYPES ty_object_directory_type TYPE c LENGTH 4.
  TYPES ty_object_directory_name TYPE c LENGTH 40.
  TYPES ty_sub_object_type TYPE c LENGTH 20.
  TYPES ty_sub_object_name TYPE c LENGTH 120.
  TYPES ty_release_contract TYPE c LENGTH 2.
  TYPES ty_request TYPE c LENGTH 20.
  TYPES BEGIN OF ty_s_object_directory_key.
  TYPES object_type TYPE ty_object_directory_type.
  TYPES object_name TYPE ty_object_directory_name.
  TYPES END OF ty_s_object_directory_key.
  TYPES BEGIN OF ty_s_sub_object_key.
  TYPES sub_object_type TYPE ty_sub_object_type.
  TYPES sub_object_name TYPE ty_sub_object_name.
  TYPES END OF ty_s_sub_object_key.
  TYPES BEGIN OF ty_s_api_key.
  .INCLUDE TYPE ty_s_object_directory_key AS object_key.
  .INCLUDE TYPE ty_s_sub_object_key AS sub_object_key.
  TYPES END OF ty_s_api_key.
  TYPES BEGIN OF ty_s_visibility.
  TYPES use_in_cloud_development TYPE abap_bool.
  TYPES use_in_key_user_apps TYPE abap_bool.
  TYPES END OF ty_s_visibility.
  TYPES BEGIN OF ty_s_release_info.
  TYPES is_released TYPE abap_bool.
  .INCLUDE TYPE ty_s_visibility AS visibility.
  TYPES END OF ty_s_release_info.
  TYPES BEGIN OF ty_s_referenced_api.
  .INCLUDE TYPE ty_s_api_key AS api_key.
  .INCLUDE TYPE ty_s_release_info AS release_info.
  TYPES END OF ty_s_referenced_api.
  TYPES ty_t_referenced_api TYPE SORTED TABLE OF ty_s_referenced_api WITH UNIQUE KEY object_key sub_object_key.
  CONSTANTS BEGIN OF co_release_contract.
  CONSTANTS c0_extend                    TYPE ty_release_contract VALUE 'C0'.
  CONSTANTS c1_use_system_internally     TYPE ty_release_contract VALUE 'C1'.
  CONSTANTS c2_use_as_remote_api         TYPE ty_release_contract VALUE 'C2'.
  CONSTANTS c3_mng_configuration_content TYPE ty_release_contract VALUE 'C3'.
  CONSTANTS END OF co_release_contract.
  CONSTANTS BEGIN OF co_sub_object_type.
  CONSTANTS badi_definition    TYPE ty_sub_object_type VALUE 'BADI_DEF'.
  CONSTANTS cds_entity         TYPE ty_sub_object_type VALUE 'CDS_STOB'.
  CONSTANTS function_module    TYPE ty_sub_object_type VALUE 'FUNC'.
  CONSTANTS v4_service_version TYPE ty_sub_object_type VALUE 'G4S'.
  CONSTANTS END OF co_sub_object_type.
  METHODS get_referenced_apis
    IMPORTING
              release_contract         TYPE ty_release_contract DEFAULT co_release_contract-c1_use_system_internally
              use_in_cloud_development TYPE abap_bool DEFAULT abap_true
              use_in_key_user_apps     TYPE abap_bool DEFAULT abap_false
              omit_released_apis       TYPE abap_bool DEFAULT abap_false
    RETURNING
              VALUE(result)            TYPE ty_t_referenced_api
    RAISING   cx_abap_api_state.
  METHODS is_released
    IMPORTING
              release_contract         TYPE ty_release_contract DEFAULT co_release_contract-c1_use_system_internally
              use_in_cloud_development TYPE abap_bool DEFAULT abap_true
              use_in_key_user_apps     TYPE abap_bool DEFAULT abap_false
    RETURNING
              VALUE(result)            TYPE abap_bool
    RAISING   cx_abap_api_state.
  METHODS get_release_info
    IMPORTING
              release_contract TYPE ty_release_contract DEFAULT co_release_contract-c1_use_system_internally
    RETURNING
              VALUE(result)    TYPE ty_s_release_info
    RAISING   cx_abap_api_state.
  METHODS release
    IMPORTING
              release_contract         TYPE ty_release_contract DEFAULT co_release_contract-c1_use_system_internally
              use_in_cloud_development TYPE abap_bool
              use_in_key_user_apps     TYPE abap_bool
              request                  TYPE ty_request
    RAISING   cx_abap_api_state.
  METHODS delete_release_state
    IMPORTING
              release_contract TYPE ty_release_contract DEFAULT co_release_contract-c1_use_system_internally
              request          TYPE ty_request
    RAISING   cx_abap_api_state.

ENDINTERFACE.