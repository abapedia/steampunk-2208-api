INTERFACE if_xco_dcl_cb_inh_r_conds PUBLIC.
  METHODS:
    set_with_true
      IMPORTING
        iv_with_true TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_r_conds,
    set_with_false
      IMPORTING
        iv_with_false TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_dcl_cb_inh_r_conds,
    set_with_void
      IMPORTING
        iv_with_void TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_r_conds.
ENDINTERFACE.