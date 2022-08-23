INTERFACE if_xco_cp_std_cur_api_cll_stck PUBLIC.
  METHODS:
    full
      RETURNING
        VALUE(ro_full) TYPE REF TO if_xco_cp_call_stack,
    up_to
      IMPORTING
        iv_depth        TYPE i
      RETURNING
        VALUE(ro_up_to) TYPE REF TO if_xco_cp_call_stack.
ENDINTERFACE.