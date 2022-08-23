INTERFACE if_xco_dp_action_decorator PUBLIC.
  METHODS:
    decorate_action
      IMPORTING
        io_action                  TYPE REF TO if_xco_dp_action
      RETURNING
        VALUE(ro_decorated_action) TYPE REF TO if_xco_dp_action.
ENDINTERFACE.