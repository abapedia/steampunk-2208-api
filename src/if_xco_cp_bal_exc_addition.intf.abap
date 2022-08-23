INTERFACE if_xco_cp_bal_exc_addition PUBLIC.
  METHODS:
    get_message_inputs
      IMPORTING
        is_exception_input        TYPE if_xco_cp_bal_persistence=>ts_exception_input
      RETURNING
        VALUE(rt_messages_inputs) TYPE if_xco_cp_bal_persistence=>tt_message_input.
ENDINTERFACE.