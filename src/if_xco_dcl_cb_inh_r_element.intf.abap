INTERFACE if_xco_dcl_cb_inh_r_element PUBLIC.
  METHODS:
    set_with
      IMPORTING
        io_with      TYPE REF TO if_xco_dcl_expression
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_r_element.
ENDINTERFACE.