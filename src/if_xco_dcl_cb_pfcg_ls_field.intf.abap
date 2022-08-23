INTERFACE if_xco_dcl_cb_pfcg_ls_field PUBLIC.
  METHODS:
    set_bypass_when_null
      IMPORTING
        iv_bypass_when_null TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)        TYPE REF TO if_xco_dcl_cb_pfcg_ls_field,

    set_bypass_when_initial
      IMPORTING
        iv_bypass_when_initial TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)           TYPE REF TO if_xco_dcl_cb_pfcg_ls_field,

    set_bypass_when_initial_or_nul
      IMPORTING
        iv_bypass_when_initial_or_nul TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)                  TYPE REF TO if_xco_dcl_cb_pfcg_ls_field.
ENDINTERFACE.