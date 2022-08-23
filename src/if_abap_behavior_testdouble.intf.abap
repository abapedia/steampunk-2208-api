INTERFACE if_abap_behavior_testdouble
  PUBLIC.

  TYPES:
    t_draft_handling TYPE c LENGTH 1.
  DATA root_name TYPE abp_root_entity_name.
  DATA handle_draft TYPE t_draft_handling.

" ===== Handler methods =====
  METHODS modify DEFAULT IGNORE
    IMPORTING
      !changes TYPE abp_behv_changes_tab
    CHANGING
      !failed TYPE data
      !mapped TYPE data
      !reported TYPE data.
  METHODS read DEFAULT IGNORE
    IMPORTING
      !retrievals TYPE abp_behv_retrievals_tab
    CHANGING
      !failed TYPE data
      !reported TYPE data.
  METHODS lock DEFAULT IGNORE
    IMPORTING
      !locks TYPE abp_behv_locks_tab
    CHANGING
      !failed TYPE data
      !reported TYPE data.
  METHODS get_features DEFAULT IGNORE
    IMPORTING
      !features TYPE abp_behv_features_tab
    CHANGING
      !failed TYPE data
      !reported TYPE data.
  METHODS get_global_features DEFAULT IGNORE
    IMPORTING
      !features TYPE abp_behv_global_permission_tab
    CHANGING
      !failed TYPE data
      !reported TYPE data.
  METHODS check_authorization DEFAULT IGNORE
    IMPORTING
      !authorizations TYPE abp_behv_authorization_tab
    CHANGING
      !failed TYPE data
      !reported TYPE data.
  METHODS check_global_authorization DEFAULT IGNORE
    IMPORTING
      !authorizations TYPE abp_behv_global_permission_tab
    CHANGING
      !failed TYPE data
      !reported TYPE data.
  METHODS precheck DEFAULT IGNORE
    IMPORTING
      !changes TYPE abp_behv_changes_tab
    CHANGING
      !failed TYPE data
      !reported TYPE data.
" ===== Saver methods =====
  METHODS finalize DEFAULT IGNORE
    CHANGING
      !failed TYPE data
      !reported TYPE data.
  METHODS check_before_save DEFAULT IGNORE
    CHANGING
      !failed TYPE data
      !reported TYPE data.
  METHODS adjust_numbers DEFAULT IGNORE
    CHANGING
      !mapped TYPE data
      !reported TYPE data OPTIONAL
      !failed TYPE data OPTIONAL.
  METHODS save DEFAULT IGNORE
    CHANGING
      !reported TYPE data OPTIONAL
      !failed TYPE data OPTIONAL.
  METHODS cleanup DEFAULT IGNORE.
  METHODS map_messages DEFAULT IGNORE
    CHANGING
      !reported TYPE data.
" ===== Helper methods =====
  METHODS convert_preliminary_key DEFAULT FAIL
    IMPORTING
      !entity_name TYPE abp_entity_name
      !pid TYPE abp_behv_pid
      !tmp TYPE data
    CHANGING
      !key TYPE data.
ENDINTERFACE.