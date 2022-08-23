INTERFACE if_swf_flex_ifs_condition_def
  PUBLIC.

  INTERFACES if_badi_interface.

  TYPES ty_xstype TYPE string.
  TYPES ty_condtype TYPE string.
  TYPES ty_condition_id TYPE string.
  TYPES ty_parameter_name TYPE string.
  TYPES:
    BEGIN OF ts_valuehelp,
      service_path   TYPE string,
      entity         TYPE string,
      property       TYPE string,
      annotation_uri TYPE string,
    END OF ts_valuehelp.
  TYPES:
    BEGIN OF ts_parameter,
      id        TYPE ty_condition_id,
      name      TYPE ty_parameter_name,
      xsd_type  TYPE ty_xstype,
      ddic_type TYPE c LENGTH 30,
      mandatory TYPE abap_bool.
      INCLUDE TYPE ts_valuehelp.
  TYPES: END OF ts_parameter.
  TYPES:
    tt_parameter TYPE STANDARD TABLE OF ts_parameter
      WITH UNIQUE SORTED KEY k1 COMPONENTS id name.

  TYPES:
    BEGIN OF ts_condition,
      id      TYPE ty_condition_id,
      subject TYPE string,
      type    TYPE ty_condtype,
    END OF ts_condition.
  TYPES:
    tt_condition TYPE SORTED TABLE OF ts_condition WITH UNIQUE KEY id.

  CONSTANTS:
    BEGIN OF cs_xstype,
      boolean TYPE ty_xstype VALUE 'xs:boolean',
      date    TYPE ty_xstype VALUE 'xs:date',
      integer TYPE ty_xstype VALUE 'xs:integer',
      string  TYPE ty_xstype VALUE 'xs:string',
      time    TYPE ty_xstype VALUE 'xs:time',
    END OF cs_xstype.
  CONSTANTS:
    BEGIN OF cs_condtype,
      step       TYPE ty_condtype VALUE 'StepCondition',
      start_step TYPE ty_condtype VALUE 'StartAndStepCondition',
    END OF cs_condtype.
  METHODS get_conditions
    CHANGING
      !ct_condition TYPE tt_condition
      !ct_parameter TYPE tt_parameter
    RAISING
      cx_ble_runtime_error.
ENDINTERFACE.