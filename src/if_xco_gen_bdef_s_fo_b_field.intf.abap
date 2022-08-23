INTERFACE if_xco_gen_bdef_s_fo_b_field PUBLIC.
  DATA:
    name TYPE sxco_cds_field_name READ-ONLY.

  METHODS:
    set_mandatory
      IMPORTING
        iv_mandatory TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_field,
    set_mandatory_create
      IMPORTING
        iv_mandatory_create TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)        TYPE REF TO if_xco_gen_bdef_s_fo_b_field,
    set_read_only
      IMPORTING
        iv_read_only TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_field,
    set_numbering_managed
      IMPORTING
        iv_numbering_managed TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_bdef_s_fo_b_field,
    set_readonly_update
      IMPORTING
        iv_readonly_update TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_bdef_s_fo_b_field,
    set_instance_controlled
      IMPORTING
        iv_instance_controlled TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)           TYPE REF TO if_xco_gen_bdef_s_fo_b_field,
    set_features_instance
      IMPORTING
        iv_features_instance TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_bdef_s_fo_b_field,
    set_suppress
      IMPORTING
        iv_suppress  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_field,
    set_modify
      IMPORTING
        iv_modify    TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_field.
ENDINTERFACE.