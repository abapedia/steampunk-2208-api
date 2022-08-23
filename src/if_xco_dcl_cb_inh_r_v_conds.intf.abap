INTERFACE if_xco_dcl_cb_inh_r_v_conds PUBLIC.
  METHODS:
    set_true
      IMPORTING
        iv_true      TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_r_v_conds,
    set_false
      IMPORTING
        iv_false     TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_r_v_conds,
    set_void
      IMPORTING
        iv_void      TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_r_v_conds.
ENDINTERFACE.