INTERFACE if_xco_cp_cs_extr_api_to PUBLIC.
  METHODS:
    position
      IMPORTING
        iv_position          TYPE i
      RETURNING
        VALUE(ro_call_stack) TYPE REF TO if_xco_cp_call_stack,
    first_occurrence_of
      IMPORTING
        io_line_pattern      TYPE REF TO if_xco_cs_line_pattern
      RETURNING
        VALUE(ro_call_stack) TYPE REF TO if_xco_cp_call_stack,
    last_occurrence_of
      IMPORTING
        io_line_pattern      TYPE REF TO if_xco_cs_line_pattern
      RETURNING
        VALUE(ro_call_stack) TYPE REF TO if_xco_cp_call_stack.
ENDINTERFACE.