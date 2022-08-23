INTERFACE if_xco_ddl_expr_data_source PUBLIC.
  INTERFACES:
    if_xco_ddl_expression.

  METHODS:
    set_alias
      IMPORTING
        iv_alias     TYPE sxco_ddef_alias_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_ddl_expr_data_source,

    set_parameters
      IMPORTING
        it_parameters TYPE sxco_t_cds_ds_parameter
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_ddl_expr_data_source,

    inner_join
      IMPORTING
        io_data_source TYPE REF TO if_xco_ddl_expr_data_source
        io_condition   TYPE REF TO if_xco_ddl_expr_condition
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_ddl_expr_data_source,

    left_outer_join
      IMPORTING
        io_data_source TYPE REF TO if_xco_ddl_expr_data_source
        io_condition   TYPE REF TO if_xco_ddl_expr_condition
        io_cardinality TYPE REF TO cl_xco_cds_left_outer_join_car OPTIONAL
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_ddl_expr_data_source,

    right_outer_join
      IMPORTING
        io_data_source TYPE REF TO if_xco_ddl_expr_data_source
        io_condition   TYPE REF TO if_xco_ddl_expr_condition
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_ddl_expr_data_source.
ENDINTERFACE.