CLASS cl_apj_scp_tools DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES ty_ctxttyp TYPE c LENGTH 32.
    TYPES ty_jobcount TYPE c LENGTH 8.
    TYPES ty_ctxt TYPE c LENGTH 32.
    TYPES ty_jobname TYPE c LENGTH 32.
    TYPES:
      BEGIN OF ty_new_job_info,
         job_name      TYPE c LENGTH 32,
         job_run_count TYPE c LENGTH 8,
      END OF ty_new_job_info.

    CONSTANTS restart_type TYPE ty_ctxttyp VALUE 'SELFRESTARTED' ##NO_TEXT.
    CONSTANTS restart_val TYPE ty_ctxt VALUE 'ORIGINAL_JOB' ##NO_TEXT.

    CLASS-METHODS is_restart_required
      RETURNING
      VALUE(restart_required) TYPE abap_bool.
    CLASS-METHODS schedule_me_again
      IMPORTING
      !iv_min_offset TYPE i DEFAULT 0
      !iv_force_reschedule TYPE abap_bool DEFAULT abap_false
      !iv_self_termination TYPE abap_bool DEFAULT abap_false
      EXPORTING
      !es_new_job TYPE ty_new_job_info
      RETURNING
      VALUE(rv_successfull) TYPE abap_bool.
    CLASS-METHODS get_own_restart_number
      RETURNING
      VALUE(rv_length) TYPE i.

    CLASS-METHODS terminate_me.
ENDCLASS.

CLASS cl_apj_scp_tools IMPLEMENTATION.
ENDCLASS.