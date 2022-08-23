INTERFACE if_xco_cp_bal_exc_addition_fct PUBLIC.
  DATA:
    additional_news TYPE REF TO if_xco_cp_bal_exc_addition READ-ONLY,
    class_name      TYPE REF TO if_xco_cp_bal_exc_addition READ-ONLY,
    source_position TYPE REF TO if_xco_cp_bal_exc_addition READ-ONLY,
    stack_trace     TYPE REF TO if_xco_cp_bal_exc_addition READ-ONLY.
ENDINTERFACE.