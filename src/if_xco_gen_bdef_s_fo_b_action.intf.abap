INTERFACE if_xco_gen_bdef_s_fo_b_action PUBLIC.
  DATA:
    name      TYPE sxco_bdef_action_name READ-ONLY,
    result    TYPE REF TO if_xco_gen_bdef_s_fo_b_a_rsult READ-ONLY,
    parameter TYPE REF TO if_xco_gen_bdef_s_fo_b_a_param READ-ONLY.

  METHODS:
    set_static
      IMPORTING
        iv_static    TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,

    set_save
      IMPORTING
        iv_save      TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,

    set_draft
      IMPORTING
        iv_draft     TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,

    set_determine
      IMPORTING
        iv_determine TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,

    set_external_name
      IMPORTING
        iv_external_name TYPE string
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_bdef_s_fo_b_action,

    set_features_instance
      IMPORTING
        iv_features_instance TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_bdef_s_fo_b_action,

    set_authorization_none
      IMPORTING
        iv_authorization_none TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)          TYPE REF TO if_xco_gen_bdef_s_fo_b_action,

    set_authorization_update
      IMPORTING
        iv_authorization_update TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_gen_bdef_s_fo_b_action,

    set_extensible
      IMPORTING
        iv_extensible TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_bdef_s_fo_b_action,

    set_use
      IMPORTING
        iv_use       TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action.
ENDINTERFACE.