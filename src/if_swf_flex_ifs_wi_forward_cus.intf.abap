INTERFACE if_swf_flex_ifs_wi_forward_cus
  PUBLIC.

  INTERFACES if_badi_interface.

  TYPES: BEGIN OF t_sont_key,
    type TYPE c LENGTH 30,
    id_field_1 TYPE c LENGTH 70,
    id_field_2 TYPE c LENGTH 70,
    id_field_3 TYPE c LENGTH 70,
    id_field_4 TYPE c LENGTH 70,
    id_field_5 TYPE c LENGTH 70,
    id_field_6 TYPE c LENGTH 70,
    END OF t_sont_key.
  TYPES:
    tt_agent TYPE STANDARD TABLE OF swf_pbl_agent WITH DEFAULT KEY.
  TYPES t_agent TYPE swf_pbl_agent.
  TYPES t_step_id TYPE c LENGTH 40.
  TYPES t_task TYPE c LENGTH 14.
  TYPES t_user TYPE syuname.
  TYPES t_wi_id TYPE n LENGTH 12.
  TYPES t_wi_status TYPE c LENGTH 12.
  TYPES t_workflow_id TYPE c LENGTH 14.
  METHODS get_agents_for_forwarding
    IMPORTING
      !iv_wi_task TYPE t_task
      !iv_workflow_id TYPE t_workflow_id
      !iv_step_id TYPE t_step_id
      !iv_wi_id TYPE t_wi_id
      !iv_wi_status TYPE t_wi_status
      !iv_current_user TYPE t_user
      !is_sap_object_node_key TYPE t_sont_key
      !it_excluded_agents TYPE tt_agent
    CHANGING
      !ct_possible_agents TYPE tt_agent
      !cv_all_users TYPE swf_all_users
    RAISING
      cx_ble_runtime_error.
ENDINTERFACE.