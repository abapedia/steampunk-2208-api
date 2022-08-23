CLASS cl_abap_parallel DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      t_in_tab TYPE STANDARD TABLE OF xstring WITH NON-UNIQUE DEFAULT KEY.
    TYPES:
      BEGIN OF t_out,
        result  TYPE xstring,
        index   TYPE int4,
        time    TYPE int4,
        message TYPE string,
      END   OF t_out.
    TYPES:
      t_out_tab TYPE STANDARD TABLE OF t_out WITH NON-UNIQUE DEFAULT KEY.
    TYPES t_task_inst TYPE REF TO if_abap_parallel.
    TYPES:
      t_in_inst_tab TYPE STANDARD TABLE OF t_task_inst WITH EMPTY KEY.
    TYPES:
      BEGIN OF t_out_inst,
        inst    TYPE t_task_inst,
        index   TYPE int4,
        time    TYPE int4,
        message TYPE string,
      END   OF t_out_inst.
    TYPES:
      t_out_inst_tab TYPE STANDARD TABLE OF t_out_inst WITH NON-UNIQUE DEFAULT KEY.
    METHODS constructor
      IMPORTING
      !p_num_tasks TYPE i OPTIONAL
      !p_timeout TYPE i OPTIONAL
      !p_percentage TYPE i OPTIONAL
      !p_num_processes TYPE i OPTIONAL
      !p_local_server TYPE abap_bool OPTIONAL
      !p_abort_on_error TYPE abap_bool OPTIONAL
      !p_keeping_tasks TYPE abap_bool OPTIONAL.
    METHODS run
      IMPORTING
      !p_in_tab TYPE t_in_tab
      !p_in_all TYPE xstring OPTIONAL
      !p_debug TYPE abap_bool OPTIONAL
      EXPORTING
      !p_out_tab TYPE t_out_tab.
    METHODS terminate.
    METHODS do
      IMPORTING
      !p_in TYPE xstring
      !p_in_all TYPE xstring OPTIONAL
      EXPORTING
      !p_out TYPE xstring.
    METHODS run_inst
      IMPORTING
      !p_in_tab TYPE t_in_inst_tab
      !p_debug TYPE abap_bool OPTIONAL
      EXPORTING
      !p_out_tab TYPE t_out_inst_tab.
    CLASS-METHODS end_task
      IMPORTING
      !p_task TYPE clike.
    CLASS-METHODS end_task_inst
      IMPORTING
      !p_task TYPE clike.
    METHODS fork
      IMPORTING
      !p_in_tab TYPE t_in_tab
      !p_in_all TYPE xstring OPTIONAL
      !p_debug TYPE abap_bool OPTIONAL.
    METHODS join
      EXPORTING
      !p_out_tab TYPE t_out_tab.
    METHODS fork_inst
      IMPORTING
      !p_in_tab TYPE t_in_inst_tab
      !p_debug TYPE abap_bool OPTIONAL.
    METHODS join_inst
      EXPORTING
      !p_out_tab TYPE t_out_inst_tab.
    CLASS-METHODS _end_task_fork
      IMPORTING
      !p_task TYPE clike.
    CLASS-METHODS _end_task_fork_inst
      IMPORTING
      !p_task TYPE clike.
    METHODS start_inst_in_background
      IMPORTING
      !p_inst TYPE REF TO if_abap_parallel
      !p_background_unit TYPE REF TO object
      !p_time_out TYPE i DEFAULT cl_abap_math=>max_int4.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_parallel IMPLEMENTATION.
ENDCLASS.