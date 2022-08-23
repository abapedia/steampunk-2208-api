INTERFACE if_swf_flex_ifs_condition_eval
  PUBLIC.

  INTERFACES if_badi_interface.

  TYPES ty_execution_context TYPE string.
  TYPES ty_condition_id TYPE string.
  TYPES ty_parameter_name TYPE string.
  TYPES ty_parameter_value TYPE string.
  TYPES:
    BEGIN OF ts_condition,
      condition_id      TYPE ty_condition_id,
      execution_context TYPE ty_execution_context,
    END OF ts_condition.
  TYPES:
    BEGIN OF ts_parameter_value,
      name  TYPE ty_parameter_name,
      value TYPE ty_parameter_value,
    END OF ts_parameter_value.
  TYPES:
    tt_parameter_value TYPE STANDARD TABLE OF ts_parameter_value WITH DEFAULT KEY.

  CONSTANTS:
    BEGIN OF cs_execution_context,
      start TYPE ty_execution_context VALUE 'start',
      step  TYPE ty_execution_context VALUE 'step',
    END OF cs_execution_context.
  METHODS evaluate_condition
    IMPORTING
      !is_sap_object_node_type TYPE sww_sont_key
      !is_condition TYPE ts_condition
      !it_parameter_value TYPE tt_parameter_value
      !iv_is_draft TYPE abap_bool DEFAULT abap_false
    CHANGING
      !cv_is_true TYPE abap_bool
    RAISING
      cx_ble_runtime_error.
ENDINTERFACE.