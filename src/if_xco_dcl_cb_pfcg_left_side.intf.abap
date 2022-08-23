INTERFACE if_xco_dcl_cb_pfcg_left_side PUBLIC.
  METHODS:
    add_field
      IMPORTING
        io_field        TYPE REF TO if_xco_dcl_expression
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_dcl_cb_pfcg_ls_field,

    add_field_list
      IMPORTING
        it_field_list TYPE sxco_t_dcl_expressions.
ENDINTERFACE.