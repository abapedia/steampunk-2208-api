INTERFACE if_xco_gen_ddls_s_fo_join_t PUBLIC.
  METHODS:
    add_inner_join
      IMPORTING
        io_data_source       TYPE REF TO if_xco_ddl_expr_data_source
      RETURNING
        VALUE(ro_inner_join) TYPE REF TO if_xco_gen_ddls_s_fo_j_inner,

    add_left_outer_join
      IMPORTING
        io_data_source            TYPE REF TO if_xco_ddl_expr_data_source
      RETURNING
        VALUE(ro_left_outer_join) TYPE REF TO if_xco_gen_ddls_s_fo_j_left_o,

    add_right_outer_join
      IMPORTING
        io_data_source             TYPE REF TO if_xco_ddl_expr_data_source
      RETURNING
        VALUE(ro_right_outer_join) TYPE REF TO if_xco_gen_ddls_s_fo_j_right_o.
ENDINTERFACE.