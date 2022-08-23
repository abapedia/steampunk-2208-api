INTERFACE if_xco_gen_ddls_s_fo_j_left_o PUBLIC.
  METHODS:
    set_condition
      IMPORTING
        io_condition TYPE REF TO if_xco_gen_ddls_ddl_expression
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_j_left_o,

    set_cardinality
      IMPORTING
        io_cardinality TYPE REF TO cl_xco_cds_left_outer_join_car
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_ddls_s_fo_j_left_o.
ENDINTERFACE.