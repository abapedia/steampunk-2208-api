INTERFACE if_xco_gen_bdef_s_fo_b_assoctn PUBLIC.
  TYPES:
    tv_abbreviation       TYPE c LENGTH 11,

    tv_assoc_abbreviation TYPE c LENGTH 11.

  DATA:
    name TYPE sxco_cds_association_name READ-ONLY.

  METHODS:
    set_use
      IMPORTING
        iv_use       TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,
    set_abbreviation
      IMPORTING
        iv_abbreviation TYPE tv_abbreviation
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,
    set_without_response
      IMPORTING
        iv_without_response TYPE abap_bool
      RETURNING
        VALUE(ro_me)        TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,
    set_with_hierarchy
      IMPORTING
        iv_with_hierarchy TYPE abap_bool
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,
    set_with_draft
      IMPORTING
        iv_with_draft TYPE abap_bool
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,
    set_with_dependent_draft
      IMPORTING
        iv_with_dependent_draft TYPE abap_bool
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,
    add_create
      RETURNING
        VALUE(ro_create) TYPE REF TO if_xco_gen_bdef_s_fo_b_asc_crt,
    get_create
      RETURNING
        VALUE(ro_create) TYPE REF TO if_xco_gen_bdef_s_fo_b_asc_crt,
    remove_create,
    set_abbreviation_name
      IMPORTING
        iv_abbreviation_name TYPE tv_assoc_abbreviation
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,
    set_create_enabled
      IMPORTING
        iv_create_enabled TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,
    set_draft_enabled
      IMPORTING
        iv_draft_enabled TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn.
ENDINTERFACE.