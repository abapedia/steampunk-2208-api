INTERFACE if_apj_jt_check
  PUBLIC.

  TYPES:
    ty_template_name  TYPE c LENGTH 40.
  TYPES:
    ty_job_parameter_name TYPE c LENGTH 38.
  TYPES:
    ty_catalog_name    TYPE c LENGTH 40.
  TYPES ty_jobname TYPE c LENGTH 32.
  TYPES:
    ty_check_mode  TYPE c LENGTH 1.
  TYPES:
    ty_check_phase TYPE c LENGTH 5.
  TYPES:
    ty_paramter_key TYPE c LENGTH 80.
  TYPES:
    BEGIN OF ty_param_metadata,
      name          TYPE c LENGTH 8,
      kind          TYPE c,
      mandatory_ind TYPE boolean,
      hidden_ind    TYPE boolean,
      che_rad       TYPE sychar01,
      group_id      TYPE c LENGTH 4,
    END OF ty_param_metadata.
  TYPES:
    tt_param_metadata TYPE STANDARD TABLE OF ty_param_metadata WITH NON-UNIQUE KEY name
                                                                    WITH NON-UNIQUE SORTED KEY name COMPONENTS name.
  TYPES:
    BEGIN OF ty_local_param_metadata,
      name          TYPE c LENGTH 38,
      hidden_ind    TYPE boolean,
      mandatory_ind TYPE boolean,
    END OF ty_local_param_metadata.
  TYPES:
    tts_local_param_metadata TYPE SORTED TABLE OF ty_local_param_metadata WITH UNIQUE KEY name.
  TYPES:
    BEGIN OF ts_local_add_param_metadata,
      job_parameter_name       TYPE c LENGTH 8, " parameter can only be 8 char
      job_parameter_group_name TYPE c LENGTH 10,
      mandatory_ind            TYPE boolean,
      hidden_ind               TYPE boolean,
      read_only_ind            TYPE boolean,
      job_parameter_position   TYPE int2,
      alternative_shlp_name    TYPE c LENGTH 30,
      controlled_by_param_name TYPE c LENGTH 8,
      be_control_required_ind  TYPE boolean,
      indent_ind               TYPE boolean,
    END OF ts_local_add_param_metadata.
  TYPES:
    tt_local_add_param_metadata TYPE STANDARD TABLE OF ts_local_add_param_metadata WITH NON-UNIQUE KEY job_parameter_name.
  TYPES:
    BEGIN OF ts_dynamic_property,
      job_parameter_name TYPE c LENGTH 8,
      hidden_ind         TYPE boolean,
      read_only_ind      TYPE boolean,
    END OF ts_dynamic_property.
  TYPES:
    tts_dynamic_property TYPE SORTED TABLE OF ts_dynamic_property WITH UNIQUE KEY job_parameter_name.

  CONSTANTS:
    BEGIN OF cs_check_mode,
      design_time       TYPE ty_check_mode VALUE 'D' ##NO_TEXT,
      local_design_time TYPE ty_check_mode VALUE 'L' ##NO_TEXT,
      runtime           TYPE ty_check_mode VALUE 'R' ##NO_TEXT,
    END OF cs_check_mode.
  CONSTANTS:
    BEGIN OF cs_check_phase,
      initialize       TYPE ty_check_phase VALUE 'INIT' ##NO_TEXT,
      check_and_adjust TYPE ty_check_phase VALUE 'CANDA' ##NO_TEXT,
      check            TYPE ty_check_phase VALUE 'CHECK' ##NO_TEXT,
    END OF cs_check_phase.

  METHODS check_and_adjust
    IMPORTING
      !it_hidden_param_value TYPE if_apj_types=>tt_jt_selopt
      !it_param_metadata TYPE tt_param_metadata
      VALUE(iv_check_mode) TYPE ty_check_mode DEFAULT if_apj_jt_check=>cs_check_mode-runtime
      VALUE(iv_job_catalog_entry_name) TYPE ty_catalog_name
      VALUE(iv_parameter_name) TYPE ty_job_parameter_name OPTIONAL
    EXPORTING
      VALUE(ev_successful) TYPE boolean
      !et_msg TYPE bapirettab
    CHANGING
      !ct_value TYPE if_apj_types=>tt_jt_selopt
    RAISING
      cm_apj_base.
  METHODS initialize
    IMPORTING
      !it_hidden_param_value TYPE if_apj_types=>tt_jt_selopt
      !it_param_metadata TYPE tt_param_metadata
      VALUE(iv_job_catalog_entry_name) TYPE ty_catalog_name
    CHANGING
      !ct_value TYPE if_apj_types=>tt_jt_selopt.
  METHODS check_before_schedule
    IMPORTING
      !iv_job_name TYPE ty_jobname
      !iv_job_catalog_entry_name TYPE ty_catalog_name
      !iv_username TYPE uname DEFAULT sy-uname
      !iv_start_date TYPE timestamp OPTIONAL
    EXPORTING
      VALUE(ev_successful) TYPE boolean
      !et_msg TYPE bapirettab
    CHANGING
      !ct_value TYPE if_apj_types=>tt_jt_selopt
    RAISING
      cm_apj_base.
  METHODS adjust_metadata
    IMPORTING
      VALUE(iv_job_catalog_entry_name) TYPE ty_catalog_name
      !it_param_metadata TYPE tt_param_metadata
    RETURNING
      VALUE(rts_param_metadata) TYPE tts_local_param_metadata.
  METHODS get_additional_parameters
    IMPORTING
      VALUE(iv_job_catalog_entry_name) TYPE ty_catalog_name
    RETURNING
      VALUE(rt_parameter_metadata) TYPE tt_local_add_param_metadata.
  METHODS get_dynamic_properties
    IMPORTING
      !it_value TYPE if_apj_types=>tt_jt_selopt
      !iv_job_catalog_entry_name TYPE ty_catalog_name
    RETURNING
      VALUE(rts_dynamic_property) TYPE tts_dynamic_property.
ENDINTERFACE.