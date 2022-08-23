INTERFACE if_xco_gen_bdef_s_fo_b_asc_crt PUBLIC.
  METHODS:
    set_internal
      IMPORTING
        iv_internal  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_asc_crt,
    set_augment
      IMPORTING
        iv_augment   TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_asc_crt,
    set_precheck
      IMPORTING
        iv_precheck  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_asc_crt,
    set_features_instance
      IMPORTING
        iv_features_instance TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_bdef_s_fo_b_asc_crt,
    set_features_global
      IMPORTING
        iv_features_global TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_bdef_s_fo_b_asc_crt,
    set_authorization_none
      IMPORTING
        iv_authorization_none TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)          TYPE REF TO if_xco_gen_bdef_s_fo_b_asc_crt,
    set_authorization_update
      IMPORTING
        iv_authorization_update TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_gen_bdef_s_fo_b_asc_crt.
ENDINTERFACE.