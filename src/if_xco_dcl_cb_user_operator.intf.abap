INTERFACE if_xco_dcl_cb_user_operator PUBLIC.
  METHODS:
    set_equal
      IMPORTING
        iv_equal     TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_user_operator,

    set_not_equal
      IMPORTING
        iv_not_equal TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_user_operator,

    set_soft_equal
      IMPORTING
        iv_soft_equal TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_dcl_cb_user_operator.
ENDINTERFACE.