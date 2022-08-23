INTERFACE if_xco_gen_bdef_s_fo_b_chara PUBLIC.
  DATA:
    etag          TYPE REF TO if_xco_gen_bdef_s_fo_b_etag READ-ONLY,
    lock          TYPE REF TO if_xco_gen_bdef_s_fo_b_lock READ-ONLY,
    authorization TYPE REF TO if_xco_gen_bdef_s_fo_b_auth READ-ONLY.

  METHODS:
    set_alias
      IMPORTING
        iv_alias     TYPE clike
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_chara,
    set_implementation_class
      IMPORTING
        iv_implementation_class TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_gen_bdef_s_fo_b_chara,
    set_late_numbering
      IMPORTING
        iv_late_numbering TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_gen_bdef_s_fo_b_chara,
    set_early_numbering
      IMPORTING
        iv_early_numbering TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_bdef_s_fo_b_chara,
    set_draft_table
      IMPORTING
        iv_draft_table TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_bdef_s_fo_b_chara,
    set_persistent_table
      IMPORTING
        iv_persistent_table TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_me)        TYPE REF TO if_xco_gen_bdef_s_fo_b_chara,
    set_with_unmanaged_save
      IMPORTING
        iv_with_unmanaged_save TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)           TYPE REF TO if_xco_gen_bdef_s_fo_b_chara,
    set_with_unmngd_save_and_clnup
      IMPORTING
        iv_with_unmngd_save_and_clnup TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)                  TYPE REF TO if_xco_gen_bdef_s_fo_b_chara,
    set_with_additional_save
      IMPORTING
        iv_with_additional_save TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_gen_bdef_s_fo_b_chara,
    set_with_addtnl_save_and_clnup
      IMPORTING
        iv_with_addtnl_save_and_clnup TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)                  TYPE REF TO if_xco_gen_bdef_s_fo_b_chara,
    set_extensible
      IMPORTING
        iv_extensible TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_bdef_s_fo_b_chara,
    set_with_control
      IMPORTING
        iv_with_control TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_gen_bdef_s_fo_b_chara.
ENDINTERFACE.