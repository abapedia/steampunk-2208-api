INTERFACE if_xco_dp_action
  PUBLIC.

  INTERFACES if_xco_news.
  DATA succeeded TYPE REF TO cl_xco_boolean READ-ONLY.
  DATA messages TYPE sxco_t_messages READ-ONLY.
  METHODS execute.
  METHODS decorate_with
    IMPORTING
      !io_decorator TYPE REF TO if_xco_dp_action_decorator
    RETURNING
      VALUE(ro_decorated_action) TYPE REF TO if_xco_dp_action.
  METHODS add_addition
    IMPORTING
      !io_addition TYPE REF TO if_xco_dp_addition
    RETURNING
      VALUE(ro_action) TYPE REF TO if_xco_dp_action.
  METHODS get_result
    RETURNING
      VALUE(ro_result) TYPE REF TO if_xco_dp_action_result.
ENDINTERFACE.