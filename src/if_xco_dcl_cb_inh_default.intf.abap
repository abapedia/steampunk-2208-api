INTERFACE if_xco_dcl_cb_inh_default PUBLIC.
  METHODS:
    set_true
      IMPORTING
        iv_true      TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_default,

    set_false
      IMPORTING
        iv_false     TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_default.
ENDINTERFACE.