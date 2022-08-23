INTERFACE if_xco_cp_gen_bdef_s_form PUBLIC.
  TYPES:
     tv_short_description TYPE sxco_ar_short_description.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_bdef_s_form,
    set_implementation_type
      IMPORTING
        io_implementation_type TYPE REF TO cl_xco_bdef_implementation_typ
      RETURNING
        VALUE(ro_me)           TYPE REF TO if_xco_cp_gen_bdef_s_form,
    set_with_unmanaged_save
      IMPORTING
        iv_with_unmanaged_save TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)           TYPE REF TO if_xco_cp_gen_bdef_s_form,
    set_with_unmngd_save_and_clnup
      IMPORTING
        iv_with_unmngd_save_and_clnup TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)                  TYPE REF TO if_xco_cp_gen_bdef_s_form,
    set_with_additional_save
      IMPORTING
        iv_with_additional_save TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_cp_gen_bdef_s_form,
    set_with_addtnl_save_and_clnup
      IMPORTING
        iv_with_addtnl_save_and_clnup TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)                  TYPE REF TO if_xco_cp_gen_bdef_s_form,
    set_implementation_class
      IMPORTING
        iv_implementation_class TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_cp_gen_bdef_s_form,
    set_strict
      IMPORTING
        iv_strict    TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_bdef_s_form,
    set_strict_n
      IMPORTING
        iv_n         TYPE i
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_bdef_s_form,
    set_draft_enabled
      IMPORTING
        iv_draft_enabled TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_cp_gen_bdef_s_form,
    set_with_hierarchy
      IMPORTING
        iv_with_hierarchy TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_cp_gen_bdef_s_form,
    set_use_draft
      IMPORTING
        iv_use_draft TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_bdef_s_form,

    add_behavior
      IMPORTING
        iv_cds_entity      TYPE sxco_cds_object_name OPTIONAL
      RETURNING
        VALUE(ro_behavior) TYPE REF TO if_xco_gen_bdef_s_fo_behavior,

    get_behavior
      IMPORTING
        iv_cds_entity      TYPE sxco_cds_object_name OPTIONAL
      RETURNING
        VALUE(ro_behavior) TYPE REF TO if_xco_gen_bdef_s_fo_behavior,

    remove_behavior
      IMPORTING
        iv_cds_entity TYPE sxco_cds_object_name OPTIONAL,
    add_scalar_entity
      IMPORTING
        iv_entity_name          TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_scalar_entity) TYPE REF TO if_xco_gen_bdef_s_fo_sclr_enty,
    get_scalar_entity
      IMPORTING
        iv_entity_name          TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_scalar_entity) TYPE REF TO if_xco_gen_bdef_s_fo_sclr_enty,
    remove_scalar_entity
      IMPORTING
        iv_entity_name TYPE sxco_cds_object_name.
ENDINTERFACE.