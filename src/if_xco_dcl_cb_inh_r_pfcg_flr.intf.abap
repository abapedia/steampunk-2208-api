INTERFACE if_xco_dcl_cb_inh_r_pfcg_flr PUBLIC.
  TYPES:
    tv_authorization_object TYPE c LENGTH 10,
    tv_authorization_field  TYPE c LENGTH 10.

  METHODS:
    set_object
      IMPORTING
        iv_object    TYPE tv_authorization_object
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_r_pfcg_flr,
    set_field
      IMPORTING
        iv_field     TYPE tv_authorization_field
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_r_pfcg_flr,
    set_value
      IMPORTING
        io_value     TYPE REF TO if_xco_dcl_literal
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_r_pfcg_flr,
    set_with
      IMPORTING
        io_with      TYPE REF TO if_xco_dcl_literal
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_r_pfcg_flr.
ENDINTERFACE.