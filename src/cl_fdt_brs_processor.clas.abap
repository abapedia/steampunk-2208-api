CLASS cl_fdt_brs_processor DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES data_format TYPE char1.
    TYPES ty_tabname TYPE tabname.
    TYPES:
      BEGIN OF s_data_object,
              id               TYPE if_fdt_types=>id,
              name             TYPE if_fdt_types=>name,
              data_object_type TYPE if_fdt_types=>data_object_type,
            END OF s_data_object.
    TYPES:
      t_data_object TYPE STANDARD TABLE OF s_data_object.
    TYPES:
      BEGIN OF s_name_value,
                       name      TYPE abap_parmname,
                       value     TYPE REF TO data,
          END OF s_name_value.
    TYPES:
      t_name_value TYPE STANDARD TABLE OF s_name_value WITH KEY name.

    CONSTANTS gc_data_format_abap TYPE data_format VALUE 'A' ##NO_TEXT.
    CONSTANTS gc_data_format_brfplus TYPE data_format VALUE 'B' ##NO_TEXT.
    CLASS-DATA gc_result_identifier TYPE if_fdt_types=>name VALUE '_V_RESULT' ##NO_TEXT.
    DATA mv_processing_timestamp TYPE timestamp.

    CLASS-METHODS get_instance
      IMPORTING
      !iv_function_id TYPE if_fdt_types=>id
      !iv_processing_timestamp TYPE timestamp OPTIONAL
      !iv_trace TYPE if_fdt_types=>trace_mode DEFAULT ' '
      !iv_auth_check_for_db_lookup TYPE abap_bool DEFAULT abap_false
      !iv_action_in_update_task TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(ro_processor) TYPE REF TO cl_fdt_brs_processor
      RAISING
      cx_fdt_input.
    METHODS clear_trace_buffer
      IMPORTING
      !iv_only_add_start TYPE abap_bool DEFAULT abap_false.
    METHODS convert_data_for_processing
      IMPORTING
      !ir_data TYPE data
      !iv_data_object TYPE clike
      !iv_has_ddic_binding TYPE abap_bool DEFAULT abap_false
      EXPORTING
      !er_data TYPE REF TO data
      RAISING
      cx_fdt_input.
    METHODS get_context_data_objects
      EXPORTING
      !et_data_object TYPE t_data_object
      RAISING
      cx_fdt_input.
    METHODS get_data_object_reference
      IMPORTING
      !iv_data_object TYPE clike
      EXPORTING
      !ev_data_object_name TYPE if_fdt_types=>name
      !er_data TYPE REF TO data
      RAISING
      cx_fdt_input.
    METHODS get_trace_buffer
      EXPORTING
      !et_trace_header TYPE fdt_brs_t_trace_header
      !et_trace_record TYPE fdt_brs_t_trace_record.
    METHODS process
      IMPORTING
      !iv_data_format TYPE data_format DEFAULT gc_data_format_brfplus
      !it_name_value TYPE t_name_value OPTIONAL
      EXPORTING
      !ea_result TYPE any
      CHANGING
      !ct_name_value TYPE t_name_value OPTIONAL
      RAISING
      cx_fdt_input
      cx_fdt_processing.
    METHODS save_trace
      IMPORTING
      !iv_external_id TYPE not_released OPTIONAL
      !iv_update_task TYPE abap_bool DEFAULT abap_false
      VALUE(iv_trace_db_table_h) TYPE ty_tabname OPTIONAL
      VALUE(iv_trace_db_table_r) TYPE ty_tabname OPTIONAL
      RAISING
      cx_fdt_input.
ENDCLASS.

CLASS cl_fdt_brs_processor IMPLEMENTATION.
ENDCLASS.