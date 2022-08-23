INTERFACE if_xco_dcl_cb_inh_replacing PUBLIC.
  DATA:
    parameters                  TYPE REF TO if_xco_dcl_cb_inh_r_parametrs READ-ONLY,
    if_all_conditions_void_then TYPE REF TO if_xco_dcl_cb_inh_r_v_conds READ-ONLY.

  METHODS:
    add_pfcg_filter
      RETURNING
        VALUE(ro_pfcg_filter) TYPE REF TO if_xco_dcl_cb_inh_r_pfcg_flr,
    add_root
      RETURNING
        VALUE(ro_root) TYPE REF TO if_xco_dcl_cb_inh_r_root,
    add_element
      IMPORTING
        io_source_field   TYPE REF TO if_xco_dcl_expression
      RETURNING
        VALUE(ro_element) TYPE REF TO if_xco_dcl_cb_inh_r_element,
    add_prefix
      RETURNING
        VALUE(ro_prefix) TYPE REF TO if_xco_dcl_cb_inh_r_prefix,
    add_conditions_on_any_of
      IMPORTING
        it_fields                      TYPE sxco_t_dcl_expressions
      RETURNING
        VALUE(ro_conditions_on_any_of) TYPE REF TO if_xco_dcl_cb_inh_r_conds.
ENDINTERFACE.