INTERFACE if_xco_dcl_cb_inh_r_root PUBLIC.
  METHODS:
    set_with
      IMPORTING
        io_with      TYPE REF TO if_xco_dcl_expression
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_inh_r_root,
    set_including_parameters
      IMPORTING
        iv_including_parameters TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_dcl_cb_inh_r_root.
ENDINTERFACE.