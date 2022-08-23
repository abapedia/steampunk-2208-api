INTERFACE if_xco_gen_ddls_s_fo_j_right_o PUBLIC.
  METHODS:
    set_condition
      IMPORTING
        io_condition TYPE REF TO if_xco_gen_ddls_ddl_expression
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_j_right_o.
ENDINTERFACE.