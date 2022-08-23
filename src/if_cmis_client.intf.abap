INTERFACE if_cmis_client
  PUBLIC.
  METHODS append_content_stream
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !is_content TYPE cmis_s_content_raw
      !iv_change_token TYPE cmis_string OPTIONAL
      !iv_last_chunk TYPE abap_bool OPTIONAL
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint
      cx_cmis_name_constraint
      cx_cmis_storage
      cx_cmis_stream_not_supported.
  METHODS apply_acl
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !it_add_aces TYPE cmis_t_key_values OPTIONAL
      !it_remove_aces TYPE cmis_t_key_values OPTIONAL
      !iv_acl_propagation TYPE cmis_enum DEFAULT 'repositorydetermined'
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint.
  METHODS get_repositories
    EXPORTING
      !et_repository_infos TYPE cmis_t_repository_info
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found.
  METHODS get_repository_info
    IMPORTING
      !iv_repository_id TYPE cmis_string
    EXPORTING
      !es_repository_info TYPE cmis_s_repository_info
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found.
  METHODS get_type_children
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_type_id TYPE cmis_id OPTIONAL
      !iv_include_prop_definitions TYPE abap_bool OPTIONAL
      !iv_max_items TYPE int4 OPTIONAL
      !iv_skip_count TYPE int4 OPTIONAL
    EXPORTING
      !es_types TYPE cmis_s_type_list
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found.
  METHODS get_children
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_folder_id TYPE cmis_id
      !iv_max_items TYPE int4 OPTIONAL
      !iv_skip_count TYPE int4 OPTIONAL
      !iv_order_by TYPE cmis_string OPTIONAL
      !iv_filter TYPE cmis_string OPTIONAL
      !iv_include_relationships TYPE cmis_enum OPTIONAL
      !iv_rendition_filter TYPE cmis_string OPTIONAL
      !iv_include_allowable_actions TYPE abap_bool OPTIONAL
      !iv_include_path_segment TYPE abap_bool OPTIONAL
    EXPORTING
      !es_children TYPE cmis_s_object_in_folder_list
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_filter_not_valid.
  METHODS get_folder_parent
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_folder_id TYPE cmis_id
      !iv_filter TYPE cmis_string OPTIONAL
    EXPORTING
      !es_parent TYPE cmis_s_object
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_filter_not_valid.
  METHODS get_object_parents
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_filter TYPE cmis_string OPTIONAL
      !iv_include_relationships TYPE cmis_enum OPTIONAL
      !iv_rendition_filter TYPE cmis_string OPTIONAL
      !iv_include_allowable_actions TYPE abap_bool OPTIONAL
      !iv_include_rel_path_segment TYPE abap_bool OPTIONAL
    EXPORTING
      !et_object_parents TYPE cmis_t_object_parent
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_filter_not_valid.
  METHODS get_type_definition
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_type_id TYPE cmis_id
    EXPORTING
      !es_type TYPE cmis_s_type_definition
    RAISING
      cx_cmis_permission_denied
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_invalid_argument
      cx_cmis_runtime.
  METHODS get_type_descendants
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_type_id TYPE cmis_id
      !iv_depth TYPE int4 OPTIONAL
      !iv_include_prop_definitions TYPE abap_bool OPTIONAL
    EXPORTING
      !et_types TYPE cmis_t_type_container
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found.
  METHODS get_object
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_include_acl TYPE abap_bool OPTIONAL
      !iv_filter TYPE cmis_string OPTIONAL
      !iv_include_relationships TYPE cmis_enum OPTIONAL
      !iv_rendition_filter TYPE cmis_string OPTIONAL
      !iv_include_allowable_actions TYPE abap_bool OPTIONAL
      !iv_include_policy_ids TYPE abap_bool OPTIONAL
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_permission_denied
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_invalid_argument
      cx_cmis_filter_not_valid
      cx_cmis_runtime.
  METHODS get_object_by_path
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_path TYPE cmis_string
      !iv_include_acl TYPE abap_bool OPTIONAL
      !iv_filter TYPE cmis_string OPTIONAL
      !iv_include_relationships TYPE cmis_enum OPTIONAL
      !iv_rendition_filter TYPE cmis_string OPTIONAL
      !iv_include_allowable_actions TYPE abap_bool OPTIONAL
      !iv_include_policy_ids TYPE abap_bool OPTIONAL
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_permission_denied
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_invalid_argument
      cx_cmis_filter_not_valid
      cx_cmis_runtime.
  METHODS create_document
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !it_properties TYPE cmis_t_client_property
      !iv_folder_id TYPE cmis_id OPTIONAL
      !it_policies TYPE cmis_t_id OPTIONAL
      !it_add_aces TYPE cmis_t_key_values OPTIONAL
      !it_remove_aces TYPE cmis_t_key_values OPTIONAL
      !is_content TYPE cmis_s_content_raw OPTIONAL
      !iv_versioning_state TYPE cmis_enum OPTIONAL
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint
      cx_cmis_name_constraint
      cx_cmis_storage
      cx_cmis_stream_not_supported.
  METHODS create_folder
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !it_properties TYPE cmis_t_client_property
      !iv_folder_id TYPE cmis_id
      !it_policies TYPE cmis_t_id OPTIONAL
      !it_add_aces TYPE cmis_t_key_values OPTIONAL
      !it_remove_aces TYPE cmis_t_key_values OPTIONAL
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint
      cx_cmis_name_constraint
      cx_cmis_storage.
  METHODS create_item
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !it_properties TYPE cmis_t_client_property
      !iv_folder_id TYPE cmis_id OPTIONAL
      !it_policies TYPE cmis_t_id OPTIONAL
      !it_add_aces TYPE cmis_t_key_values OPTIONAL
      !it_remove_aces TYPE cmis_t_key_values OPTIONAL
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_name_constraint
      cx_cmis_storage.
  METHODS query
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_statement TYPE cmis_string
      !iv_search_all_versions TYPE abap_bool OPTIONAL
      !iv_include_relationships TYPE cmis_enum OPTIONAL
      !iv_rendition_filter TYPE cmis_string OPTIONAL
      !iv_include_allowable_actions TYPE abap_bool OPTIONAL
      !iv_max_items TYPE int4 OPTIONAL
      !iv_skip_count TYPE int4 OPTIONAL
    EXPORTING
      !es_query_result TYPE cmis_s_object_list
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found.
  METHODS get_properties
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_filter TYPE cmis_string OPTIONAL
    EXPORTING
      !es_properties TYPE cmis_s_properties
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_filter_not_valid.
  METHODS get_allowable_actions
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
    EXPORTING
      !es_allowable_actions TYPE cmis_s_allowable_actions
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found.
  METHODS get_renditions
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_rendition_filter TYPE cmis_string OPTIONAL
      !iv_max_items TYPE int4 OPTIONAL
      !iv_skip_count TYPE int4 OPTIONAL
    EXPORTING
      !et_renditions TYPE cmis_t_rendition
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found.
  METHODS delete
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_all_versions TYPE abap_bool OPTIONAL
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint
      cx_cmis_update_conflict.
  METHODS delete_tree
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_all_versions TYPE abap_bool OPTIONAL
      !iv_unfiled_objects TYPE cmis_enum OPTIONAL
      !iv_continue_on_failure TYPE abap_bool DEFAULT abap_false
    EXPORTING
      !et_failed_to_delete TYPE cmis_t_id
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint
      cx_cmis_update_conflict.
  METHODS add_object_to_folder
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_folder_id TYPE cmis_id
      !iv_all_versions TYPE abap_bool
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint
      cx_cmis_name_constraint
      cx_cmis_storage.
  METHODS remove_object_from_folder
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_folder_id TYPE cmis_id
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint
      cx_cmis_name_constraint
      cx_cmis_storage.
  METHODS create_type
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !is_type TYPE cmis_s_type_definition
    EXPORTING
      !es_type TYPE cmis_s_type_definition
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint.
  METHODS update_type
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !is_type TYPE cmis_s_type_definition
    EXPORTING
      !es_type TYPE cmis_s_type_definition
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint.
  METHODS delete_type
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_type_id TYPE cmis_id
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint.
  METHODS get_content_stream
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_stream_id TYPE cmis_id OPTIONAL
      !iv_offset TYPE cmis_long OPTIONAL
      !iv_length TYPE cmis_long OPTIONAL
    EXPORTING
      !es_content TYPE cmis_s_content_raw
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint.
  METHODS check_in
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_major TYPE abap_bool
      !is_content TYPE cmis_s_content_raw OPTIONAL
      !iv_checkin_comment TYPE cmis_string OPTIONAL
      !it_policies TYPE cmis_t_id OPTIONAL
      !it_properties TYPE cmis_t_client_property OPTIONAL
      !it_add_ace TYPE cmis_t_key_values OPTIONAL
      !it_remove_ace TYPE cmis_t_key_values OPTIONAL
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint
      cx_cmis_storage
      cx_cmis_update_conflict
      cx_cmis_stream_not_supported.
  METHODS check_out
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint
      cx_cmis_storage
      cx_cmis_update_conflict
      cx_cmis_versioning.
  METHODS cancel_check_out
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_update_conflict
      cx_cmis_constraint
      cx_cmis_versioning.
  METHODS move_object
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_target_folder_id TYPE cmis_id
      !iv_source_folder_id TYPE cmis_id
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint
      cx_cmis_name_constraint
      cx_cmis_storage
      cx_cmis_update_conflict.
  METHODS bulk_update_properties
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !it_id_and_change_token TYPE cmis_t_id_and_change_token
      !it_properties TYPE cmis_t_client_property OPTIONAL
      !it_add_secondary_type_ids TYPE cmis_t_id OPTIONAL
      !it_remove_secondary_type_ids TYPE cmis_t_id OPTIONAL
      !et_id_and_change_token TYPE cmis_t_id_and_change_token
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint.
  METHODS set_content_stream
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !is_content TYPE cmis_s_content_raw
      !iv_change_token TYPE cmis_string OPTIONAL
      !iv_overwrite_flag TYPE abap_bool OPTIONAL
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_permission_denied
      cx_cmis_runtime
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_constraint
      cx_cmis_name_constraint
      cx_cmis_storage
      cx_cmis_stream_not_supported.
  METHODS update_properties
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !it_properties TYPE cmis_t_client_property OPTIONAL
      !iv_change_token TYPE cmis_string OPTIONAL
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_name_constraint
      cx_cmis_constraint
      cx_cmis_storage
      cx_cmis_update_conflict
      cx_cmis_versioning.
  METHODS get_properties_latest_version
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_filter TYPE cmis_string OPTIONAL
      !iv_major TYPE abap_bool OPTIONAL
    EXPORTING
      !es_properties TYPE cmis_s_properties
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_filter_not_valid.
  METHODS get_object_latest_version
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_include_acl TYPE abap_bool OPTIONAL
      !iv_filter TYPE cmis_string OPTIONAL
      !iv_include_relationships TYPE cmis_enum OPTIONAL
      !iv_rendition_filter TYPE cmis_string OPTIONAL
      !iv_include_allowable_actions TYPE abap_bool OPTIONAL
      !iv_major TYPE abap_bool OPTIONAL
      !iv_include_policy_ids TYPE abap_bool OPTIONAL
    EXPORTING
      !es_object TYPE cmis_s_object
    RAISING
      cx_cmis_permission_denied
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_invalid_argument
      cx_cmis_filter_not_valid
      cx_cmis_runtime.
  METHODS get_all_versions
    IMPORTING
      !iv_repository_id TYPE cmis_repository_id
      !iv_object_id TYPE cmis_id
      !iv_filter TYPE cmis_string OPTIONAL
      !iv_include_allowable_actions TYPE abap_bool OPTIONAL
    EXPORTING
      !et_object TYPE cmis_t_object
    RAISING
      cx_cmis_runtime
      cx_cmis_permission_denied
      cx_cmis_invalid_argument
      cx_cmis_not_supported
      cx_cmis_object_not_found
      cx_cmis_filter_not_valid.
ENDINTERFACE.