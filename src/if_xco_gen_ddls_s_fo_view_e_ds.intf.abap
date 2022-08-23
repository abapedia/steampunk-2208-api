INTERFACE if_xco_gen_ddls_s_fo_view_e_ds PUBLIC.
  INTERFACES:
    if_xco_gen_ddls_s_fo_join_t.

  ALIASES:
    add_inner_join FOR if_xco_gen_ddls_s_fo_join_t~add_inner_join,

    add_left_outer_join FOR if_xco_gen_ddls_s_fo_join_t~add_left_outer_join,

    add_right_outer_join FOR if_xco_gen_ddls_s_fo_join_t~add_right_outer_join.

  METHODS:
    set_view_entity
      IMPORTING
        iv_view_entity TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_ddls_s_fo_view_e_ds,

    set_parameters
      IMPORTING
        it_parameters TYPE sxco_t_cds_ds_parameter
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_ddls_s_fo_view_e_ds,

    set_alias
      IMPORTING
        iv_alias     TYPE sxco_ddef_alias_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_view_e_ds.
ENDINTERFACE.